#include "CField.h"
#include "CCollisionManager.h"
#include "CDamageObject.h"
#include "CRotateFloor.h"
#include "CGoalObject.h"
#include "CStone1.h"
#include "CCamera.h"

CField::CField()
	: CObjectBase(ETag::eField, ETaskPriority::eBackground)
{
	// モデルデータ取得
	mpModel = CResourceManager::Get<CModel>("Field");
	// 空のデータ
	mpModelSky = CResourceManager::Get<CModel>("Sky");

	CModel* wallCol = CResourceManager::Get<CModel>("WallCol");
	mpWallCol = new CColliderMesh(this, ELayer::eFieldWall, wallCol, true);

	CModel* floorCol = CResourceManager::Get<CModel>("FloorCol");
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, floorCol, true);

	CModel* enemywallCol = CResourceManager::Get<CModel>("EnemyWallCol");
	mpEnemyWallCol = new CColliderMesh(this, ELayer::eFieldEnemyWall, enemywallCol, true);

	CreateFieldObjects();
}

CField::~CField()
{
	// コライダーを破棄
	SAFE_DELETE(mpColliderMesh);
	SAFE_DELETE(mpEnemyWallCol);

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
CColliderMesh* CField::GetWallCol() const
{
	return mpWallCol;
}

void CField::CreateFieldObjects()
{

}

void CField::Update()
{
}

void CField::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
	mpModelSky->SetColor(mColor);
	mpModelSky->Render(Matrix());
}
