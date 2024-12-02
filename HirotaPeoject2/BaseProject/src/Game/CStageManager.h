#ifndef CSTAGEMANAGER_H
#define CSTAGEMANAGER_H

class CStageBase;

// ステージの管理クラス
class CStageManager
{
public:
	// ステージ読み込み
	static void LoadStage(int no);
	// 現在のステージ破棄
	static void UnloadStage();
	// 作成したタスクをリストに追加
	static void AddTask(CTask* task);
	// 作成したタスクをリストから取り除く
	static void RemoveTask(CTask* task);
	// 現在のステージを更新
	static void Update();

private:
	// コンストラクタ
	CStageManager();
	// デストラクタ
	~CStageManager();

	// ステージマネージャのインスタンス
	static CStageManager* spInstance;
	// 現在のステージ
	static CStageBase* spCurrentStage;
};
#endif