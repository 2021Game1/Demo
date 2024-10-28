#include "CStageSelectionStage.h"
#include "CStageSelectCamera.h"
#include "CGameManager.h"
#include "CGameCamera.h"
#include "CCamera.h"
#include "CPlayer.h"
#include "CInput.h"
#include "CFixedFlamethrower.h"
#include "CStage1MenuObject.h"
#include "CStage2MenuObject.h"
#include "CStage3MenuObject.h"
#include "CStage4MenuObject.h"
#include "CStageSelection.h"
#include "CTreasureChest.h"
#include "CStageButton.h"
#include "CStage1Button.h"
#include "CStage2Button.h"
#include "CStage3Button.h"
#include "CStage4Button.h"
#include "CVanguard.h"
#include "CStageSky.h"
#include "CBGMManager.h"
#include "CTutorialUI.h"

// ステージのデータのテーブル
CStageSelectionStage::StageData CStageSelectionStage::STAGE_DATA[] = 
{
	{0, CVector(65.0f, 4.5f, 36.0f), -1, 1, true},
	{1, CVector(65.0f, 3.5f, -72.0f), 0, 2, true},
	{2, CVector(65.0f, 3.5f, -185.0f), 1, 3, false},	// 初期値はfalse
	{3, CVector(65.0f, 3.5f, -298.0f), 2, 4, false},	// 初期値はfalse
	{4, CVector(65.0f, 3.5f, -615.0f), 3, -1, false},	// 初期値はfalse
};

// ステージを移動できるかどうか
void CStageSelectionStage::UpdateStageMovement()
{
	CPlayer* player = CPlayer::Instance();
	if (player == nullptr) return;

	// ステージ2に移行可能かどうか
	if (player->IsStartStage2()) 
	{
		STAGE_DATA[2].canMove = true;
	}
	else
	{
		STAGE_DATA[2].canMove = false;
	}

	// ステージ3に移行可能かどうか
	if (player->IsStartStage3()) 
	{
		STAGE_DATA[3].canMove = true;
	}
	else
	{
		STAGE_DATA[3].canMove = false;
	}

	// ステージ4に移行可能かどうか
	if (player->IsStartStage4())
	{
		STAGE_DATA[4].canMove = true;
	}
	else
	{
		STAGE_DATA[4].canMove = false;
	}
}


// コンストラクタ
CStageSelectionStage::CStageSelectionStage()
	: mSelectStageNo(0)
	, IsTutorial(false)
{
	mStageNo = 0;
}

// デストラクタ
CStageSelectionStage::~CStageSelectionStage()
{
}

// プレイヤーんポジション設定
CVector CStageSelectionStage::GetPlayerStartPosition()
{
	// プレイヤーのポジションを返す
	CVector playerPos;

	// プレイヤーを取得
	CPlayer* player = CPlayer::Instance();
	// プレイヤーがnulじゃなかったら
	if (player != nullptr)
	{
		// ステージをクリアしているかどうかをチェック
		bool playerStage = player->IsStageClear();
		// プレイヤーが死んでいたら
		bool playerDeath = player->IsMDeath();

		// プレイヤーの初期位置を設定
		if (playerStage || playerDeath)
		{
			// ステージをクリアしている場合の初期位置
			playerPos = CVector(65.0f, 30.5f, 60.0f);
			mSelectStageNo = 0;
		}
		else
		{
			// ステージをクリアしていない場合の初期位置
			// pcの不調かどうか分からないが、本来は4.0fで大丈夫
			playerPos = CVector(65.0f, 20.0f, 36.0f);
			mSelectStageNo = 0;
		}
	}

	return playerPos;
}

