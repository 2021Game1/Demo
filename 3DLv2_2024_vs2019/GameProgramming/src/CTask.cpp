#include "CTask.h"
#include "CTaskManager.h"

CTask::CTask()
	: mpNext(nullptr), mpPrev(nullptr), mPriority(0), mEnabled(true)
{
	//CTaskManager::Instance()->Add(this);
}

CTask::~CTask()
{
	//CTaskManager::Instance()->Remove(this);
}
