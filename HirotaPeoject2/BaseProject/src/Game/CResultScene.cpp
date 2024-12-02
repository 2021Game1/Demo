#include "CResultScene.h"
#include "CSceneManager.h"
#include "CGameScene.h"
#include "CCamera.h"
#include "CTitleScene.h"
#include "CPlayer.h"
#include "CBGMManager.h"
#include "CResultAnnouncement.h"
#include "CStageManager.h"

// コンストラクタ
CResultScene::CResultScene()
	: CSceneBase(EScene::eResult)
{

}

// デストラクタ
CResultScene::~CResultScene()
{

}

// 読み込み
void CResultScene::Load()
{
	// カーソル表示
	CInput::ShowCursor(true);
	// 背景色設定
	System::SetClearColor(0.2f, 0.2f, 0.2f, 0.9f);

	CCamera* mainCamera = new CCamera
	(
		CVector(0.0f, 50.0f, 75.0f),
		CVector::zero
	);

	mpResult = new CResultAnnouncement();
	AddTask(mpResult);
}

// 更新処理
void CResultScene::Update()
{
	
}