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
	Delete(task->mpLeft);
	Delete(task->mpRight);
	if (task->mEnabled == false)
		delete task;
}


void CTaskManager::Delete() 
{
	Delete(mRoot.mpLeft);

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
	if (task->mpRight == nullptr)
		return task;
	return Max(task->mpRight);
}

CTask* CTaskManager::Min(CTask* task)
{
	if (task->mpLeft == nullptr)
		return task;
	return Min(task->mpLeft);
}

//void CTaskManager::Remove(CTask* remove, CTask* task)
//{
//
//}

void CTaskManager::Move(CTask* dest, CTask* src)
{
	if (dest->mpParent->mpLeft == dest)
		dest->mpParent->mpLeft = src;
	if (dest->mpParent->mpRight == dest)
		dest->mpParent->mpRight = src;
	src->mpParent = dest->mpParent;

	if (dest->mpLeft != nullptr)
	{
		dest->mpLeft->mpParent = src;
	}
	src->mpLeft = dest->mpLeft;

	if (dest->mpRight != nullptr)
	{
		dest->mpRight->mpParent = src;
	}
	src->mpRight = dest->mpRight;
}


void CTaskManager::Remove(CTask* remove)
{
	if (remove->mpLeft != nullptr)
	{
		CTask* move = Max(remove->mpLeft);
		if (move != remove->mpLeft)
		{
			move->mpParent->mpRight = move->mpLeft;
			Move(remove, move);
		}
		else
		{
			remove->mpLeft = move->mpLeft;
			Move(remove, move);
		}
	}
	else if (remove->mpRight != nullptr)
	{
		CTask* move = Min(remove->mpRight);

		if (move != remove->mpRight)
		{
			move->mpParent->mpLeft = move->mpRight;
			Move(remove, move);
		}
		else
		{
			remove->mpRight = move->mpRight;
			Move(remove, move);
		}
	}
	else
	{
		if (remove->mpParent->mpLeft == remove)
			remove->mpParent->mpLeft = nullptr;
		if (remove->mpParent->mpRight == remove)
			remove->mpParent->mpRight = nullptr;
	}
	remove->mpParent = remove->mpLeft = remove->mpRight = nullptr;
}

CTaskManager::~CTaskManager() {
}

void CTaskManager::Add(CTask* parent, CTask* addTask)
{
	if (addTask->mPriority == parent->mPriority)
	{
		if (parent->mpLeft == nullptr)
		{
			addTask->mpParent = parent;
			parent->mpLeft = addTask;
		}
		else
		{
			addTask->mpLeft = parent->mpLeft;
			parent->mpLeft->mpParent = addTask;
			parent->mpLeft = addTask;
			addTask->mpParent = parent;
		}
	}
	else if (addTask->mPriority < parent->mPriority)
	{
		if (parent->mpLeft == nullptr)
		{
			addTask->mpParent = parent;
			parent->mpLeft = addTask;
		}
		else
		{
			Add(parent->mpLeft, addTask);
		}
	}
	else
	{
		if (parent->mpRight == nullptr)
		{
			addTask->mpParent = parent;
			parent->mpRight = addTask;
		}
		else
		{
			Add(parent->mpRight, addTask);
		}
	}
}

//リストに追加
//Add(タスクのポインタ)
void CTaskManager::Add(CTask* addTask)
{
	if (mRoot.mpLeft == nullptr)
	{
		mRoot.mpLeft = addTask;
		addTask->mpParent = &mRoot;
	}
	else
	{
		Add(mRoot.mpLeft, addTask);
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
	Update(task->mpLeft);
	task->Update();
	Update(task->mpRight);
}

//更新
void CTaskManager::Update() 
{

	Update(mRoot.mpLeft);

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
	Render(task->mpLeft);
	task->Render();
	Render(task->mpRight);
}

//描画
void CTaskManager::Render() {

	Render(mRoot.mpLeft);

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
	Collision(task->mpLeft);
	task->Collision();
	Collision(task->mpRight);
}

//衝突処理
void CTaskManager::Collision()
{
	Collision(mRoot.mpLeft);

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
