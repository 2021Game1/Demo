#include "CEXStage.h"
#include "CEXStageField.h"
#include "CBGMManager.h"
#include "CInput.h"
#include "CPlayer.h"
#include "CStageSky.h"
#include "CEnemyManager.h"
#include "CPicoChan.h"
#include "CSoldier.h"

CEXStage::CEXStage()
	: mElapsedTime(0.0f)
{
	mStageNo = 5;
}

CEXStage::~CEXStage()
{
}

void CEXStage::Load()
{
	// ステージ関連
	// ステージの空
	CResourceManager::Load<CModel>("StageSky", "Field\\StageSky\\Sky(Sphere).obj");
	// ステージモデル
	CResourceManager::Load<CModel>("StageModel", "Field\\EXStage\\EXStage.obj");
	// 床のコライダー
	CResourceManager::Load<CModel>("FloorCol", "Field\\EXStage\\EXStage(FloorCol).obj");
	// 壁のコライダー
	CResourceManager::Load<CModel>("WallCol", "Field\\EXStage\\EXStage(WallCol).obj");

	// 肉モデル
	CResourceManager::Load<CModel>("Meat", "Item\\StageItem\\niku.obj");

	//// フィールド関連 ////

	// フィールド
	mpStage = new CEXStageField();
	mpStage->Scale(2.0f, 2.0f, 2.0f);
	AddTask(mpStage);
	// 空
	mpSky = new CStageSky();
	mpSky->Scale(150.0f, 150.0f, 150.0f);
	AddTask(mpSky);

	// 背景色設定
	System::SetClearColor(0.1960784f, 0.6f, 0.8f, 1.0f);

	// BGMを再生
	CBGMManager::Instance()->Play(EBGMType::eStage3);

	CInput::ShowCursor(false);

	//// キャラクター関連 ////

	CEnemyManager* enemyManager = CEnemyManager::Instance();
	if (enemyManager == nullptr) return;
	// キャラクター

	// ピコちゃん
	CPicoChan* pico = new CPicoChan();
	pico->Position(0.0f, 8.0f, 50.0f);
	pico->Scale(15.5f, 15.5f, 15.5f);
	pico->SetCenterPoint(CVector(0.0f, 8.0f, 50.0f), 30.0f);
	enemyManager->AddEnemy(pico);
	AddTask(pico);

	// ピコちゃん1
	CPicoChan* pico1 = new CPicoChan();
	pico1->Position(50.0f, 8.0f, 50.0f);
	pico1->Scale(15.5f, 15.5f, 15.5f);
	pico1->SetCenterPoint(CVector(50.0f, 8.0f, 50.0f), 30.0f);
	enemyManager->AddEnemy(pico1);
	AddTask(pico1);

	// ソルジャー
	CSoldier* sol = new CSoldier();
	sol->Position(-50.0f, 8.0f, 40.0f);
	sol->Scale(1.2f, 1.2f, 1.2f);
	sol->SetCenterPoint(CVector(-50.0f, 8.0f, 40.0f), 30.0f);
	enemyManager->AddEnemy(sol);
	AddTask(sol);

	// モンスター(プレイヤー)
	CPlayer* player = CPlayer::Instance();
	player->MaxStatus();
	// 初期値点 : 0.0f, 10.0f, 0.0f
	CVector playerPos = CVector(0.0f, 10.0f, 0.0f);
	if (player != nullptr)
	{
		player->SetStartPosition(playerPos);
		player->Rotation(0.0f, 0.0f, 0.0f);
	}
	// カメラの位置と向きを設定
	CVector camPos = playerPos + player->Rotation() * CVector(0.0f, 14.0f, -60.0f);
	CCamera* mainCamera = CCamera::MainCamera();
	mainCamera->LookAt
	(
		camPos,
		playerPos,
		CVector::up
	);
	mainCamera->SetFollowTargetTf(player);
	// スフィアかメッシュぐらい
	mainCamera->AddCollider(mpStage->GetWallCol());
}

void CEXStage::Update()
{
	CheckNumberEnemies();
}

void CEXStage::Unload()
{
	// カメラから衝突するコライダーを取り除く
	CCamera* mainCamera = CCamera::MainCamera();
	mainCamera->RemoveCollider(mpStage->GetWallCol());

	// ベースステージ破棄処理
	CStageBase::Unload();
}