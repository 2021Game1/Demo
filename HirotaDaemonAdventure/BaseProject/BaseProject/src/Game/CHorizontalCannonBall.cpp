#include "CHorizontalCannonBall.h"
#include "CStageManager.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CInput.h"

// 重力
#define GRAVITY 0.0625f
// 落下時間
#define FALLTIME 2.0f
// 落下スピード
#define FALLSPEED 1.0f

// コンストラクタ
CHorizontalCannonBall::CHorizontalCannonBall(const CVector& pos, const CVector& dir,
	float speed, float distance)
	: CObjectBase(ETag::eBullet, ETaskPriority::eDefault, 0, ETaskPauseType::eGame)
	, mState(EState::eIdle)
	, mStateStep(0)
	, mJumpedElapsedTime(0.0f)
	, mIsFall(false)
	, mIsCollisionPlayer(false)
	, mMoveSpeed(speed)
	, mFlyingDistance(distance)
	, mCurrentFlyingDistance(0.0f)
	, mVerticalSpeed(0.0f)
	, mFallTime(0.0f)
	, mBounceTime(0.0f)
{
	Position(pos);
	Scale(1.2f, 1.2f, 1.2f);
	Rotation(CQuaternion::LookRotation(dir, CVector::up));

	// 大砲の弾モデル
	mpCannonBall = CResourceManager::Get<CModel>("CannonBall");

	// 大砲の弾の上コライダー
	CModel* CannonCol = CResourceManager::Get<CModel>("CannonUpCol");
	mpCannonCol = new CColliderMesh(this, ELayer::eField, CannonCol, true);

	// 大砲の弾のコライダー
	mpSpherer = new CColliderSphere
	(
		this, ELayer::eBulletCol,
		1.7f
	);
	mpSpherer->Position(0.0f, -0.5f, 0.0f);
	mpSpherer->SetCollisionLayers({ ELayer::eDamageCol });
	mpSpherer->SetCollisionTags({ ETag::ePlayer });
}

// デストラクタ
CHorizontalCannonBall::~CHorizontalCannonBall()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpSpherer);
	SAFE_DELETE(mpCannonCol);
}

// 衝突処理
void CHorizontalCannonBall::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	// 反転した押し戻しベクトルと上方向のベクトルの内積(角度)を求める
	float dot = CVector::Dot(-hit.adjust.Normalized(), CVector::up);
	// 上に乗ったと判断するためのcos関数に渡した角度を求める
	float cosAngle = cosf(Math::DegreeToRadian(10.0f));
	// 求めた角度が指定した角度の範囲内であれば、
	if (dot >= cosAngle)
	{
		if (mJumpedElapsedTime <= 0.2f)
		{
			CPlayer* player = dynamic_cast<CPlayer*>(owner);
			if (player)
			{
				mIsFall = true;
				mpCannonCol->SetEnable(false);
				mpSpherer->SetEnable(false);
				player->UpdateHighJumpingStart();
				ChangeState(EState::eFall);
			}
		}
		else
		{
			CPlayer* player = dynamic_cast<CPlayer*>(owner);
			if (player)
			{
				mIsFall = true;
				mpCannonCol->SetEnable(false);
				mpSpherer->SetEnable(false);
				player->UpdateJumpingStart();
				ChangeState(EState::eFall);
			}
		}
		mIsCollisionPlayer = true;
	}
}

// 状態を切り替える
void CHorizontalCannonBall::ChangeState(EState state)
{
	if (mState == state) return;
	mState = state;
	mStateStep = 0;
}

// 通常状態
void CHorizontalCannonBall::UpdateIdle()
{
	if (IsKill()) return;

	// バウンス効果のパラメータ
	const float bounceSpeed = 10.0f;         // 跳ね返りの速さ
	const float bounceHeight = 0.5f;        // 最大バウンスの高さ

	// 残り飛距離が0ならば、弾丸削除
	float remain = mFlyingDistance - mCurrentFlyingDistance;
	if (remain <= 0.0f)
	{
		Kill();
		return;
	}

	// 移動速度を計算
	// 移動速度が残りの飛距離より大きい場合は、
	// 残りの飛距離を移動速度とする
	float moveSpeed = mMoveSpeed * Time::DeltaTime();
	if (abs(moveSpeed) > remain)
	{
		moveSpeed = remain * (moveSpeed < 0.0f ? -1.0f : 1.0f);
	}

	// 増分時間
	mBounceTime += Time::DeltaTime() * bounceSpeed;

	if (!mIsFall)
	{

		// 新しいY位置を計算
		float bounceOffset = sinf(mBounceTime) * bounceHeight;

		// 弾丸の位置を更新
		Position(Position() + VectorZ() * moveSpeed + CVector(0.0f, bounceOffset, 0.0f));

		// 現在の飛距離を更新
		mCurrentFlyingDistance += abs(moveSpeed);

		CDebugPrint::Print("bounceOffset:%f\n", bounceOffset);
	}
	CDebugPrint::Print("bounceTime:%f\n", mBounceTime);
	CDebugPrint::Print("bounceSpeed:%f\n", bounceSpeed);
	CDebugPrint::Print("bounceHeight:%f\n", bounceHeight);
}

// 落下状態
void CHorizontalCannonBall::UpdateFall()
{
	if (IsKill()) return;

	// 弾丸の位置を更新
	Position(Position() + CVector(0.0f, -FALLSPEED, 0.0f));

	if (mFallTime <= FALLTIME)
	{
		mFallTime += Time::DeltaTime();
	}
	else
	{
		Kill();
		return;
	}
}

// 更新処理
void CHorizontalCannonBall::Update()
{
	if (CInput::PushKey(VK_SPACE))
	{
		mJumpedElapsedTime = 0.0f;
	}
	else
	{
		mJumpedElapsedTime += Time::DeltaTime();
	}

	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// 現れている状態
	case EState::eFall:
		UpdateFall();
		break;

	}
	// 衝突フラグを初期化
	mIsCollisionPlayer = false;
}

// 描画処理
void CHorizontalCannonBall::Render()
{
	mpCannonBall->SetColor(mColor);
	mpCannonBall->Render(Matrix());
}