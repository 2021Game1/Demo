#include "CHighKinoko.h"
#include "CMeat1Event.h"

// コンストラクタ
CHighKinoko::CHighKinoko(ETag tag)
	: CObjectBase(tag, ETaskPriority::eKinoko, 0, ETaskPauseType::eGame)
	, mpEvent(nullptr)
{

}

// デストラクタ
CHighKinoko::~CHighKinoko()
{
	// 管理されているイベントが設定されていたら、
	if (mpEvent != nullptr)
	{
		// 自身を削除時に、管理イベントへ伝える
		mpEvent->KilledHighKinoko(this);
	}
}

// 肉を取得時に呼び出す
void CHighKinoko::Alpha()
{
}

// 管理されているイベントを設定
void CHighKinoko::SetEvent(CMeat1Event* ev)
{
	mpEvent = ev;
}

// 削除時に呼び出す
// 必要だったら