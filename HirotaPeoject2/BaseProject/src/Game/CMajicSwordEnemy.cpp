#include "CMajicSwordEnemy.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CPlayer.h"

CMajicSwordEnemy::CMajicSwordEnemy()
{
	mpSword = CResourceManager::Get<CModel>("MajicSwordVan");

	// 攻撃判定用のコライダーを作成
	mpAttackCol = new CColliderLine
	(
		this, ELayer::eAttackCol,
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.5f, 3.0f, -0.9f)
	);
	// 攻撃判定用のコライダーと衝突判定を行う
	// レイヤーとタグを設定
	mpAttackCol->SetCollisionLayers({ ELayer::eDamageCol });
	mpAttackCol->SetCollisionTags({ ETag::ePlayer });

	// 最初は攻撃判定用のコライダーをオフにしておく
	mpAttackCol->SetEnable(false);
}

CMajicSwordEnemy::~CMajicSwordEnemy()
{
	// コライダーを破棄
	SAFE_DELETE(mpAttackCol);
}

// 衝突処理
void CMajicSwordEnemy::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 衝突した自分のコライダーが攻撃判定用コライダーであれば
	if (self == mpAttackCol)
	{
		// キャラのポインタに変換
		CCharaBase* chara = dynamic_cast<CCharaBase*>(other->Owner());
		// 相手のコライダーの持ち主がキャラであれば
		if (chara != nullptr)
		{
			// すでに攻撃済みのキャラでなければ
			if (!IsAttackHitObj(chara))
			{
				//　ダメージを与える
				chara->TakeDamage(2);

				// 攻撃済みリストに追加
				AddAttackHitObj(chara);
			}
		}
	}
}

// 攻撃開始
void CMajicSwordEnemy::AttackStart()
{
	// すでに攻撃中であれば、サイド開始処理は実行しない
	if (mIsAttack) return;

	CWeaponEnemy::AttackStart();
	// 攻撃が始まったら、攻撃判定用のコライダーをオフにする
	mpAttackCol->SetEnable(true);
}

// 攻撃終了
void CMajicSwordEnemy::AttackEnd()
{
	CWeaponEnemy::AttackEnd();
	// 攻撃が終われば、攻撃判定用のコライダーをオフにする
	mpAttackCol->SetEnable(false);
}

// 武器の行列を取得
CMatrix CMajicSwordEnemy::Matrix() const
{
	const CMatrix* attachMtx = GetAttachMtx();
	// 手に持っていないときは、自分自身の行列を返す
	if (attachMtx == nullptr)
	{
		return CTransform::Matrix();
	}
	// 手に持っているときは、アタッチしている行列を返す
	else
	{
		CMatrix sm;
		sm.Scale(75.0f, 75.0f, 75.0f);

		CMatrix translate;
		translate.Translate(0.0f, 0.0f, -0.5f);

		// 90度回転を表す行列を作成
		CMatrix rotateY;
		CMatrix rotateZ;
		CMatrix rotateX;

		rotateY.RotateY(45.0f);		// Y軸
		rotateX.RotateX(0.0f);		// X軸
		rotateZ.RotateZ(-60.0f);		// Z軸

		return sm * rotateY * rotateX * rotateZ * translate * (*attachMtx);
	}
}

// 更新処理
void CMajicSwordEnemy::Update()
{

}

// 描画処理
void CMajicSwordEnemy::Render()
{
	mpSword->SetColor(mColor);
	mpSword->Render(Matrix());
}