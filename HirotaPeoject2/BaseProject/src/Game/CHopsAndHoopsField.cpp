#include "CHopsAndHoopsField.h"
#include "CCollisionManager.h"
#include "CCamera.h"
#include "CStageManager.h"

// コンストラクタ
CHopsAndHoopsField::CHopsAndHoopsField()
	: CObjectBase(ETag::eField,ETaskPriority::eBackground)
{
	// ステージのモデル取得
	mpStageModel = CResourceManager::Get<CModel>("HopsAndHoops(Base)");

	// ステージのコライダー取得
	CModel* floorCol = CResourceManager::Get<CModel>("HopsAndHoops(Col)");
	mpFloorCol = new CColliderMesh(this, ELayer::eField, floorCol, true);
}

// デストラクタ
CHopsAndHoopsField::~CHopsAndHoopsField()
{
	CStageManager::RemoveTask(this);
	// コライダー削除
	SAFE_DELETE(mpFloorCol);
}

// 更新処理
void CHopsAndHoopsField::Update()
{

}

// 描画処理
void CHopsAndHoopsField::Render()
{
	mpStageModel->SetColor(mColor);
	mpStageModel->Render(Matrix());
}