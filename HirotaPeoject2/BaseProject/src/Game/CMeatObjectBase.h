#ifndef CMEATOBJECTBASE_H
#define CMEATOBJECTBASE_H

#include "CObjectBase.h"

class CCharaBase;

// オブジェクト継承
// 肉アイテムオブジェのクラス
class CMeatObjectBase : public CObjectBase
{
public:
	CMeatObjectBase();
	virtual ~CMeatObjectBase();

	// ナンバーを設定
	void SetMeatNumber(int number);
	// ナンバーを取得
	int GetMeatNumber() const;

private:
	int mNumber;
};
#endif