#include "CChoco.h"
#include "CColliderMesh.h"
#include "CCharaBase.h"

// コンストラクタ
CChoco::CChoco()
	:CObjectBase(ETag::eItem, ETaskPriority::eItem, 0, ETaskPauseType::eGame)
	, mpModel(nullptr)
	, mpCollider(nullptr)
{
	// モデルデータの取得
	mpModel = CResourceManager::Get<CModel>("Choco");

	// コライダーを作成
	mpCollider = new CColliderMesh
	(
		this, ELayer::eItem,
		mpModel,true
	);
	
	// プレイヤーと衝突するように設定
	mpCollider->SetCollisionTags({ ETag::ePlayer });
	mpCollider->SetCollisionLayers({ ELayer::ePlayer });

}

// デストラクタ
CChoco::~CChoco()
{
	// コライダーを削除
	SAFE_DELETE(mpCollider);
}

// 衝突処理
void CChoco::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// プレイヤーに衝突した
	if (other->Layer() == ELayer::ePlayer)
	{
		// プレイヤーに当たったら、自身を削除
		Kill();
	}
}

// 更新処理
void CChoco::Update()
{
}

// 描画処理
void CChoco::Render()
{
	mpModel->Render(Matrix());
}
