#include "CSeesawAdventure.h"
#include "CCollisionManager.h"
#include "CCamera.h"
#include "CStageManager.h"

// コンストラクタ
CSeesawAdventure::CSeesawAdventure()
	: CObjectBase(ETag::eField, ETaskPriority::eBackground)
{
	// ステージのモデル取得
	mpStageModel = CResourceManager::Get<CModel>("SeesawStage(Base)");

	// ステージのコライダー取得
	CModel* floorCol = CResourceManager::Get<CModel>("SeesawStage(Floor)");
	mpFloorCol = new CColliderMesh(this, ELayer::eField, floorCol, true);

	// 壁のコライダー
	CModel* wallCol = CResourceManager::Get<CModel>("SeesawStage(Wall)");
	mpWallCol = new CColliderMesh(this, ELayer::eFieldWall, wallCol, true);
}

// デストラクタ
CSeesawAdventure::~CSeesawAdventure()
{
	CStageManager::RemoveTask(this);
	// コライダー削除
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

// 壁のコライダー取得
CColliderMesh* CSeesawAdventure::GetWallCol() const
{
	return mpWallCol;
}

// 更新処理
void CSeesawAdventure::Update()
{

}

// 描画処理
void CSeesawAdventure::Render()
{
	mpStageModel->SetColor(mColor);
	mpStageModel->Render(Matrix());
}