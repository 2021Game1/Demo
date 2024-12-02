#ifndef CSTAGEBASE_H
#define CSTAGEBASE_H
#include "CTask.h"
#include <list>

// ステージのベースクラス
class CStageBase
{
public:
	// コンストラクタ
	CStageBase();
	// デストラクタ
	virtual ~CStageBase();

	// ステージ読み込み
	virtual void Load() = 0;
	// ステージ破棄
	virtual void Unload();

	// ステージ番号取得
	int GetStageNo() const;
	
	// 敵の配列の数を調べる処理
	virtual void CheckNumberEnemies();

	// 作成したタスクをリストに追加
	void AddTask(CTask* task);
	// 作成したタスクをリストから取り除く
	void RemoveTask(CTask* task);

	// 更新
	virtual void Update();

protected:
	int mStageNo;	// ステージ番号
	float mElapsedTime;

	// このステージで作成したタスクのリスト
	std::list<CTask*> mCreateTasks;
};
#endif