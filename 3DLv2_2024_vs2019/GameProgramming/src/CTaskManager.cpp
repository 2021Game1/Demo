#include "CTaskManager.h"

//タスクマネージャのインスタンス
CTaskManager* CTaskManager::mpInstance = nullptr;

//インスタンスの取得
CTaskManager* CTaskManager::Instance()
{
	//インスタンスが無ければ
	if (mpInstance == nullptr)
	{	//インスタンスを生成する
		mpInstance = new CTaskManager();
	}
	return mpInstance;
}

//デフォルトコンストラクタ
CTaskManager::CTaskManager()
{
	mHead.mpNext = &mTail;
	mTail.mpPrev = &mHead;
}

void CTaskManager::Delete(CTask* task)
{
	if (task == nullptr) return;
	Delete(task->mpPrev);
	Delete(task->mpNext);
	if (task->mEnabled == false)
		delete task;
}


void CTaskManager::Delete() 
{
	Delete(mRoot.mpPrev);

	return;

	//先頭から最後まで繰り返し
	CTask* task = mHead.mpNext;
	while (task->mpNext) {
		CTask* del = task;
		//次へ
		task = task->mpNext;
		//mEnabledがfalseなら削除
		if (del->mEnabled == false) {
			delete del;
		}
	}
}

CTask* CTaskManager::Max(CTask* task)
{
	if (task->mpNext == nullptr)
		return task;
	return Max(task->mpNext);
}

CTask* CTaskManager::Min(CTask* task)
{
	if (task->mpPrev == nullptr)
		return task;
	return Min(task->mpPrev);
}

//void CTaskManager::Remove(CTask* remove, CTask* task)
//{
//
//}

void CTaskManager::Move(CTask* dest, CTask* src)
{
	if (dest->mpParent->mpPrev == dest)
		dest->mpParent->mpPrev = src;
	if (dest->mpParent->mpNext == dest)
		dest->mpParent->mpNext = src;
	src->mpParent = dest->mpParent;

	if (dest->mpPrev != nullptr)
	{
		dest->mpPrev->mpParent = src;
	}
	src->mpPrev = dest->mpPrev;

	if (dest->mpNext != nullptr)
	{
		dest->mpNext->mpParent = src;
	}
	src->mpNext = dest->mpNext;
}


void CTaskManager::Remove(CTask* remove)
{
	if (remove->mpPrev != nullptr)
	{
		CTask* move = Max(remove->mpPrev);
		if (move != remove->mpPrev)
		{
			move->mpParent->mpNext = move->mpPrev;
			Move(remove, move);
		}
		else
		{
			remove->mpPrev = move->mpPrev;
			Move(remove, move);
		}
	}
	else if (remove->mpNext != nullptr)
	{
		CTask* move = Min(remove->mpNext);

		if (move != remove->mpNext)
		{
			move->mpParent->mpPrev = move->mpNext;
			Move(remove, move);
		}
		else
		{
			remove->mpNext = move->mpNext;
			Move(remove, move);
		}
	}
	else
	{
		if (remove->mpParent->mpPrev == remove)
			remove->mpParent->mpPrev = nullptr;
		if (remove->mpParent->mpNext == remove)
			remove->mpParent->mpNext = nullptr;
	}
	remove->mpParent = remove->mpPrev = remove->mpNext = nullptr;
}

CTaskManager::~CTaskManager() {
}

void CTaskManager::Add(CTask* parent, CTask* addTask)
{
	if (addTask->mPriority == parent->mPriority)
	{
		if (parent->mpPrev == nullptr)
		{
			addTask->mpParent = parent;
			parent->mpPrev = addTask;
		}
		else
		{
			addTask->mpPrev = parent->mpPrev;
			parent->mpPrev->mpParent = addTask;
			parent->mpPrev = addTask;
			addTask->mpParent = parent;
		}
	}
	else if (addTask->mPriority < parent->mPriority)
	{
		if (parent->mpPrev == nullptr)
		{
			addTask->mpParent = parent;
			parent->mpPrev = addTask;
		}
		else
		{
			Add(parent->mpPrev, addTask);
		}
	}
	else
	{
		if (parent->mpNext == nullptr)
		{
			addTask->mpParent = parent;
			parent->mpNext = addTask;
		}
		else
		{
			Add(parent->mpNext, addTask);
		}
	}
}

//リストに追加
//Add(タスクのポインタ)
void CTaskManager::Add(CTask* addTask)
{
	if (mRoot.mpPrev == nullptr)
	{
		mRoot.mpPrev = addTask;
		addTask->mpParent = &mRoot;
	}
	else
	{
		Add(mRoot.mpPrev, addTask);
	}

	return;

	/*

	//mHeadの次から検索
	CTask* task = mHead.mpNext;

	//優先度の大きい順に挿入する
	//挿入位置の検索（優先度が同じか大きくなった前）
	//mPriority>=0のこと
	while (addTask->mPriority < task->mPriority)
	{
		task = task->mpNext; //次へ
	}

	//addTaskの次をtask
	addTask->mpNext = task;
	//addTaskの前をtaskの前に
	addTask->mpPrev = task->mpPrev;
	//addTaskの前の次をaddTaskに
	addTask->mpPrev->mpNext = addTask;
	//taskの前をaddTaskに
	task->mpPrev = addTask;

	*/
}

void CTaskManager::Update(CTask * task) 
{
	if (task == nullptr) return;
	Update(task->mpPrev);
	task->Update();
	Update(task->mpNext);
}

//更新
void CTaskManager::Update() 
{

	Update(mRoot.mpPrev);

	return;

	//先頭から最後まで繰り返し
	//CTask* task = mHead.mpNext;
	//while (task->mpNext) {
	//	//更新処理を呼ぶ
	//	task->Update();
	//	//次へ
	//	task = task->mpNext;
	//}
}

void CTaskManager::Render(CTask* task)
{
	if (task == nullptr) return;
	Render(task->mpPrev);
	task->Render();
	Render(task->mpNext);
}

//描画
void CTaskManager::Render() {

	Render(mRoot.mpPrev);

	return;

	//最後から先頭まで繰り返し
	//CTask* task = mTail.mpPrev;
	//while (task->mpPrev) {
	//	//描画処理を呼ぶ
	//	task->Render();
	//	//次へ
	//	task = task->mpPrev;
	//}
}

void CTaskManager::Collision(CTask *task)
{
	if (task == nullptr) return;
	Collision(task->mpPrev);
	task->Collision();
	Collision(task->mpNext);
}

//衝突処理
void CTaskManager::Collision()
{
	Collision(mRoot.mpPrev);

	return;

	//先頭から最後まで繰り返し
	//CTask* task = mHead.mpNext;
	//while (task->mpNext) {
	//	//衝突処理を呼ぶ
	//	task->Collision();
	//	//次へ
	//	task = task->mpNext;
	//}
}
