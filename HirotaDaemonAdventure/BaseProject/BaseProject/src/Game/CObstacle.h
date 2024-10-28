#ifndef COBSTACLE_H
#define COBSTACLE_H
#include "CObjectBase.h"

class CBlueMedalEvent;

// 障害物のベースクラス
class CObstacle : public CObjectBase
{
public:
	// コンストラクタ
	CObstacle(ETag tag = ETag::eNone);
	// デストラクタ
	virtual ~CObstacle();

	// 削除時に呼び出す(継承先で実装)
	virtual void Death();

	// 管理されているイベントを設定
	void SetEvent(CBlueMedalEvent* ev);

private:
	// 管理されているイベントのポインター
	CBlueMedalEvent* mpEvent;
};
#endif