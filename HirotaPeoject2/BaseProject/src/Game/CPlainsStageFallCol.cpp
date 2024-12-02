#include "CPlainsStageFallCol.h"
#include "CCollisionManager.h"
#include "CCamera.h"

CPlainsStageFallCol::CPlainsStageFallCol()
	: CObjectBase(ETag::eFall,ETaskPriority::eFall)
{
	// 落下判定用のコライダー
	CModel* fallCol = CResourceManager::Get<CModel>("FallCol");
	mpFallCol = new CColliderMesh(this, ELayer::eFall, fallCol, true);
	mpFallCol->SetCollisionTags({ ETag::ePlayer });
	mpFallCol->SetCollisionLayers({ ELayer::ePlayer });
}

CPlainsStageFallCol::~CPlainsStageFallCol()
{
	SAFE_DELETE(mpFallCol);
}

void CPlainsStageFallCol::Update()
{

}

void CPlainsStageFallCol::Render()
{

}