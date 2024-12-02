#include "COneShotFloorField.h"
#include "CCollisionManager.h"
#include "CCamera.h"
#include "CStageManager.h"

// コンストラクタ
COneShotFloorField::COneShotFloorField()
	: CObjectBase(ETag::eField,ETaskPriority::eDefault)
{
	// ステージのモデル取得
	mpStageModel = CResourceManager::Get<CModel>("Stage1Base");

	// ラインのモデル取得
	mpLineModel = CResourceManager::Get<CModel>("Stage1Line");

	// ステージのコライダー取得
	CModel* floorCol = CResourceManager::Get<CModel>("Stage1FloorCol");
	mpStageFloorCol = new CColliderMesh(this, ELayer::eField, floorCol, true);
}

COneShotFloorField::~COneShotFloorField()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpStageFloorCol);
}

void COneShotFloorField::Update()
{

}

void COneShotFloorField::Render()
{
	mpStageModel->SetColor(mColor);
	mpStageModel->Render(Matrix());
	mpLineModel->SetColor(mColor);
	mpLineModel->Render(Matrix());
}