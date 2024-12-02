#include "CObstacle.h"
#include "CBlueMedalEvent.h"

// コンストラクタ
CObstacle::CObstacle(ETag tag)
	: CObjectBase(tag, ETaskPriority::eObstacle, 0, ETaskPauseType::eGame)
	, mpEvent(nullptr)
{

}

// デストラクタ
CObstacle::~CObstacle()
{
	// 管理されているイベントが設定されていたら、
	if (mpEvent != nullptr)
	{
		// 自信を削除時に、管理イベントへ伝える
		mpEvent->KilledObstacle(this);
	}
}

// 管理されているイベントを設定
void CObstacle::SetEvent(CBlueMedalEvent* ev)
{
	mpEvent = ev;
}

// 削除に呼び出す
void CObstacle::Death()
{

}