#ifndef CHIGHKINOKO_H
#define CHIGHKINOKO_H

#include "CObjectBase.h"

class CMeat1Event;

// ハイジャンプキノコのベースクラス
class CHighKinoko : public CObjectBase
{
public:
	// コンストラクタ
	CHighKinoko(ETag tag = ETag::eNone);
	// デストラクタ
	virtual ~CHighKinoko();

	// 肉を取得時に呼び出す
	virtual void Alpha();

	// 管理された居るイベントを設定
	void SetEvent(CMeat1Event* ev);

private:
	// 管理されているイベントのポインター
	CMeat1Event* mpEvent;
};
#endif