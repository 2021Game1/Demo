#include "CGameScene.h"
#include "CSceneManager.h"
#include "CTaskManager.h"
#include "CGameOverScene.h"
#include "CClearScene.h"
#include "CField.h"
#include "CStageSelection.h"
#include "CCamera.h"
#include "CUIBase.h"
#include "CInput.h"
#include "CStageManager.h"
#include "CGameManager.h"
#include "CPlayer.h"
#include "CSoldier.h"
#include "CSignboard.h"
#include "CGameCamera.h"
#include "CGameMenu.h"
#include "CEnemyManager.h"
#include "CRisingObject.h"
#include "CStage1.h"
#include "CSound.h"
#include "CBGMManager.h"
#include "CJumpingObject.h"
#include "CInventoryMenu.h"
#include "CStageTime.h"
#include "CScore.h"
#include "CVanguard.h"
#include "CBlueMedal.h"
#include "CScreenItem.h"
#include "CResult.h"
#include "CResultAnnouncement.h"
#include "CMeat1.h"

//コンストラクタ
CGameScene::CGameScene()
	: CSceneBase(EScene::eGame)
	, mpGameMenu(nullptr)
	, mpTime(nullptr)
	, mpScore(nullptr)
	, mpResultUI(nullptr)
	//, mpInventoryMenu(nullptr)
{

}

//デストラクタ
CGameScene::~CGameScene()
{
	CStageManager::UnloadStage();
}

//シーン読み込み
void CGameScene::Load()
{
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//ここでゲーム中に必要な
	//リソースの読み込みやクラスの生成を行う

	// キャラクター関連
	CResourceManager::Load<CModelX>("Player",				"Character\\Monster1\\Monster_1.x");						// プレイヤー
	// ピコちゃん
	CResourceManager::Load<CModelX>("Pico", "Character\\PicoChan\\PicoChan.x");
	// ソルジャー
	CResourceManager::Load<CModelX>("Soldier", "Character\\Gas mask soldier\\GasMask_Soldier_Model.x");
	// ヴァンガード
	CResourceManager::Load<CModelX>("Vanguard", "Character\\Vanguard\\VanguardModel.x");

	
	// アイテム関連
	// 魔法剣
	CResourceManager::Load<CModel>("MajicSword",			"Item\\MajicSword\\MajicSword.obj");
	// 魔法剣ヴァンガード
	CResourceManager::Load<CModel>("MajicSwordVan",			"Item\\MajicSword\\MajicSword(Van).obj");
	// 魔法剣ヴァンガード
	CResourceManager::Load<CModel>("MajicSwordPico", "Item\\MajicSword\\MajicSword(Pico).obj");
	// とげとげボール
	CResourceManager::Load<CModel>("SpikyBall", "Item\\AttackItem\\SpikyBall.obj");

	// エフェクト関連
	// 弾のエフェクト
	CResourceManager::Load<CTexture>("Laser", "Effect\\laser.png");
	// スラッシュエフェクト
	CResourceManager::Load<CModel>("Slash", "Effect\\slash.obj");
	// キャラクターエフェクト
	CResourceManager::Load<CModel>("CharEffect", "Effect\\CharacterEffect\\CharacterEffect(Up).obj");
	// キャラクターエフェクト(ライン)
	CResourceManager::Load<CModel>("LineEffect", "Effect\\CharacterEffect\\CharacterEffect(Line).obj");
	// エフェクト
	CResourceManager::Load<CModel>("CircleEffect1", "Effect\\CharacterEffect\\CharaEffectCircle.obj");
	CResourceManager::Load<CModel>("CircleEffect2", "Effect\\CharacterEffect\\CharaEffectCircle(Widthver).obj");
	// キャラクターエフェクト
	CResourceManager::Load<CModel>("CharEffect", "Effect\\CharacterEffect\\CharacterEffect(Up).obj");
	// キャラクターエフェクト(ライン)
	CResourceManager::Load<CModel>("LineEffect", "Effect\\CharacterEffect\\CharacterEffect(Line).obj");



	// UI関連
	CResourceManager::Load<CTexture>("PFrame",				"UI\\Image_Gauge_Frame.png");		// プレイヤーのフレーム
	CResourceManager::Load<CTexture>("PBarImage",			"UI\\WhiteUI.png");					// プレイヤーのバー
	CResourceManager::Load<CTexture>("PStamina",			"UI\\Sutamina.png");				// プレイヤーのスタミナ
	CResourceManager::Load<CTexture>("SFrame",				"UI\\Image_Gauge_Frame.png");		// ソルジャーのフレーム
	CResourceManager::Load<CTexture>("SBar",				"UI\\Gauge.png");					// ソルジャーのバー
	CResourceManager::Load<CTexture>("YFrame",				"UI\\Image_Gauge_Frame.png");		// ゆかりさんのフレーム
	CResourceManager::Load<CTexture>("YBar",				"UI\\Gauge.png");					// ゆかりさんのバー
	CResourceManager::Load<CTexture>("SignboardUI",			"UI\\Ukye_1.png");					// Uキーの画像
	CResourceManager::Load<CTexture>("ExclamationMark",		"UI\\bikkurimark.png");				// ビックリマーク画像
	CResourceManager::Load<CTexture>("Timer",				"UI\\StageUI\\Timer.png");			// タイマー画像
	// ピコちゃんUI(フレーム)
	CResourceManager::Load<CTexture>("PicoFrame", "UI\\PicoChan\\PicoChanFrame.png");
	// ピコちゃんUI(フレーム)
	CResourceManager::Load<CTexture>("PicoGauge", "UI\\PicoChan\\PicoChanGauge.png");
	// Eキーの画像
	CResourceManager::Load<CTexture>("EUI", "UI\\GimmickUI\\E.png");
	// キーのフレーム画像
	CResourceManager::Load<CTexture>("Frame", "UI\\GimmickUI\\framework.png");

	
	// BGM・SE関連
	// 剣　スラッシュ
	CResourceManager::Load<CSound>("SlashSound", "Sound\\SE\\slash.wav");
	// 8bitの回復音
	CResourceManager::Load<CSound>("8bitKaifuku", "Sound\\SE\\8bitkaifuku.wav");
	// 8bitの銃の音(ブロック用に使う)
	CResourceManager::Load<CSound>("8bitShot", "Sound\\SE\\8bitshot.wav");
	// 8bitの回復音(無敵用に使う)
	CResourceManager::Load<CSound>("8bitMutekiTime", "Sound\\SE\\8bitMuteki.wav");
	// クリーチャーの唸り声1
	CResourceManager::Load<CSound>("CreatureGrowl1", "Sound\\VOICE\\CreatureStereo5.wav");

	// ゲーム内のBGM
	//CBGMManager::Instance()->Play(EBGMType::eGame);


	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// ゲーム中はカーソルをオフ
	CInput::ShowCursor(false);

	//// フィールド
	//CStageSelection* field = new CStageSelection();

	//モンスター(プレイヤー)
	CPlayer* player = new CPlayer();

	/*new CGameCamera
	(
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);*/

	//CCamera* mainCamera = new CCamera
	//(
	//	CVector(0.0f, 80.0f, 45.0f),
	//	player->Position() + CVector(0.0f, 10.0f, 0.0f)
	//);
	//mainCamera->SetFollowTargetTf(player);
	//// スフィアかメッシュぐらい
	//mainCamera->AddCollider(field->GetWallCol());

	// ゲームメニューを作成
	mpGameMenu = new CGameMenu();
	AddTask(mpGameMenu);
	// 時間
	mpTime = new CStageTime();
	AddTask(mpTime);
	// スコア
	mpScore = new CScore();
	AddTask(mpScore);
	// リザルト
	mpResultUI = new CResultAnnouncement();
	AddTask(mpResultUI);

	CGameManager::GameStart();
}

