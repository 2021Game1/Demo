#include "CPicoSword.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CPicoChan.h"
#include "CEnemy.h"

CPicoSword::CPicoSword()
	: mpPicoChan(nullptr)
{
	mpSword = CResourceManager::Get<CModel>("MajicSwordPico");

	// 攻撃判定用のコライダーを作成
	mpAttackCol = new CColliderLine
	(
		this, ELayer::eAttackCol,
		CVector(0.0f, 0.0f, -0.2f),
		CVector(0.0f, 1.7f, -0.4f)
	);
	// 攻撃判定用のコライダーと衝突判定を行う
	// レイヤーとタグを設定
	mpAttackCol->SetCollisionLayers({ ELayer::eDamageCol });
	mpAttackCol->SetCollisionTags({ ETag::ePlayer });

	// 最初は攻撃判定用のコライダーをオフにしておく
	mpAttackCol->SetEnable(false);
}

CPicoSword::~CPicoSword()
{
	// コライダーを破棄
	SAFE_DELETE(mpAttackCol);
}

// 衝突処理
void CPicoSword::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
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
void CPicoSword::AttackStart()
{
	// すでに攻撃中であれば、サイド開始処理は実行しない
	if (mIsAttack) return;

	CWeaponEnemy::AttackStart();
	// 攻撃が始まったら、攻撃判定用のコライダーをオフにする
	mpAttackCol->SetEnable(true);
}

// 攻撃終了
void CPicoSword::AttackEnd()
{
	CWeaponEnemy::AttackEnd();
	// 攻撃が終われば、攻撃判定用のコライダーをオフにする
	mpAttackCol->SetEnable(false);
}

void CPicoSword::SetPicoChanInstance(CPicoChan* pPicoChan)
{
	mpPicoChan = pPicoChan;
}

// 武器の行列を取得
CMatrix CPicoSword::Matrix() const
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
		sm.Scale(47.0f, 47.0f, 47.0f);

		if (mpPicoChan && mpPicoChan->IsAttack())
		{
			CMatrix translate;
			// X軸(横方向)
			// Y軸(縦方向)
			// Z軸(前方向)
			translate.Translate(4.0f, 0.0f, -44.0f);

			// 90度回転を表す行列を作成
			CMatrix rotateY;
			CMatrix rotateZ;
			CMatrix rotateX;

			rotateY.RotateY(90.0f);		// Y軸
			rotateX.RotateX(-92.0f);		// X軸
			rotateZ.RotateZ(0.0f);		// Z軸

			return sm * rotateY * rotateX * rotateZ * translate * (*attachMtx);
		}
		else
		{
			CMatrix translate;
			translate.Translate(0.0f, -8.0f, 17.0f);

			// 90度回転を表す行列を作成
			CMatrix rotateY;
			CMatrix rotateZ;
			CMatrix rotateX;

			rotateY.RotateY(0.0f);		// Y軸
			rotateX.RotateX(0.0f);		// X軸(前後)
			rotateZ.RotateZ(-30.0f);		// Z軸(左右)

			return sm * rotateY * rotateX * rotateZ * translate * (*attachMtx);
		}
	}
}

// 更新処理
void CPicoSword::Update()
{

}

// 描画処理
void CPicoSword::Render()
{
	mpSword->SetColor(mColor);
	mpSword->Render(Matrix());
}