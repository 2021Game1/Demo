#include "CTitleStage.h"
#include "CCollisionManager.h"
#include "CCamera.h"
#include "CStageManager.h"

// コンストラクタ
CTitleStage::CTitleStage()
	: CObjectBase(ETag::eField,ETaskPriority::eBackground)
{
	// タイトルステージのモデル
	mpStageModel = CResourceManager::Get<CModel>("TitleStage");

	// タイトルステージの床コライダー
	CModel* TitleCol = CResourceManager::Get<CModel>("TitleCol");
	mpTitleCol = new CColliderMesh(this, ELayer::eField, TitleCol, true);
}

// デストラクタ
CTitleStage::~CTitleStage()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpTitleCol);
}

// 更新処理
void CTitleStage::Update()
{

}

// 描画処理
void CTitleStage::Render()
{
	mpStageModel->SetColor(mColor);
	mpStageModel->Render(Matrix());
}