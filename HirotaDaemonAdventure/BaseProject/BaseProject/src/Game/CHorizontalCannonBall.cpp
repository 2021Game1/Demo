#include "CHorizontalCannonBall.h"

// 重力
#define GRAVITY 0.0625f

// コンストラクタ
CHorizontalCannonBall::CHorizontalCannonBall(const CVector& pos, const CVector& dir,
	float speed, float distance)
	: CObjectBase(ETag::eBullet, ETaskPriority::eDefault, 0, ETaskPauseType::eGame)
	, mMoveSpeed(speed)
	, mFlyingDistance(distance)
	, mCurrentFlyingDistance(0.0f)
	, mVerticalSpeed(0.0f)
{
	Position(pos);
	Scale(1.2f, 1.2f, 1.2f);
	Rotation(CQuaternion::LookRotation(dir, CVector::up));

	// 大砲の弾モデル
	mpCannonBall = CResourceManager::Get<CModel>("CannonBall");

	// 大砲の弾のコライダー
	mpSpherer = new CColliderSphere
	(
		this, ELayer::eBulletCol,
		1.7f
	);
	mpSpherer->SetCollisionLayers({ ELayer::eDamageCol });
	mpSpherer->SetCollisionTags({ ETag::ePlayer });
}

// デストラクタ
CHorizontalCannonBall::~CHorizontalCannonBall()
{
	SAFE_DELETE(mpSpherer);
}

// 更新処理
void CHorizontalCannonBall::Update()
{
	if (IsKill()) return;

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

	// バウンス効果のパラメータ
	static float bounceTime = 0.0f;         // バウンス効果の時間
	const float bounceSpeed = 17.0f;         // 跳ね返りの速さ
	const float bounceHeight = 0.5f;        // 最大バウンスの高さ

	// 増分時間
	bounceTime += Time::DeltaTime() * bounceSpeed;

	// 新しいY位置を計算
	float bounceOffset = sinf(bounceTime) * bounceHeight;

	// 弾丸の位置を更新
	Position(Position() + VectorZ() * moveSpeed + CVector(0.0f, bounceOffset, 0.0f));

	// 現在の飛距離を更新
	mCurrentFlyingDistance += abs(moveSpeed);
}

// 描画処理
void CHorizontalCannonBall::Render()
{
	mpCannonBall->SetColor(mColor);
	mpCannonBall->Render(Matrix());
}