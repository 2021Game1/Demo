#include "CBlueMedalEvent.h"
#include "CBlueMedal.h"
#include "CObstacle.h"
#include "CStageManager.h"

// コンストラクタ
CBlueMedalEvent::CBlueMedalEvent()
	: CTask(ETaskPriority::eEvent, 0, ETaskPauseType::eGame, false, true)
	, mpObstacle(nullptr)
{

}

// デストラクタ
CBlueMedalEvent::~CBlueMedalEvent()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);
	// ブルーメダルがまだ存在していたら、
	// 各ブルーメダルから自信のイベントへのリンクを解除
	for (CBlueMedal* medal : mBlueMedals)
	{
		medal->SetEvent(nullptr);
	}

	// 障害物がまだ存在していたら
	// 障害物から自身のイベントへのリンクを解除
	if (mpObstacle != nullptr)
	{
		mpObstacle->SetEvent(nullptr);
	}
}

// ブルーメダルを追加
void CBlueMedalEvent::AddBlueMedal(CBlueMedal* medal)
{
	// ブルーメダルのリストに追加
	mBlueMedals.push_back(medal);
}

// ブルーメダルを獲得時に呼び出す
void CBlueMedalEvent::KilledBlueMedal(CBlueMedal* medal)
{
	// ブルーメダルのリスト内にメダルが存在しない場合は処理しない
	if (mBlueMedals.size() == 0) return;

	// ブルーメダルのリストから取り除く
	mBlueMedals.remove(medal);

	// 全てのブルーメダルを獲得したら、
	if (mBlueMedals.size() == 0)
	{
		if (mpObstacle != nullptr)
		{
			mpObstacle->Death();
		}
	}
}

// 障害物を設定
void CBlueMedalEvent::SetObstacle(CObstacle* obj)
{
	mpObstacle = obj;
}

// 障害物が削除されるときに呼び出す
void CBlueMedalEvent::KilledObstacle(CObstacle* obj)
{
	mpObstacle = nullptr;

	// 障害物の削除まで終われば、
	// 管理クラスは不要なので削除しておく
	Kill();
}

// 更新
void CBlueMedalEvent::Update()
{

}