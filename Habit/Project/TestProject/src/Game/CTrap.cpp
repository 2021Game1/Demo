#include "CTrap.h"
#include "CColliderMesh.h"
#include "CCharaBase.h"

CTrap::CTrap()
	: CObjectBase(ETag::eEnemy, ETaskPriority::eWeapon, 0, ETaskPauseType::eGame)
	, mpModel(nullptr)
	, mpCollider(nullptr)
{
	// モデルデータの取得
	mpModel = CResourceManager::Get<CModel>("Choco");

	// コライダーを作成
	CColliderMesh* mpCollider = new CColliderMesh
	(
		this, ELayer::eAttackCol,
		mpModel, true
	);
	// プレイヤーと衝突するように設定
	//mpCollider->SetCollisionTags({ ETag::ePlayer });
	//mpCollider->SetCollisionLayers({ ELayer::ePlayer });

}

// デストラクタ
CTrap::~CTrap()
{
	// コライダーを削除
	SAFE_DELETE(mpCollider);
}

void CTrap::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// プレイヤーに衝突した
	if (other->Layer() == ELayer::ePlayer)
	{
		// プレイヤーにダメージを与える
		CCharaBase* chara = dynamic_cast<CCharaBase*>(other->Owner());
		if (chara != nullptr)
		{
			chara->TakeDamage(10, this);
			// プレイヤーに当たったら、自身を削除
			Kill();
		}
	}
}

void CTrap::Update()
{
}

// 描画
void CTrap::Render()
{
	if(mpModel)
		mpModel->Render(Matrix());
}
