#include "CTutorialManager.h"

// インスタンス
CTutorialManager* CTutorialManager::mpInstance = nullptr;

CTutorialManager* CTutorialManager::Instance()
{
	// インスタンスが無ければ、新しく生成する
	if (mpInstance == nullptr)
	{
		mpInstance = new CTutorialManager();
	}
	return mpInstance;
}

// コンストラクタ
CTutorialManager::CTutorialManager()
	: CTask(ETaskPriority::eEvent, 0, ETaskPauseType::eGame, false, true)
	, mIsEnd(false)
{
}

// デストラクタ
CTutorialManager::~CTutorialManager()
{
	//SAFE_DELETE(mpInstance);
	SAFE_DELETE_ARRAY(mpInstance);
}

bool CTutorialManager::IsEndImage()
{
	return mIsEnd;
}