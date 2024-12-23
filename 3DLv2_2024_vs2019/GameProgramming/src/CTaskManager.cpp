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
	: mpRoot(&mHead)
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
	Delete(mpRoot);

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

void CTaskManager::Remove(CTask* task)
{
	if (task->mpLeft != nullptr)
	{
		CTask* max = Max(task);
		max->mpParent->mpRight = max->mpLeft;
		if (task->mpParent->mpLeft == task)
			task->mpParent->mpLeft = max;
		if (task->mpParent->mpRight == task)
			task->mpParent->mpRight = max;
	}
	else if (task->mpRight != nullptr)
	{
		CTask* min = Min(task);
		min->mpParent->mpLeft = min->mpRight;
		if (task->mpParent->mpLeft == task)
			task->mpParent->mpLeft = min;
		if (task->mpParent->mpRight == task)
			task->mpParent->mpRight = min;
	}
	else
	{
		if (task->mpParent->mpLeft == task)
			task->mpParent->mpLeft = nullptr;
		if (task->mpParent->mpRight == task)
			task->mpParent->mpRight = nullptr;
	}

	////タスクの前の次を、タスクの次にする
	//task->mpPrev->mpNext = task->mpNext;
	////タスクの次の前を、タスクの前にする
	//task->mpNext->mpPrev = task->mpPrev;
}

CTaskManager::~CTaskManager() {
}

void CTaskManager::Add(CTask* parent, CTask* addTask)
{
	if (addTask->mPriority <= parent->mPriority)
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
	//if (mpRoot == nullptr)
	//{
	//	mpRoot = addTask;
	//	return;
	//}
	//else
	//{
		Add(mpRoot, addTask);
	//}

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

	Update(mpRoot);

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

	Render(mpRoot);

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
	Collision(mpRoot);

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
