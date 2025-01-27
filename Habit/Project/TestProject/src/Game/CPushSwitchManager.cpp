#include "CPushSwitchManager.h"
#include "CPushSwitch.h"
#include <assert.h>

// スイッチ管理クラスのインスタンス
CPushSwitchManager* CPushSwitchManager::spInstance = nullptr;

// スイッチ管理クラスの取得
CPushSwitchManager* CPushSwitchManager::Instance()
{
	return spInstance;
}

// コンストラクタ
CPushSwitchManager::CPushSwitchManager()
	: CTask(ETaskPriority::eDefault, 0, ETaskPauseType::eGame)
{
	assert(spInstance == nullptr);
	spInstance = this;

}

// デストラクタ
CPushSwitchManager::~CPushSwitchManager()
{
	spInstance = nullptr;
	// 先頭から最後まで繰り返し
	auto itr = mPushSwitchList.begin();
	auto end = mPushSwitchList.end();
	while (itr != end)
	{
		// 削除タスクを記憶しておく
		CTask* del = *itr;
		itr = mPushSwitchList.erase(itr);
		delete del;
	}
}

CPushSwitch* CPushSwitchManager::GetPushSwitch(size_t index) const
{
	if (index >= mPushSwitchList.size())
	{
		return nullptr;
	}
	return mPushSwitchList[index];
}

// 指定したスイッチをリストに追加
void CPushSwitchManager::AddSwitch(CPushSwitch* pushswitch)
{
	// リストの最後尾に追加
	mPushSwitchList.push_back(pushswitch);
}

// 指定したスイッチをリストから取り除く
void CPushSwitchManager::RemoveSwitch(CPushSwitch* pushswitch)
{
	// 最初を削除する
	// 最初+数値の場所を削除に変更する
	mPushSwitchList.erase(mPushSwitchList.begin());
}

