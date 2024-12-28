#ifndef CTASKMANAGER_H
#define CTASKMANAGER_H
//タスククラスのインクルード
#include "CTask.h"

/*
タスクマネージャ
タスクリストの管理
*/
class CTaskManager {
public:
	void Collision();
	void Collision(CTask* task);
	//インスタンスの取得
	static CTaskManager* Instance();
	//タスクの削除
	void Delete();
	void Delete(CTask* task);

	//リストから削除
	//Remove(タスクのポインタ)
	void Remove(CTask* task);
	//void Remove(CTask* remove, CTask* task);

	//デストラクタ
	virtual ~CTaskManager();
	//リストに追加
	//Add(タスクのポインタ)
	void Add(CTask* addTask);
	void Add(CTask* parent, CTask* addTask);

	//更新
	void Update();
	void Update(CTask* task);

	//描画
	void Render();
	void Render(CTask* task);

	CTask* Max(CTask* task);
	CTask* Min(CTask* task);

	void Move(CTask* dest, CTask* src);

protected:
	//デフォルトコンストラクタ
	CTaskManager();
	CTask mHead;//先頭タスク
	CTask mTail;//最終タスク
	CTask mRoot; //Rootノード
private:
	//タスクマネージャのインスタンス
	static CTaskManager* mpInstance;
};

#endif
