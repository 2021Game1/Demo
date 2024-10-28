#include "CAlwaysVerticalNeedle.h"
#include "CCharaBase.h"

// 攻撃待機時間
#define ATTACKWAIT_TIME 3.0f
// 待機時間
#define WAIT_TIME 5.0f
// 戻り状態
#define RETURN_TIME 5.0f
// 攻撃後の再起時間
#define WAIT_ATTACK_TIME 5.0f

// コンストラクタ
CAlwaysVerticalNeedle::CAlwaysVerticalNeedle(const CVector& pos, const CVector& scale, const CVector& rot)
	: CObjectBase(ETag::eNeedleObject, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mWaitAttackTime(0.0f)
	, mIsAttack(false)
	, mIsCollision(false)
{
	// 常時出ている針モデル
	mpNeedleBase = CResourceManager::Get<CModel>("AlwaysNeedle");

	// 常時出ている針モデルのコライダー
	CModel* baseCol = CResourceManager::Get<CModel>("AlwaysNeedleBaseCol");
	mpNeedleBaseCol = new CColliderMesh(this, ELayer::eFieldWall, baseCol, true);
	// 衝突定用のコライダーと衝突判定を行う
	mpNeedleBaseCol->SetCollisionTags({ ETag::ePlayer});
	mpNeedleBaseCol->SetCollisionLayers({ ELayer::ePlayer});

	// 常時出ている針モデルの針コライダー
	CModel* needleCol = CResourceManager::Get<CModel>("AlwaysNeedleCol");
	mpNeedleCol = new CColliderMesh(this, ELayer::eNeedleCol, needleCol, true);
	// 常時出ている針モデルの針コライダー
	mpNeedleCol->SetCollisionTags({ ETag::ePlayer });
	mpNeedleCol->SetCollisionLayers({ ELayer::eDamageCol });

	Position(pos);
	Scale(scale);
	Rotation(rot);
}

// デストラクタ
CAlwaysVerticalNeedle::~CAlwaysVerticalNeedle()
{
	SAFE_DELETE(mpNeedleBaseCol);
	SAFE_DELETE(mpNeedleCol)
}

// 衝突処理
void CAlwaysVerticalNeedle::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 衝突した自分のコライダーが針コライダーであれば
	if (self == mpNeedleCol)
	{
		// キャラのポインタに変換
		CCharaBase* chara = dynamic_cast<CCharaBase*>(other->Owner());
		// 相手のコライダーの持ち主がキャラであれば
		if (chara != nullptr)
		{
			if (!mIsAttack)
			{
				// ダメージを与える
				chara->TakeDamage(1);
				mIsAttack = true;
				//// すでに攻撃済みのキャラでなければ
				//if (!IsAttackHitObj(chara))
				//{
				//	// ダメージを与える
				//	chara->TakeDamage(1);

				//	// 攻撃済みリストに追加
				//	AddAttackHitObj(chara);

				//	mIsAttack = true;
				//}
			}
			mIsCollision = true;
		}
	}
}

// 更新処理
void CAlwaysVerticalNeedle::Update()
{
	if (mIsAttack)
	{
		mpNeedleCol->SetEnable(false);
		mWaitAttackTime += Time::DeltaTime();
		if (mWaitAttackTime >= WAIT_ATTACK_TIME)
		{
			// プレイヤーに当たった時間をリセット
			mWaitAttackTime = 0.0f;
			mIsAttack = false;
			mAttackHitObjects.clear();
			mpNeedleCol->SetEnable(true);
		}
	}
	mIsCollision = false;
}

// 描画処理
void CAlwaysVerticalNeedle::Render()
{
	mpNeedleBase->SetColor(mColor);
	mpNeedleBase->Render(Matrix());
}