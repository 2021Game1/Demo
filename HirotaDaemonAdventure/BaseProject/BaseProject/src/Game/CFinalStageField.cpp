#include "CFinalStageField.h"
#include "CCollisionManager.h"
#include "CStageManager.h"

// コンストラクタ
CFinalStageField::CFinalStageField()
	: CObjectBase(ETag::eField, ETaskPriority::eDefault)
{
	// ステージのモデル取得
	mpStageModel = CResourceManager::Get<CModel>("Stage3Base");

	// ラインのモデル取得
	mpLineModel = CResourceManager::Get<CModel>("Stage3Line");

	// ステージの床コライダー取得
	CModel* floorCol = CResourceManager::Get<CModel>("Stage3FloorCol");
	mpStageFloorCol = new CColliderMesh(this, ELayer::eField, floorCol, true);

	// ステージの壁コライダー取得
	CModel* wallCol = CResourceManager::Get<CModel>("Stage3WallCol");
	mpStageWallCol = new CColliderMesh(this, ELayer::eFieldWall, wallCol, true);
}

// デストラクタ
CFinalStageField::~CFinalStageField()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpStageFloorCol);
	SAFE_DELETE(mpStageWallCol);
}

// 更新処理
void CFinalStageField::Update()
{

}

// 描画処理
void CFinalStageField::Render()
{
	mpStageModel->SetColor(mColor);
	mpStageModel->Render(Matrix());
	mpLineModel->SetColor(mColor);
	mpLineModel->Render(Matrix());
}