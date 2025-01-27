#include "CGameScene.h"
#include "CSceneManager.h"
#include "CField.h"
#include "CPlayer.h"
#include "CPlayer2.h"
#include "CEnemy1.h"
#include "CGameCamera.h"
#include "CGameCamera2.h"
#include "CInput.h"
#include "CGameMenu.h"
#include "CBGMManager.h"
#include "CLineEffect.h"
#include "CNavManager.h"
#include "CCactus.h"
#include "CEnemy2.h"
#include "CPushSwitch.h"
#include "CPushSwitchManager.h"
#include "CSwitchDoor.h"

#include "CTouch.h"
#include "CPlayer3.h"
#include "CChoco.h"

//コンストラクタ
CGameScene::CGameScene()
	: CSceneBase(EScene::eGame)
	, mpGameMenu(nullptr)
{
}

//デストラクタ
CGameScene::~CGameScene()
{
}

//シーン読み込み
void CGameScene::Load()
{
	// ゲーム画面はカーソル非表示
	CInput::ShowCursor(false);
	// 背景色設定
	System::SetClearColor(0.1921569f, 0.3019608f, 0.4745098f, 1.0f);

	//ここでゲーム中に必要な
	//リソースの読み込みやクラスの生成を行う

	CResourceManager::Load<CModel>("Field", "Field\\field.obj");
	CResourceManager::Load<CModel>("FieldCube", "Field\\Object\\cube.obj");
	CResourceManager::Load<CModel>("FieldCylinder", "Field\\Object\\cylinder.obj");
	CResourceManager::Load<CModel>("Wall",		"Field\\Object\\Wall\\Wall.obj");
	CResourceManager::Load<CModel>("WallCol",	"Field\\Object\\Wall\\WallCol.obj");
	CResourceManager::Load<CModelX>("Player", "Character\\Player\\player.x");
	CResourceManager::Load<CModelX>("Cactus", "Character\\Enemy\\Cactus\\cactus.x");
	CResourceManager::Load<CModel>("CactusNeedle", "Character\\Enemy\\Cactus\\needle.obj");
	CResourceManager::Load<CTexture>("Laser", "Effect\\laser.png");
	CResourceManager::Load<CTexture>("LightningBolt", "Effect\\lightning_bolt.png");
	CResourceManager::Load<CModel>("Slash", "Effect\\slash.obj");
	CResourceManager::Load<CSound>("SlashSound", "Sound\\SE\\slash.wav");
	CResourceManager::Load<CModel>("Sword", "Weapon\\Sword\\sword.obj");
	CResourceManager::Load<CModel>("Shield", "Weapon\\Shield\\shield.obj");

	CResourceManager::Load<CModelX>("Player2", "Character\\Player2\\pico.x");
	CResourceManager::Load<CModelX>("Enemy", "Character\\Enemy\\mutant\\mutant.x");
	CResourceManager::Load<CModelX>("Enemy2", "Character\\Enemy\\warrok\\warrok.x");
	CResourceManager::Load<CModel>("Switch", "Object\\Switch.obj");

	CResourceManager::Load<CModel>("Spider_Web", "Character\\Enemy\\trap\\spider_web.obj");

	CResourceManager::Load<CModel>("Touch", "Object\\Touch.obj");
	CResourceManager::Load<CModel>("Obj", "Object\\mm.obj");

	// 表示できるか試し中
	CResourceManager::Load<CModelX>("Player3", "Character\\Player3\\Acquire.x");
	CResourceManager::Load<CModelX>("Ghost", "Character\\Enemy\\ghost\\ghost.x");
	CResourceManager::Load<CModel>("Choco", "Item\\chocolate.obj");

	// ゲームBGMを読み込み
	CBGMManager::Instance()->Play(EBGMType::eGame);

	// 経路探索管理クラスを作成
	new CNavManager();
	// フィールド作成
	new CField();

	// サボテンの敵を作成
	CCactus* cactus = new CCactus();
	cactus->Position(0.0f, 0.0f, -100.0f);

	//CPlayer* player = new CPlayer();
	//player->Scale(1.0f, 1.0f, 1.0f);
	//player->Position(-50.0f, 1.0f, 0.0f);

	CPlayer2* pico = new CPlayer2();
	pico->Scale(1.0f, 1.0f, 1.0f);
	pico->Position(-50.0f, 0.0f, 10.0f);

	CPlayer3* player3 = new CPlayer3();
	player3->Scale(1.0f, 1.0f, 1.0f);
	player3->Position(-50.0f, 0.0f, -10.0f);

	// 敵①生成
	CEnemy1* enemy = new CEnemy1
	(
		{
			CVector(100.0f, 0.0f,   0.0f),
			CVector(  0.0f, 0.0f,   0.0f),
			CVector(  0.0f, 0.0f, 100.0f),
			CVector(100.0f, 0.0f, 100.0f),
		}
	);
	enemy->Scale(1.0f, 1.0f, 1.0f);
	enemy->Position(CVector(200.0f, 1.0, 0.0f));
	// 敵②生成
	CEnemy2* enemy2 = new CEnemy2
	(
		{
			CVector(250.0f, 0.0f, 150.0f),
			CVector(150.0f, 0.0f, 150.0f),
			CVector(150.0f, 0.0f, 250.0f),
			CVector(250.0f, 0.0f, 250.0f),
		}
	);
	enemy2->Scale(1.0f, 1.0f, 1.0f);
	enemy2->Position(CVector(200.0f, 0.0, 200.0f));

	// 松明(仮)の描画の確認	削除予定
	CTouch* touch = new CTouch(CVector(0.0f, 0.0f, 0.0f), 
		CVector(0.0f, 0.0f, 0.0f), CVector(0.3f, 0.3f, 0.3f));

	// チョコを生成
	CChoco* choco = new CChoco();
	choco->Position(20.0f, 0.0f, 0.0f);

	// スイッチを生成
	CPushSwitch* push_switch = new CPushSwitch(CVector(-30.0f, 0.0f, 0.0f),
		CVector(0.0f, 0.0f, 0.0f), CVector(1.0f,1.0f,1.0f));
#if _DEBUG
	push_switch->SetDebugName("Switch1");
#endif

	// スイッチを生成
	CPushSwitch* push_switch2 = new CPushSwitch(CVector(-50.0f, 0.0f, 0.0f),
		CVector(0.0f, 0.0f, 0.0f), CVector(1.0f, 1.0f, 1.0f));
#if _DEBUG
	push_switch2->SetDebugName("Switch2");
#endif

	// スイッチで開く扉①を作成
	CSwitchDoor* door = new CSwitchDoor
	(
		CVector(-50.0f, 0.0f, -50.0f),
		CVector( 0.0f,  0.0f,   0.0f),
		CVector( 2.0f,  5.0f,   2.0f)
	);
	door->SetAnimPos
	(
		CVector(-30.0f, 0.0f, -50.0f),	// 扉を開いた時の座標
		CVector(-50.0f, 0.0f, -50.0f)	// 扉を閉じた時の座標
	);
	door->AddSwitch(push_switch);		// 押したら開くスイッチを追加

	// スイッチで開く扉②を作成
	CSwitchDoor* door2 = new CSwitchDoor
	(
		CVector(-120.0f, 0.0f, -50.0f),
		CVector(   0.0f, 0.0f,   0.0f),
		CVector(   2.0f, 5.0f,   2.0f)
	);
	door2->SetAnimPos
	(
		CVector(-100.0f, 0.0f, -50.0f),	// 扉を開いた時の座標
		CVector(-120.0f, 0.0f, -50.0f)	// 扉を閉じた時の座標
	);
	door2->AddSwitch(push_switch);		// 押したら開くスイッチを追加
	door2->AddSwitch(push_switch2);		// 押したら開くスイッチを追加

	// CGameCameraのテスト
	//CGameCamera* mainCamera = new CGameCamera
	//(
	//	//CVector(5.0f, -15.0f, 180.0f),
	//	CVector(0.0f, 50.0f, 75.0f),
	//	player->Position()
	//);

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
void CGameScene::Update()
{
	// BGM再生中でなければ、BGMを再生
	//if (!mpGameBGM->IsPlaying())
	//{
	//	mpGameBGM->PlayLoop(-1, 1.0f, false, 1.0f);
	//}

	if (CInput::PushKey('H'))
	{
		CSceneManager::Instance()->LoadScene(EScene::eGameOver);
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
