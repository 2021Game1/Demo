#include "CRotateFloorGimmick.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CModel.h"

// 回転床の回転にかかる時間
#define ROTATE_TIME 0.5f

// コンストラクタ
CRotateFloorGimmick::CRotateFloorGimmick(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eField, ETaskPriority::eRotate, 0, ETaskPauseType::eGame)
	, mState(EState::Idle)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
	, mDefaultRot(rot)
	, mStateStep(0)
	, mRotationAngle(0.0f)
	, mRotateStartAngle(0.0f)
	, mRotateEndAngle(0.0f)
	, mElapsedTime(0.0f)
	, mStartPos(0.0f, 0.0f, 0.0f)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mIsCollision(false)
	, mIsJumping(false)
	, mNextRotateIsRotate2(false)
{
	// 回転する床モデルを取得(コライダーも)
	mpRotateFloor = CResourceManager::Get<CModel>("RotateFloor");
	
	// 回転する床の表側のコライダーを作成
	CModel* frontCol = CResourceManager::Get<CModel>("RotateFloorFrontCol");
	mpFrontFloorCol = new CColliderMesh(this, ELayer::eField, frontCol, true);
	mpFrontFloorCol->SetCollisionLayers({ ELayer::ePlayer });
	mpFrontFloorCol->SetCollisionTags({ ETag::ePlayer });

	// 回転する床の裏側を作成
	CModel* backCol = CResourceManager::Get<CModel>("RotateFloorBackCol");
	mpBackFloorCol = new CColliderMesh(this, ELayer::eField, backCol, true);
	mpBackFloorCol->SetCollisionLayers({ ELayer::ePlayer });
	mpBackFloorCol->SetCollisionTags({ ETag::ePlayer });
	ChangeState(EState::Idle);

	// 最初は表側をオン、裏側はオフ
	mpFrontFloorCol->SetEnable(true);
	mpBackFloorCol->SetEnable(false);

	Position(pos);
	Scale(scale);
	Rotation(mDefaultRot);

	// 初期位置を設定
	mStartPos = Position();
	
	SetColor(CColor(0.9f, 1.0f, 1.0f, 1.0f));
}

// デストラクタ
CRotateFloorGimmick::~CRotateFloorGimmick()
{
	SAFE_DELETE(mpFrontFloorCol);
	SAFE_DELETE(mpBackFloorCol);
}

// 衝突処理
void CRotateFloorGimmick::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;
}

// 状態を切り替える
void CRotateFloorGimmick::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// 回転状態を切り替える
void CRotateFloorGimmick::ChangeRotationState() {
	mNextRotateIsRotate2 = !mNextRotateIsRotate2;
}

// 待機状態の処理
void CRotateFloorGimmick::UpdateIdle()
{
	CPlayer* player = CPlayer::Instance();
	bool isPlayerJumping = player->IsJumping();
	if (!isPlayerJumping)
	{
		mIsJumping = false;
	}

	if (isPlayerJumping && /*IsFoundPlayer() &&*/ !mIsJumping) {
		// プレイヤーがジャンプしているかどうかを使用して判別処理を行う
		mIsJumping = true;
		ChangeRotationState(); // 回転状態を切り替え
		 // 現在の回転状態に応じて適切な状態を設定
		if (mNextRotateIsRotate2) {
			mRotateStartAngle = 0.0f;
			mRotateEndAngle = 180.0f;
		}
		else {
			mRotateStartAngle = 180.0f;
			mRotateEndAngle = 0.0f;
		}
		mElapsedTime = 0.0f;
		ChangeState(EState::Rotate);
	}
}

// 回転状態の更新処理
void CRotateFloorGimmick::UpdateRotate()
{
	// 回転にかかる時間を経過していない
	if (mElapsedTime < ROTATE_TIME)
	{
		// 回転開始時の角度から徐々に回転終了時の角度へ回転する
		float per = mElapsedTime / ROTATE_TIME;
		float angleZ = Math::Lerp
		(	mRotateStartAngle,
			mRotateEndAngle,
			per
		);
		Rotation(mDefaultRot * CQuaternion(CVector(0.0f, 0.0f, angleZ)));
		mElapsedTime += Time::DeltaTime();

		// 回転する床の角度が90度以下であれば、
		if (fabsf(angleZ) <= 90.0f)
		{
			// 床のコライダーの表側をオンにして、裏側をオフにする
			mpFrontFloorCol->SetEnable(true);
			mpBackFloorCol->SetEnable(false);
		}
		// 回転する床の角度が90度を越えれば、
		else
		{
			// 床のコライダーの裏側をオンにして、表側をオフにする
			mpFrontFloorCol->SetEnable(false);
			mpBackFloorCol->SetEnable(true);
		}
	}
	// 回転にかかる時間を経過した
	else
	{
		mElapsedTime = 0.0f;
		Rotation(mDefaultRot * CQuaternion(CVector(0.0f, 0.0f, mRotateEndAngle)));
		ChangeState(EState::Idle);

		CPlayer* player = CPlayer::Instance();
		bool isPlayerJumping = player->IsJumping();
		if (!isPlayerJumping)
		{
			mIsJumping = false;
		}
	}
}

// 更新
void CRotateFloorGimmick::Update()
{
	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::Idle:
		UpdateIdle();
		break;
	case EState::Rotate:
		UpdateRotate();
		break;
	}

	// 衝突フラグを初期化
	mIsCollision = false;
}

// 描画
void CRotateFloorGimmick::Render()
{
	mpRotateFloor->SetColor(mColor);
	mpRotateFloor->Render(Matrix());
}

//プレイヤーを見つけたか
bool CRotateFloorGimmick::IsFoundPlayer() const
{
	CVector playerPos = CPlayer::Instance()->Position();
	CVector object = Position();

	// プレイヤーとの距離を計算する
	float distance = (playerPos - object).Length();
	const float detectionRadius = 100.0f;

	// プレイヤーとの距離が検出半径以内であれば、プレイヤーを認識する
	if (distance <= detectionRadius)
	{
		return true;
	}

	return false;
}