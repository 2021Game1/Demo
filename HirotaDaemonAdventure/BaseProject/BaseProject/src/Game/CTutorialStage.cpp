#include "CTutorialStage.h"
#include "CCollisionManager.h"

CTutorialStage::CTutorialStage()
	: CObjectBase(ETag::eField, ETaskPriority::eBackground)
{
	// ステージのモデルデータ取得
	mpStageModel = CResourceManager::Get<CModel>("TutorialStage");

	// 床のコライダー
	CModel* floorCol = CResourceManager::Get<CModel>("TutorialFCol");
	mpFloor = new CColliderMesh(this, ELayer::eField, floorCol, true);

	// 壁のコライダー
	CModel* wallCol = CResourceManager::Get<CModel>("TutorialWCol");
	mpWall = new CColliderMesh(this, ELayer::eFieldWall, wallCol, true);
}

CTutorialStage::~CTutorialStage()
{
	// コライダーを削除
	SAFE_DELETE(mpFloor);
	SAFE_DELETE(mpWall);
}

void CTutorialStage::Update()
{

}

void CTutorialStage::Render()
{
	mpStageModel->SetColor(mColor);
	mpStageModel->Render(Matrix());
}