//シーンの更新処理
void CGameScene::Update()
{
	// ゲームのステータスがeResultだったら
	// リザルト表示
	// (他にやり方があるかも)
	if (CGameManager::GameState() == EGameState::eResult)
	{
		// カーソルをオンにする
		CInput::ShowCursor(true);
		// リザルトメニューを開いていなかったら
		if (!mpResultUI->IsOpened())
		{
			// 開く
			// BGMを再生
			CBGMManager::Instance()->Play(EBGMType::eEnding);
			mpResultUI->Open();
			mpResultUI->Update();
		}
		// リザルトメニューを開いていたら
		else
		{
			// リザルト画面終了フラグがオンだったら
			if (mpResultUI->IsEnd())
			{
				// ゲーム開始ならば、ゲームシーンを読み込む
				if (mpResultUI->IsStartGame())
				{
					// ゲーム中はカーソルをオフ
					CInput::ShowCursor(false);
					// メニューを閉じる
					mpResultUI->Close();
					// BGMを再生
					CBGMManager::Instance()->Play(EBGMType::eMap);
					CGameManager::GameRestart();
				}
				// ゲーム終了ならば、アプリを閉じる
				else if (mpResultUI->IsExitGame())
				{
					System::ExitGame();
				}
			}
		}
	}
	// 更新
	mpResultUI->Update();

	////////////////////////////////////////////////////////////////////////////////////

	// ステージの更新
	CStageManager::Update();

	if (CInput::PushKey('L'))
	{
		CSceneManager::Instance()->LoadScene(EScene::eStuffedRoll);
	}

	/*int stage = CGameManager::StageNo();
	printf("StageNo:%d\n", stage);*/

	// ステージ番号の監視
	//CDebugPrint::Print("StageNo:%d\n", CGameManager::StageNo());
}