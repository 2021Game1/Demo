#include "CGameManager.h"
#include "CStageManager.h"
#include "CSceneManager.h"
#include "CFade.h"
#include "CScore.h"
#include "CStageTime.h"
#include "CResult.h"
#include "CInput.h"
#include "CPlayer.h"
#include "CVanguard.h"
#include "CBlueMedal.h"
#include "CResultAnnouncement.h"
#include "CMeat1.h"
#include "CMeat2.h"
#include "CMeat3.h"
#include "CSoldier.h"

CGameManager* CGameManager::spInstance = nullptr;

// コンストラクタ
CGameManager::CGameManager()
	: mStageNo(0)
	, mState(EGameState::eReady)
	, mStateStep(0)
	, mElapsedTime(0.0f)
	, mElapsedStageTime(0.0f)
	, mResultSetUp(false)
{
}

// デストラクタ
CGameManager::~CGameManager()
{
	spInstance = nullptr;
}

// インスタンス取得
CGameManager* CGameManager::Instance()
{
	if (spInstance == nullptr)
	{
		spInstance = new CGameManager();
	}
	return spInstance;
}

// リセット
void CGameManager::Reset()
{
	Instance()->ChangeState(EGameState::eReset);
}
//
//// タイトル開始
//void CGameManager::TitleStart()
//{
//	//// 準備状態でなければ、ゲーム開始はしない
//	if (GameState() != EGameState::eReady) return;
//	
//	// タイトル開始
//	Instance()->ChangeState(EGameState::eTitle);
//}

// ゲーム開始
void CGameManager::GameStart()
{
	// 準備状態でなければ、ゲーム開始はしない
	//if (GameState() != EGameState::eTitle) return;
	if (GameState() != EGameState::eReady) return;

	// 最初のステージを読み込み
	CStageManager::LoadStage(Instance()->mStageNo);
	// ゲーム開始
	Instance()->ChangeState(EGameState::eGame);
}

// ゲーム再開
void CGameManager::GameRestart()
{
	Instance()->ChangeState(EGameState::eRestart);
}

// ステージクリア
void CGameManager::StageClear()
{
	Instance()->ChangeState(EGameState::eStageClear);
}

// ステージ失敗
void CGameManager::StageOver()
{
	Instance()->ChangeState(EGameState::eStageOver);
}

// ゲームオーバー
void CGameManager::GameOver()
{
	Instance()->ChangeState(EGameState::eGameOver);
}

// リザルト
void CGameManager::Result()
{
	Instance()->ChangeState(EGameState::eResult);
}

// ゲームクリア
void CGameManager::GameClear()
{
	Instance()->ChangeState(EGameState::eGameClear);
}

// ステージ1
void CGameManager::Stage1()
{
	Instance()->ChangeState(EGameState::eStage1);
}

// ステージ2
void CGameManager::Stage2()
{
	Instance()->ChangeState(EGameState::eStage2);
}

// ステージ3
void CGameManager::Stage3()
{
	Instance()->ChangeState(EGameState::eStage3);
}

// ステージ4
void CGameManager::Stage4()
{
	Instance()->ChangeState(EGameState::eStage4);
}

// 現在のゲームの状態を取得
EGameState CGameManager::GameState()
{
	return Instance()->mState;
}

// 現在のステージ番号を取得
int CGameManager::StageNo()
{
	return Instance()->mStageNo;
}

// 現在のゲームの状態を切り替え
void CGameManager::ChangeState(EGameState state)
{
	if (mState == state) return;
	mState = state;
	mStateStep = 0;
	mElapsedTime = 0.0f;
}

// 準備状態の更新処理
void CGameManager::UpdateReady()
{
}
//
//void CGameManager::UpdateTitle()
//{
//
//}

// ゲーム中の更新処理
void CGameManager::UpdateGame()
{
	CPlayer* player = CPlayer::Instance();

	if (player != nullptr)
	{
		if (player->IsStage1Clear() && !mResultSetUp)
		{
			mElapsedTime += Time::DeltaTime();
			if (mElapsedTime > 1.5f)
			{
				mElapsedTime = 0.0f;
				mResultSetUp = true;
				ChangeState(EGameState::eResult);
			}
		}
		else if (player->IsStage2Clear() && !mResultSetUp)
		{
			mElapsedTime += Time::DeltaTime();
			if (mElapsedTime > 1.5f)
			{
				mElapsedTime = 0.0f;
				mResultSetUp = true;
				ChangeState(EGameState::eResult);
			}
		}
		/*else if (player->IsStage3Clear() && !mResultSetUp)
		{
			mElapsedTime += Time::DeltaTime();
			if (mElapsedTime > 1.5f)
			{
				mElapsedTime = 0.0f;
				mResultSetUp = true;
				ChangeState(EGameState::eResult);
			}
		}*/
		else if (player->IsDeath() && !mResultSetUp)
		{
			mElapsedTime += Time::DeltaTime();
			if (mElapsedTime > 1.5f)
			{
				mElapsedTime = 0.0f;
				mResultSetUp = true;
				ChangeState(EGameState::eResult);
			}
		}
	}
	//CDebugPrint::Print("mEleapsedTime:%f\n", mElapsedTime);
	CResult::Instance()->Update();
}

