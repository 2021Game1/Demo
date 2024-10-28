#include "CStageSelection.h"
#include "CCollisionManager.h"
#include "CStageManager.h"
#include "CCamera.h"

CStageSelection::CStageSelection()
	: CObjectBase(ETag::eField,ETaskPriority::eBackground)
{
	// モデルデータ取得
	mpModel = CResourceManager::Get<CModel>("StageSelect");


	/*CModel* wallCol = CResourceManager::Get<CModel>("StageSelectionWallCol");
	mpWallCol = new CColliderMesh(this, ELayer::eFieldWall, wallCol, true);*/

	CModel* floorCol = CResourceManager::Get<CModel>("StageSelectFloor");
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, floorCol, true);

	CreateFieldObjects();
}

CStageSelection::~CStageSelection()
{
	CStageManager::RemoveTask(this);
	// コライダーを破棄
	SAFE_DELETE(mpColliderMesh);

	//if (mpWallCol != nullptr)
	//{
	//	// メインカメラから壁のコライダーへの参照を取り除く
	//	CCamera* mainCamera = CCamera::MainCamera();
	//	if (mainCamera != nullptr)
	//	{
	//		mainCamera->RemoveCollider(mpWallCol);

	//	}
	//	delete mpWallCol;
	//	mpWallCol = nullptr;
	//}
}

//// 壁のコライダー取得
//CColliderMesh* CStageSelection::GetWallCol() const
//{
//	return mpWallCol;
//}

void CStageSelection::CreateFieldObjects()
{

}

void CStageSelection::Update()
{
}

void CStageSelection::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}