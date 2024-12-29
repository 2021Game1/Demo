#ifndef CCOLLISIONMANAGER_H
#define CCOLLISIONMANAGER_H

//#include "CTaskManager.h"
#include "CCollider.h"

//衝突処理範囲より離れているコライダは衝突処理しない
#define COLLISIONRANGE 30

class CCollisionManager// : public CTaskManager
{
public:

	//リストに追加
	//Add(タスクのポインタ)
	void Add(CTask* add);
	void Add(CTask* parent, CTask* add);

	//リストから削除
	//Remove(タスクのポインタ)
	void Remove(CTask* remove);
	//最大値のノードの取得
	CTask* Max(CTask* task);
	//最小値のノードの取得
	CTask* Min(CTask* task);
	//srcをdestへ移動する
	void Move(CTask* dest, CTask* src);

	//描画
	void Render();
	void Render(CTask* task);

	//low～highの間であれば衝突処理を行う
	void Collision(CCollider* m, CTask* o, int low, int high);
	//衝突処理
	//Collision(コライダ, 範囲)
	//コライダの優先度+範囲～優先度-範囲までのコライダと衝突判定を実行する
	void Collision(CCollider* c, int range);
	//衝突処理
	void Collision();
	//インスタンスの取得
	static CCollisionManager* Instance();
private:
	//デフォルトコンストラクタ
	CCollisionManager() {};
	CTask mRoot;//先頭タスク
	//マネージャのインスタンス
	static CCollisionManager* mpInstance;
};

#endif
