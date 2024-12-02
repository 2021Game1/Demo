#include "COneShotFallCol.h"
#include "CCollisionManager.h"
#include "CStageManager.h"

// コンストラクタ
COneShotFallCol::COneShotFallCol()
	: CObjectBase(ETag::eFall, ETaskPriority::eFall)
{
	// 落下コライダー
	CModel* fallCol = CResourceManager::Get<CModel>("Stage1FallCol");
	mpFallCol = new CColliderMesh(this, ELayer::eFall, fallCol, true);
	mpFallCol->SetCollisionTags({ ETag::ePlayer });
	mpFallCol->SetCollisionLayers({ ELayer::ePlayer });
}

// デストラクタ
COneShotFallCol::~COneShotFallCol()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpFallCol);
}

// 更新処理
void COneShotFallCol::Update()
{

}

// 描画処理
void COneShotFallCol::Render()
{

}