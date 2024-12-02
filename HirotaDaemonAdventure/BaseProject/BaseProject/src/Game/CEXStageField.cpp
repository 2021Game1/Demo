#include "CEXStageField.h"
#include "CCollisionManager.h"
#include "CCamera.h"

CEXStageField::CEXStageField()
	: CObjectBase(ETag::eField, ETaskPriority::eBackground)
{
	// ステージのモデルデータ取得
	mpStageModel = CResourceManager::Get<CModel>("StageModel");
	
	// 床のコライダー
	CModel* floorCol = CResourceManager::Get<CModel>("FloorCol");
	mpFloorCol = new CColliderMesh(this, ELayer::eField, floorCol, true);

	// 壁のコライダー
	CModel* wallCol = CResourceManager::Get<CModel>("WallCol");
	mpWallCol = new CColliderMesh(this, ELayer::eFieldWall, wallCol, true);
}

CEXStageField::~CEXStageField()
{
	// コライダーを削除
	SAFE_DELETE(mpFloorCol);
	SAFE_DELETE(mpWallCol);

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

CColliderMesh* CEXStageField::GetWallCol() const
{
	return mpWallCol;
}

void CEXStageField::Update()
{
}

void CEXStageField::Render()
{
	mpStageModel->SetColor(mColor);
	mpStageModel->Render(Matrix());
}