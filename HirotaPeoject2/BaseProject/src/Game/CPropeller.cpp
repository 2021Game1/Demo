#include "CPropeller.h"
#include "Maths.h"
#include "CModel.h"
#include "CStageManager.h"

CPropeller::CPropeller(const CVector& pos, const CVector& scale,
	float rotateSpeedZ)
	: CObjectBase(ETag::ePropeller, ETaskPriority::eBackground,0, ETaskPauseType::eGame)
	, mRotateSpeedZ(rotateSpeedZ)
{
	mpRotationgModel = CResourceManager::Get<CModel>("Propeller");

	// 壁のコライダー
	CModel* wallCol = CResourceManager::Get<CModel>("PropellerWallCol");
	mpRotationgCol = new CColliderMesh(this, ELayer::eFieldWall, wallCol, true);
	mpRotationgCol->SetCollisionTags({ ETag::ePlayer});
	mpRotationgCol->SetCollisionLayers({ ELayer::ePlayer});

	Position(pos);
	Scale(scale);
}

CPropeller::~CPropeller()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpRotationgCol);
}

void CPropeller::Update()
{
	Rotate(0.0f, 0.0f, mRotateSpeedZ);
}

void CPropeller::Render()
{
	mpRotationgModel->SetColor(mColor);
	mpRotationgModel->Render(Matrix());
}