// ゲーム再開の更新処理
void CGameManager::UpdateRestart()
{
	ChangeState(EGameState::eGame);
}

// ステージクリア時の更新処理
void CGameManager::UpdateStageClear()
{
	// ステージをクリアしたら、ステージ選択ステージに移行
	int stageNo = 0;
	if (mStageNo != stageNo)
	{
		CStageManager::LoadStage(stageNo);
		mStageNo = stageNo;
	}

	mResultSetUp = false;

	// ステージの読み込みが終われば、リザルトを表示
	ChangeState(EGameState::eGame);
}

// ステージ1の更新処理
void CGameManager::UpdateStage1()
{
	int stageNo = 1;
	if (mStageNo != stageNo)
	{
		CStageManager::LoadStage(stageNo);
		mStageNo = stageNo;
	}

	ScoreReset();
	CStageManager::LoadStage(mStageNo);

	mElapsedStageTime += Time::DeltaTime();
	if (mElapsedStageTime > 2.0f)
	{
		ChangeState(EGameState::eGame);
	}
}

// ステージ2の更新処理
void CGameManager::UpdateStage2()
{
	int stageNo = 2;
	if (mStageNo != stageNo)
	{
		CStageManager::LoadStage(stageNo);
		mStageNo = stageNo;
	}

	ScoreReset();

	mElapsedStageTime += Time::DeltaTime();
	if (mElapsedStageTime > 7.0f)
	{
		ChangeState(EGameState::eGame);
	}
}

// ステージ3の更新処理
void CGameManager::UpdateStage3()
{
	int stageNo = 3;
	if (mStageNo != stageNo)
	{
		CStageManager::LoadStage(stageNo);
		mStageNo = stageNo;
	}

	ScoreReset();

	mElapsedStageTime += Time::DeltaTime();
	if (mElapsedStageTime > 14.0f)
	{
		ChangeState(EGameState::eGame);
	}
}

// ステージ4の更新処理
void CGameManager::UpdateStage4()
{
	int stageNo = 4;
	if (mStageNo != stageNo)
	{
		CStageManager::LoadStage(stageNo);
		mStageNo = stageNo;
	}

	ScoreReset();

	mElapsedStageTime += Time::DeltaTime();
	if (mElapsedStageTime > 15.0f)
	{
		ChangeState(EGameState::eGame);
	}
}

// ステージ失敗
void CGameManager::UpdateStageOver()
{
	int stageNo = 0;
	if (mStageNo != stageNo)
	{
		CStageManager::LoadStage(stageNo);
		mStageNo = stageNo;
	}

	mResultSetUp = false;
	ScoreReset();

	ChangeState(EGameState::eGame);
}

// ゲームクリア時の更新処理
void CGameManager::UpdateGameClear()
{
	CSceneManager::Instance()->LoadScene(EScene::eStuffedRoll);
}

// ゲームオーバー時の更新処理
void CGameManager::UpdateGameOver()
{
	int stageNo = 0;
	if (mStageNo != stageNo)
	{
		CStageManager::LoadStage(stageNo);
		mStageNo = stageNo;
	}

	mResultSetUp = false;
	ScoreReset();
	ChangeState(EGameState::eGame);
}

// リザルト時の更新処理
void CGameManager::UpdateResult()
{
	// ゲームシーン内でリザルト処理を行う
}

// CGameManagerにリセット
void CGameManager::UpdateReset()
{
	mStageNo = 0;
	mStateStep = 0;
	mElapsedTime = 0.0f;
	mElapsedStageTime = 0.0f;
	mResultSetUp = false;
}

// スコア初期化処理
void CGameManager::ScoreReset()
{
	//CSoldier
	CVanguard::SetScore(0);
	CBlueMedal::SetScore(0);
	CMeat1::SetScore(0);
	CMeat2::SetScore(0);
	CMeat3::SetScore(0);
}

// 更新
void CGameManager::Update()
{
	// 現在の状態に合わせた更新処理を行う
	switch (mState)
	{
		// 準備中
	case EGameState::eReady:
		UpdateReady();
		break;
		// リセット
	case EGameState::eReset:
		UpdateReset();
		break;
	//	// タイトル中
	//case EGameState::eTitle:
	//	UpdateTitle();
	//	break;
		// ゲーム中
	case EGameState::eGame:
		UpdateGame();
		break;
		// ゲーム再開
	case EGameState::eRestart:
		UpdateRestart();
		break;
		// ステージクリア
	case EGameState::eStageClear:
		UpdateStageClear();
		break;
		// ステージ失敗
	case EGameState::eStageOver:
		UpdateStageOver();
		break;
		// ゲームクリア
	case EGameState::eGameClear:
		UpdateGameClear();
		break;
		// ゲームオーバー
	case EGameState::eGameOver:
		UpdateGameOver();
		break;
		// リザルト
	case EGameState::eResult:
		UpdateResult();
		break;
		// ステージ1
	case EGameState::eStage1:
		UpdateStage1();
		break;
		// ステージ2
	case EGameState::eStage2:
		UpdateStage2();
		break;
		// ステージ3
	case EGameState::eStage3:
		UpdateStage3();
		break;
		// ステージ4
	case EGameState::eStage4:
		UpdateStage4();
		break;
	}
}