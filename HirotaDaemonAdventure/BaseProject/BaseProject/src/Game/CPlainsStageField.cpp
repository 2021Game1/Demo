#include "CPlainsStageField.h"
#include "CCollisionManager.h"
#include "CCamera.h"

CPlainsStageField::CPlainsStageField()
	: CObjectBase(ETag::eField,ETaskPriority::eBackground)
{
	// ステージのモデルデータ取得
	mpStageModel = CResourceManager::Get<CModel>("Stage");
	// 道のモデルデータ取得
	mpLoadModel = CResourceManager::Get<CModel>("Load");
	// 雲のモデルデータ取得
	mpCloudModel = CResourceManager::Get<CModel>("Cloud");
	// フェンスのモデルデータ取得
	mpFanceModel = CResourceManager::Get<CModel>("Fance");
	// 花のモデルデータ取得
	mpFlowersModel = CResourceManager::Get<CModel>("Flowers");
	// 草のモデルデータ取得
	mpGrassModel = CResourceManager::Get<CModel>("Grass");
	// 矢印看板のモデルデータ取得
	mpArrowSignModel = CResourceManager::Get<CModel>("Arrowsign");
	// 空島のモデルデータ取得
	mpSkyIsland = CResourceManager::Get<CModel>("SkyIsland");

	// 木のモデルデータ取得
	/*mpTreeModel = CResourceManager::Get<CModel>("Tree");
	mpTreeCol = new CColliderMesh(this, ELayer::eFieldWall, mpTreeModel, true);*/
	// 切り株と木の枝モデルデータ取得
	mpBranchModel = CResourceManager::Get<CModel>("Branch");
	//mpBranchCol = new CColliderMesh(this, ELayer::eField, mpBranchModel, true);

	//// キノコのモデルデータ取得
	//CModel* mushroom = CResourceManager::Get<CModel>("Mushroom");
	//mpMushroomSphere = new CColliderSphere
	//(
	//	this, 
	//	ELayer::eFieldWall, 
	//	1.0f
	//);

	// 岩と低木モデル
	/*mpRockShrubModel = CResourceManager::Get<CModel>("RockShrub");
	mpRockShrudCol = new CColliderMesh(this, ELayer::eFieldWall, mpRockShrubModel, true);*/

	// 床のコライダー
	CModel* floorCol = CResourceManager::Get<CModel>("FloorCol");
	mpFloorCol = new CColliderMesh(this, ELayer::eField, floorCol, true);

	// 壁のコライダー
	CModel* wallCol = CResourceManager::Get<CModel>("WallCol");
	mpWallCol = new CColliderMesh(this, ELayer::eFieldWall, wallCol, true);
}

CPlainsStageField::~CPlainsStageField()
{
	// コライダーを削除
	SAFE_DELETE(mpFloorCol);
	SAFE_DELETE(mpWallCol);
	//SAFE_DELETE(mpTreeCol);
	//SAFE_DELETE(mpRockShrudCol);

	if (mpWallCol != nullptr)
	{
		// メインカメラから壁のコライダーへの参照を取り除く
		CCamera* mainCamera = CCamera::MainCamera();
		if (mainCamera != nullptr)
		{
			mainCamera->RemoveCollider(mpWallCol);
		}
		delete mpWallCol;
		mpWallCol = nullptr;
	}
}

// 壁のコライダー取得
CColliderMesh* CPlainsStageField::GetWallCol() const
{
	return mpWallCol;
}

void CPlainsStageField::Update()
{

}

void CPlainsStageField::Render()
{
	mpStageModel->SetColor(mColor);
	mpStageModel->Render(Matrix());
	mpLoadModel->SetColor(mColor);
	mpLoadModel->Render(Matrix());
	mpCloudModel->SetColor(mColor);
	mpCloudModel->Render(Matrix());
	mpFanceModel->SetColor(mColor);
	mpFanceModel->Render(Matrix());
	mpFlowersModel->SetColor(mColor);
	mpFlowersModel->Render(Matrix());
	mpGrassModel->SetColor(mColor);
	mpGrassModel->Render(Matrix());
	mpArrowSignModel->SetColor(mColor);
	mpArrowSignModel->Render(Matrix());
	mpSkyIsland->SetColor(mColor);
	mpSkyIsland->Render(Matrix());
	//mpTreeModel->SetColor(mColor);
	//mpTreeModel->Render(Matrix());
	mpBranchModel->SetColor(mColor);
	mpBranchModel->Render(Matrix());
	/*mpRockShrubModel->SetColor(mColor);
	mpRockShrubModel->Render(Matrix());*/
}