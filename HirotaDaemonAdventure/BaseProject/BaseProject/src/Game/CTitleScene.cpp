#include "CTitleScene.h"
#include "CTitleMenu.h"
#include "CSceneManager.h"
#include "CGameManager.h"
#include "CGameScene.h"
#include "CCamera.h"
#include "CPlayer.h"
#include "CSound.h"
#include "CBGMManager.h"
#include "CTitleUI.h"
#include "CTitleStage.h"
#include "CStageSky.h"
#include "CTitlePlayer.h"
#include "CStageManager.h"
#include "CGameCamera.h"

#define TITLE_IMAGE "UI\\Title.png"

//コンストラクタ
CTitleScene::CTitleScene()
	: CSceneBase(EScene::eTitle)
	/*, mTitle(nullptr)
	, mpTitleMenu(nullptr)*/
{
}

//デストラクタ
CTitleScene::~CTitleScene()
{
	//CStageManager::UnloadStage();
}

//シーン読み込み
void CTitleScene::Load()
{
	// プレイヤー
	CResourceManager::Load<CModelX>("Player", "Character\\Monster1\\Monster_1.x");

	// ステージモデル
	CResourceManager::Load<CModel>("TitleStage", "Field\\TitleStage\\TitleStage.obj");
	// 床コライダー
	CResourceManager::Load<CModel>("TitleCol","Field\\TitleStage\\FloorCol.obj");
	// ステージの空
	CResourceManager::Load<CModel>("StageSky", "Field\\StageSky\\Sky(Sphere).obj");

	// タイトルメニューを作成
	//mpTitleMenu = new CTitleMenu();
	// タイトル画面はカーソル表示
	CInput::ShowCursor(true);
	// 背景色設定
	System::SetClearColor(0.2f, 0.2f, 0.2f, 0.9f);

	CTitleStage* stage = new CTitleStage();
	stage->Scale(1.0f, 1.0f, 1.0f);
	AddTask(stage);

	mpStageSky = new CStageSky();
	mpStageSky->Scale(150.0f, 150.0f, 150.0f);
	AddTask(mpStageSky);

	// タイトルBGMを再生
	CBGMManager::Instance()->Play(EBGMType::eTitle);

	// モンスター(プレイヤー)
	CTitlePlayer* player = new CTitlePlayer();
	player->Position(CVector(106.0f, 48.0f, -231.0f));
	player->Scale(0.8f, 0.8f, 0.8f);
	player->Rotation(0.0f, 10.0f, 0.0f);
	AddTask(player);

	new CGameCamera
	(
		CVector(122.0f, 71.0f, -274.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);

	/*CCamera* mainCamera = new CCamera
	(
		CVector(122.0f, 71.0f, -274.0f),
		CVector::zero
	);*/

	mpTitleUI = new CTitleUI();
	AddTask(mpTitleUI);
}

//シーンの更新処理
void CTitleScene::Update()
{
	//mpTitleMenu->Open();

	// タイトル画面が
	if (mpTitleUI->IsEnd())
	{
		// ゲーム開始ならば、ゲームシーンを読み込む
		if (mpTitleUI->IsStartGame())
		{
			CSceneManager::Instance()->LoadScene(EScene::eGame);
		}
		// ゲーム終了ならば、アプリを閉じる
		else if (mpTitleUI->IsExitGame())
		{
			System::ExitGame();
		}
	}
}
