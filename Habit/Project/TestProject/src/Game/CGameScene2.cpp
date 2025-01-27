#include "CGameScene2.h"
#include "CSceneManager.h"
#include "CField.h"
#include "CPlayer2.h"
#include "CEnemy1.h"
#include "CEnemy2.h"
#include "CGameCamera.h"
#include "CGameCamera2.h"
#include "CInput.h"
#include "CGameMenu.h"
#include "CBGMManager.h"
#include "CLineEffect.h"
#include "CNavManager.h"

//コンストラクタ
CGameScene2::CGameScene2()
	: CSceneBase(EScene::eGame2)
	, mpGameMenu(nullptr)
{
}

//デストラクタ
CGameScene2::~CGameScene2()
{
}

//シーン読み込み
void CGameScene2::Load()
{
	// ゲーム画面はカーソル非表示
	CInput::ShowCursor(false);
	// 背景色設定
	System::SetClearColor(0.1921569f, 0.3019608f, 0.4745098f, 1.0f);

	//ここでゲーム中に必要な
	//リソースの読み込みやクラスの生成を行う
	CResourceManager::Load<CModel>("Map_mini", "Map\\map_mini1.obj");
	CResourceManager::Load<CModel>("Map_mini_floor", "Map\\map_mini_floor.obj");
	CResourceManager::Load<CModel>("Map_mini_Col", "Map\\map_mini1_col.obj");
	CResourceManager::Load<CModel>("Map_mini_door", "Map\\map_mini1_door.obj");

	CResourceManager::Load<CModelX>("Player2", "Character\\Player2\\pico.x");
	CResourceManager::Load<CModelX>("Enemy", "Character\\Enemy\\mutant\\mutant.x");
	CResourceManager::Load<CModelX>("Enemy2", "Character\\Enemy\\warrok\\warrok.x");

	CResourceManager::Load<CModel>("Spider_Web", "Character\\Enemy\\trap\\spider_web.obj");

	// ゲームBGMを読み込み
	CBGMManager::Instance()->Play(EBGMType::eGame);

	// 経路探索管理クラスを作成
	new CNavManager();
	// フィールド作成
	new CField();

	// プレイヤー生成
	CPlayer2* pico = new CPlayer2();
	pico->Scale(1.0f, 1.0f, 1.0f);
	pico->Position(10.0f, 10.0f, 10.0f);

	// 敵①生成
	CEnemy1* enemy = new CEnemy1
	(
		{
			CVector(70.0f, 1.0, 10.0f),
			CVector(180.0f, 1.0, 10.0f),
			CVector(180.0f, 1.0, 100.0f),
			CVector(80.0f, 1.0, 100.0f),
		}
	);
	enemy->Scale(1.0f, 1.0f, 1.0f);
	enemy->Position(CVector(70.0f, 1.0, 10.0f));
	// 敵②生成
	CEnemy2* enemy2 = new CEnemy2
	(
		{
			CVector(195.0f, 0.0f, 115.0f),
			CVector(265.0f, 0.0f, 115.0f),
			CVector(265.0f, 0.0f, 180.0f),
			CVector(195.0f, 0.0f, 180.0f),
		}
	);
	enemy2->Scale(1.0f, 1.0f, 1.0f);
	enemy2->Position(CVector(195.0f, 0.0f, 115.0f));

	// CGameCamera2のテスト
	CVector atPos = pico->Position() + CVector(0.0f, 10.0f, 0.0f);
	CGameCamera2* mainCamera = new CGameCamera2
	(
		atPos + CVector(0.0f, 0.0f, 40.0f),
		atPos
	);

	mainCamera->SetFollowTargetTf(pico);

	// ゲームメニューを作成
	mpGameMenu = new CGameMenu();

}

//シーンの更新処理
void CGameScene2::Update()
{
	if (CInput::PushKey('H'))
	{
		CSceneManager::Instance()->LoadScene(EScene::eTitle);
	}

	// ゲームメニューを開いてなければ、[Ｍ]キーでメニューを開く
	if (!mpGameMenu->IsOpened())
	{
		if (CInput::PushKey('M'))
		{
			mpGameMenu->Open();
		}
	}

}
