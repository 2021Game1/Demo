#ifndef CGAMEMANAGER_H
#define CGAMEMANAGER_H

#include "CTask.h"

class CResult;
class CResultAnnouncement;

//	ゲームの状態
enum class EGameState
{
	eReady,			// 準備中
	eReset,			// リセット
	eTitle,			// タイトル中
	eGame,			// ゲーム実行中
	eRestart,		// ゲーム再開
	eStageClear,	// ステージクリア
	eStageOver,		// ステージ失敗
	eResult,		// リザルト
	eGameClear,		// ゲームクリア
	eGameOver,		// ゲームオーバーz

	eStage1,		// ステージ1
	eStage2,		// ステージ2
	eStage3,		// ステージ3
	eStage4,		// ステージ4
};

//ゲームクラスを管理するクラス
class CGameManager : public CTask
{
public:
	//// タイトル開始
	//static void TitleStart();
	// ゲーム開始
	static void GameStart();
	// ゲーム再開
	static void GameRestart();
	// ステージクリア
	static void StageClear();
	// ステージ失敗
	static void StageOver();
	// ゲームオーバー
	static void GameOver();
	// リザルト
	static void Result();
	// ゲームクリアー
	static void GameClear();
	// ステージ1
	static void Stage1();
	// ステージ2
	static void Stage2();
	// ステージ3
	static void Stage3();
	// ステージ4
	static void Stage4();
	// リセット処理
	static void Reset();

	// フェードイン状態での更新処理

	// 現在のゲームの状態を取得
	static EGameState GameState();
	// 現在のステージ番号
	static int StageNo();
	// ステージ番号の設定
	static void SetStageNo(int stageNo) {
		Instance()->mStageNo = stageNo;
	}
	
	// 更新処理
	void Update();

private:

	static CGameManager* Instance();
	// 現在のゲームの状態を切り替え
	void ChangeState(EGameState state);

	// コンストラクタ
	CGameManager();
	// デストラクタ
	~CGameManager();

	// 準備状態の更新処理
	void UpdateReady();
	//// タイトル更新処理
	//void UpdateTitle();
	// ゲーム中の更新処理
	void UpdateGame();
	// ゲーム再開更新処理
	void UpdateRestart();
	// ステージクリア時の更新処理
	void UpdateStageClear();
	// ステージ失敗
	void UpdateStageOver();
	// ゲームクリア時の更新処理
	void UpdateGameClear();
	// ゲームオーバー時の更新処理
	void UpdateGameOver();
	// リザルト時の更新処理
	void UpdateResult();
	// ステージ1の更新処理
	void UpdateStage1();
	// ステージ2の更新処理
	void UpdateStage2();
	// ステージ3の更新処理
	void UpdateStage3();
	// ステージ4の更新処理
	void UpdateStage4();

	// リセット処理
	void UpdateReset();

	// スコア初期化処理
	void ScoreReset();

	static CGameManager* spInstance;
	int mStageNo;		// 現在のステージ番号
	EGameState mState;	// 現在のゲームの状態
	int mStateStep;		// 状態内でのステップ
	float mElapsedTime;	// 経過時間計測用
	float mElapsedStageTime;	// ステージ開始時の経過時間計測用

	bool mResultSetUp;

	CResultAnnouncement* mpResultUI;
};
#endif