// ステージ読み込み
void CStageSelectionStage::Load()
{
	// ステージの空
	CResourceManager::Load<CModel>("StageSky", "Field\\StageSky\\Sky(Sphere).obj");
	// ステージのオブジェクト
	CResourceManager::Load<CModel>("StageSelect", "Field\\StageSelect\\StageSelect.obj");
	// ステージの床コライダー
	CResourceManager::Load<CModel>("StageSelectFloor", "Field\\StageSelect\\StageSelectFloorCol.obj");
	// ステージボタンモデル
	CResourceManager::Load<CModel>("StageButton", "GameGimmick\\Gimmick\\StageButton\\StageBotan.obj");
	// 空島モデル
	CResourceManager::Load<CModel>("SkyIslandMenu", "GameGimmick\\Object\\Skyisland.obj");
	// ナンバーモデル
	CResourceManager::Load<CModel>("Number3", "GameGimmick\\Gimmick\\NumberFloor\\number3.obj");
	// 跳ねるキノコモデル
	CResourceManager::Load<CModel>("JumpingKinoko", "GameGimmick\\Gimmick\\Jump\\JumpingKinoko(Base).obj");
	// 跳ねるキノココライダー
	CResourceManager::Load<CModel>("JumpingKinokoCol", "GameGimmick\\Gimmick\\Jump\\JumpingKinoko(Col).obj");
	// シーソーモデル
	CResourceManager::Load<CModel>("SeesawModel", "GameGimmick\\Gimmick\\SeesawGimmick\\SeesawModel.obj");
	// ENTERキーの画像
	CResourceManager::Load<CTexture>("EnterUI", "UI\\GimmickUI\\ENTER.png");

	// 背景色設定
	System::SetClearColor(0.1921569f, 0.3019608f, 0.4745098f, 1.0f);

	// タイトルBGMを再生
	CBGMManager::Instance()->Play(EBGMType::eMap);

	// ゲーム中はカーソルをオフ
	CInput::ShowCursor(false);

	//// フィールド関連 /////////////////////////////////////////////////////////////////
	
	// フィールド
	CStageSelection* field = new CStageSelection();
	field->Scale(10.0f, 10.0f, 10.0f);
	AddTask(field);
	// 空
	mpSky = new CStageSky();
	mpSky->Scale(150.0f, 150.0f, 150.0f);
	AddTask(mpSky);

	/////////////////////////////////////////////////////////////////////////////////////

	//// ステージオブジェクト関連 ///////////////////////////////////////////////////////

	// ステージ1選択ボタン
	CStage1Button* stage1button = new CStage1Button
	(
		STAGE_DATA[1].btnPos,
		CVector(10.0f, 10.0f, 10.0f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(stage1button);

	// ステージ2選択ボタン
	CStage2Button* stage2button = new CStage2Button
	(
		STAGE_DATA[2].btnPos,
		CVector(10.0f, 10.0f, 10.0f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(stage2button);

	// ステージ3選択ボタン
	CStage3Button* stage3button = new CStage3Button
	(
		STAGE_DATA[3].btnPos,
		CVector(10.0f, 10.0f, 10.0f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(stage3button);

	// ステージ4選択ボタン
	CStage4Button* stage4button = new CStage4Button
	(
		STAGE_DATA[4].btnPos,
		CVector(10.0f, 10.0f, 10.0f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(stage4button);

	// ステージメニューオブジェクト(ステージ1)
	CStage1MenuObject* menuobj1 = new CStage1MenuObject
	(
		CVector(6.0f, 10.0f, -72.0f),
		CVector(2.5f, 2.5f, 2.5f),
		CVector(0.0f, 40.0f, 0.0f),
		ETag::ePlayer, ELayer::eDamageCol
	);
	AddTask(menuobj1);

	// ステージメニューオブジェクト(ステージ2)
	CStage2MenuObject* menuobj2 = new CStage2MenuObject
	(
		CVector(6.0f, 15.0f, -185.0f),
		CVector(1.0f, 1.0f, 1.0f),
		CVector(0.0f, 40.0f, 0.0f),
		ETag::ePlayer, ELayer::eDamageCol
	);
	AddTask(menuobj2);

	// ステージメニューオブジェクト(ステージ3)
	CStage3MenuObject* menuobj3 = new CStage3MenuObject
	(
		CVector(6.0f, 30.0f, -298.0f),
		CVector(1.2f, 1.2f, 1.2f),
		CVector(0.0f, 40.0f, 0.0f),
		ETag::ePlayer, ELayer::eDamageCol
	);
	AddTask(menuobj3);

	// ステージメニューオブジェクト(ステージ4)
	CStage4MenuObject* menuobj4 = new CStage4MenuObject
	(
		CVector(6.0f, 30.0f, -615.0f),
		CVector(4.0f, 4.0f, 4.0f),
		CVector(0.0f, 40.0f, 0.0f),
		ETag::ePlayer, ELayer::eDamageCol
	);
	AddTask(menuobj4);

	/////////////////////////////////////////////////////////////////////////////////////
	
	//// プレイヤー関連 /////////////////////////////////////////////////////////////////

	// モンスター(プレイヤー)
	CPlayer* player = CPlayer::Instance();
	// プレイヤーの初期位置を取得
	CVector playerPos = GetPlayerStartPosition();
	if (player != nullptr)
	{
		player->SetStartPosition(playerPos);
		player->Rotation(0.0f, 180.0f, 0.0f);
	}
	// ステージ選択画面は、ステージ選択画面用のカメラを使用するため、
	// ゲームのカメラを削除する
	CCamera* camera = CCamera::MainCamera();
	if (camera != nullptr)
	{
		camera->Kill();
	}
	// カメラの位置をプレイヤーから一定量離れた位置に設定
	CVector camPos = playerPos + CVector(100.0f, 70.0f, 0.0f);
	// ステージ選択カメラを生成
	camera = new CStageSelectCamera
	(
		camPos,
		playerPos,	// カメラの注視点はプレイヤーの座標
		true
	);
	// カメラをプレイヤーに追従させる
	camera->SetFollowTargetTf(player);
	// スフィアかメッシュぐらい
	//mainCamera->AddCollider(field->GetWallCol());
	
	/////////////////////////////////////////////////////////////////////////////////////

	mpTutorial = new CTutorialUI();
	AddTask(mpTutorial);
}

// ステージ破棄
void CStageSelectionStage::Unload()
{
	// ベースステージ破棄処理
	CStageBase::Unload();

	// ステージ選択画面のカメラを削除
	CCamera* camera = CCamera::MainCamera();
	if (camera != nullptr)
	{
		camera->Kill();
	}
	// ステージ中のカメラを生成
	new CGameCamera
	(
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);

}

// 更新
void CStageSelectionStage::Update()
{
	// プレイヤーが存在しなければ、処理しない
	CPlayer* player = CPlayer::Instance();
	if (player == nullptr) return;

	// 現在選択中のステージデータを取得
	StageData data = STAGE_DATA[mSelectStageNo];

	// ステージの移動可能性を更新
	UpdateStageMovement();

	// プレイヤーが移動中であれば
	if (player->CanMoveTo())
	{
		if (!IsTutorial)
		{
			if (!mpTutorial->IsOpened())
			{
				mpTutorial->Open();
				IsTutorial = true;
			}
		}

		//[A]もしくは[←]を押したら、前のステージへ移動
		if (CInput::PushKey('A') || CInput::PushKey(VK_LEFT))
		{
			// 前のステージが存在するか
			if (data.prevStageNo >= 0)
			{
				// 前のステージへ移動
				mSelectStageNo = data.prevStageNo;
				// 前のステージのボタンの位置にプレイヤーを移動
				player->MoveTo(STAGE_DATA[mSelectStageNo].btnPos);
			}
		}
		// [D]もしくは[→]を押したら、次のステージへ移動
		else if (CInput::PushKey('D') || CInput::PushKey(VK_RIGHT))
		{
			// 次のステージが存在するか
			if (data.nextStageNo >= 0 && STAGE_DATA[data.nextStageNo].canMove)
			{
				// 次のステージへ移動
				mSelectStageNo = data.nextStageNo;
				// 次のステージのボタンの位置にプレイヤーを移動開始
				player->MoveTo(STAGE_DATA[mSelectStageNo].btnPos);
			}
		}
		// [Enter]を押したら、ステージを決定
		else if (CInput::PushKey(VK_RETURN))
		{
			// ステージ選択ステージ以外が選択されていたら
			if (mSelectStageNo > 0)
			{
				// プレイヤーにステージ開始を伝える
				player->StartStage(mSelectStageNo);
			}
		}
	}
}