#include "CGameClearScene.h"
#include "CSceneManager.h"
#include "CGameScene.h"
#include "CCamera.h"
#include "CGameClearUI.h"
#include "CBGMManager.h"

// コンストラクタ
CGameClearScrene::CGameClearScrene()
	: CSceneBase(EScene::eClear)
{
}

// デストラクタ
CGameClearScrene::~CGameClearScrene()
{
}

//シーン読み込み
void CGameClearScrene::Load()
{
	// TODO:消えない BGMの削除
	CBGMManager::ClearInstance();

	// タイトル画面はカーソル表示
	CInput::ShowCursor(true);
	// 背景色設定
	System::SetClearColor(1.0f, 1.0f, 1.0f, 1.0f);

	CCamera* mainCamera = new CCamera
	(
		CVector(0.0f, 50.0f, 75.0f),
		CVector::zero
	);

	mpGameClearUI = new CGameClearUI();
	AddTask(mpGameClearUI);
}

//シーンの更新処理
void CGameClearScrene::Update()
{
	// ゲームクリア画面が
	if (mpGameClearUI->IsEnd())
	{
		// コンティニューならば、シーンを読み込む
		if (mpGameClearUI->IsContinue())
		{
			CSceneManager::Instance()->LoadScene(EScene::eBootMenu);
		}
		// ゲーム終了ならば、アプリを閉じる
		else if (mpGameClearUI->IsExitGame())
		{
			System::ExitGame();
		}
	}
}
