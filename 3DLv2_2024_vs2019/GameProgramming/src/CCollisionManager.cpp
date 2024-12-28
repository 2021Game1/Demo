#include "CCollisionManager.h"
#include "CCollider.h"

//マネージャのインスタンス
CCollisionManager* CCollisionManager::mpInstance = nullptr;

void CCollisionManager::Collision(CCollider* m, CTask* o, int low, int high)
{
	if (o == nullptr) return;
	if (low <= o->mPriority)
		Collision(m, o->mpLeft, low, high);
	if (low <= o->mPriority
		&& o->mPriority <= high)
	{
		if (m->mpParent && m != o)
			m->Parent()->Collision(m, (CCollider*)o);
	}
	if(o->mPriority <= high)
		Collision(m, o->mpRight, low, high);
}

void CCollisionManager::Collision(CCollider* c, int range)
{
	int low = c->mPriority - range;
	int high = low + range * 2;

	Collision(c, mRoot.mpLeft, low, high);

	return;

	//現在位置を先頭にする
	CCollider* task = (CCollider*)mHead.mpNext;
	//範囲まで読み飛ばし
	while (task->mpNext) {
		if (task->mPriority <= c->mPriority + range)
		{
			break;
		}
		//現在位置を次にする
		task = (CCollider*)task->mpNext;
	}
	//最後まできたら終了する
	while (task->mpNext) {
		if (task->mPriority <= c->mPriority - range)
		{
			break;
		}
		//親の衝突処理を呼び出す
		//自分の衝突処理
		if (c->mpParent && c != task)
			c->mpParent->Collision(c, task);
		//現在位置を次にする
		task = (CCollider*)task->mpNext;
	}
}

void CCollisionManager::Collision()
{
	//現在位置を先頭にする
	CCollider* task = (CCollider*)mHead.mpNext;
	//最後まできたら終了する
	while (task->mpNext) {
		//現在位置の次を求める
		CCollider* next = (CCollider*)task->mpNext;
		//次が0になったら終了
		while (next->mpNext) {
			//親の衝突処理を呼び出す
			//自分の衝突処理
			if (task->mpParent)
				task->mpParent->Collision(task, next);
			//相手の衝突処理
			if (next->mpParent)
				next->mpParent->Collision(next, task);
			//次を求める
			next = (CCollider*)next->mpNext;
		}
		//現在位置を次にする
		task = (CCollider*)task->mpNext;
	}
}
//インスタンスの取得
CCollisionManager* CCollisionManager::Instance()
{
	if (mpInstance == nullptr)
	{
		mpInstance = new CCollisionManager();
	}
	return mpInstance;
}
