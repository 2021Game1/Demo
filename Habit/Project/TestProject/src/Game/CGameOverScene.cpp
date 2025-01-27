#include "CGameOverScene.h"
#include "CSceneManager.h"
#include "CGameScene.h"
#include "CCamera.h"
#include "CGameOverUI.h"

//コンストラクタ
CGameOverScene::CGameOverScene()
	: CSceneBase(EScene::eGameOver)
{
}

//デストラクタ
CGameOverScene::~CGameOverScene()
{
}

//シーン読み込み
void CGameOverScene::Load()
{
	// タイトル画面はカーソル表示
	CInput::ShowCursor(true);
	// 背景色設定
	System::SetClearColor(1.0f, 1.0f, 1.0f, 1.0f);

	CCamera* mainCamera = new CCamera
	(
		CVector(0.0f, 50.0f, 75.0f),
		CVector::zero
	);

	mpGameOverUI = new CGameOverUI();
	AddTask(mpGameOverUI);
}

//シーンの更新処理
void CGameOverScene::Update()
{
	// ゲームオーバー画面が
	if (mpGameOverUI->IsEnd())
	{
		// コンティニューならば、シーンを読み込む
		if (mpGameOverUI->IsContinue())
		{
			CSceneManager::Instance()->LoadScene(EScene::eGame3);
		}
		// ゲーム終了ならば、アプリを閉じる
		else if (mpGameOverUI->IsExitGame())
		{
			System::ExitGame();
		}
	}
}
