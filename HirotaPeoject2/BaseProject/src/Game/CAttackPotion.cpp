#include "CAttackPotion.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CPlayer.h"
#include "Maths.h"
#include "CSound.h"

// 重力
#define GRAVITY 0.0625f
// 攻撃ポーションのスピード
#define ATTACKPOTION_SPEED 45.0f

CAttackPotion::CAttackPotion()
	: mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mMoveVector(0.0f, 0.0f, 0.0f)
	, mStartPos(0.0f, 0.0f, 0.0f)
	, mElapsedTime(0.0f)
	, mIsGround(false)
	, mAttackUsed(false)
	, mIsHeld(false)
{
	// 攻撃力アップモデル取得
	mpAttackPotion = CResourceManager::Get<CModel>("AttackPotion");

	// 攻撃力アップコライダー作成
	mpAttackCol = new CColliderSphere
	(
		this, ELayer::eAttackCol,
		1.5f
	);
	// 衝突定用のコライダーと衝突判定を行う
	// タグ付け
	// レイヤー付け
	// コライダーの位置を調整
	mpAttackCol->SetCollisionTags({ ETag::ePlayer, ETag::eRideableObject, ETag::eField, });
	mpAttackCol->SetCollisionLayers({ ELayer::ePlayer, ELayer::eBlockCol, ELayer::eField,ELayer::eFieldWall });
	mpAttackCol->Position(0.0f, 1.0f, 0.0f);

	// 攻撃力アップコライダー作成(地面と壁)
	mpFieldCol = new CColliderSphere
	(
		this, ELayer::eAttackCol,
		1.5f
	);
	mpFieldCol->SetCollisionTags({ ETag::eRideableObject, ETag::eField, });
	mpFieldCol->SetCollisionLayers({ ELayer::eField,ELayer::eFieldWall });
	mpFieldCol->Position(0.0f, 1.0f, 0.0f);

	// 最初はコライダーをオンにしておく
	mpAttackCol->SetEnable(true);
	mpFieldCol->SetEnable(true);

}

CAttackPotion::~CAttackPotion()
{
	SAFE_DELETE(mpAttackCol);
	SAFE_DELETE(mpFieldCol);
}

// 衝突処理
void CAttackPotion::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 衝突した自分のコライダーが攻撃判定用のコライダーであれば
	if (self == mpAttackCol)
	{
		CPlayer* player = dynamic_cast<CPlayer*>(other->Owner());
		if (player)
		{
			// すでに攻撃力が上昇していなければ
			if (!IsAttachHitAttackObj(player) && !mAttackUsed)
			{
				mAttackUsed = true;
				mpAttackCol->SetEnable(false);
				AddAttachHitAttackObj(player);
				UpdateGet();
			}
		}
	}

	if (self == mpFieldCol)
	{
		if (other->Layer() == ELayer::eField)
		{
			mIsGround = true;
			mMoveSpeed.Y(0.0f);
			Position(Position() + hit.adjust);
		}
		else if (other->Layer() == ELayer::eFieldWall)
		{
			Position(Position() + hit.adjust);
		}
	}
}

// アイテムを取った後の処理
// 右に移動したのち消す
void CAttackPotion::UpdateGet()
{
	mMoveVector = CVector::zero;
	mMoveSpeed = CVector::zero;
	// 速度を設定
	float moveSpeed = ATTACKPOTION_SPEED;

	CVector moveDirection(CVector::right);

	// mTargetDir に速度を掛けて移動ベクトルを得る
	mMoveVector = moveDirection * moveSpeed;

	// 移動量を計算
	mMoveVector *= Time::DeltaTime();

	// ここでkillを呼ぶ予定
}

// 更新処理
void CAttackPotion::Update()
{
	// 重力
	mMoveSpeed -= CVector(0.0f, GRAVITY, 0.0f);
	// 回転
	float rot = 1.0f;
	Rotate(0.0f, rot, 0.0f);

	// タイム加算
	mElapsedTime += Time::DeltaTime();
	if (mElapsedTime >= 50.0f)
	{
		Kill();
	}

	// 移動
	Position(Position() + mMoveVector + mMoveSpeed * 60.0f * Time::DeltaTime());

	mIsGround = false;
}

// 描画
void CAttackPotion::Render()
{
	mpAttackPotion->SetColor(mColor);
	mpAttackPotion->Render(Matrix());
}