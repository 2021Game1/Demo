#include "CSeesawStageFallCol.h"
#include "CCollisionManager.h"
#include "CCamera.h"

CSeesawStageFallCol::CSeesawStageFallCol()
	: CObjectBase(ETag::eFall, ETaskPriority::eFall)
{
	// 落下判定用のコライダー
	CModel* fallCol = CResourceManager::Get<CModel>("SeesawStage(Fall)");
	mpFallCol = new CColliderMesh(this, ELayer::eFall, fallCol, true);
	mpFallCol->SetCollisionTags({ ETag::ePlayer });
	mpFallCol->SetCollisionLayers({ ELayer::ePlayer });
}

CSeesawStageFallCol::~CSeesawStageFallCol()
{
	SAFE_DELETE(mpFallCol);
}

void CSeesawStageFallCol::Update()
{

}

void CSeesawStageFallCol::Render()
{

}