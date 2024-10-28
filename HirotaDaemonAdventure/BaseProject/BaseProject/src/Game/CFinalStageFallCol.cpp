#include "CFinalStageFallCol.h"
#include "CCollisionManager.h"
#include "CStageManager.h"

// コンストラクタ
CFinalStageFallCol::CFinalStageFallCol()
	: CObjectBase(ETag::eFall, ETaskPriority::eFall)
{
	// 落下コライダー
	CModel* fallCol = CResourceManager::Get<CModel>("Stage3FallCol");
	mpFallCol = new CColliderMesh(this, ELayer::eFall, fallCol, true);
	mpFallCol->SetCollisionTags({ ETag::ePlayer });
	mpFallCol->SetCollisionLayers({ ELayer::ePlayer });
}

// デストラクタ
CFinalStageFallCol::~CFinalStageFallCol()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpFallCol);
}

// 更新処理
void CFinalStageFallCol::Update()
{

}

// 描画処理
void CFinalStageFallCol::Render()
{

}