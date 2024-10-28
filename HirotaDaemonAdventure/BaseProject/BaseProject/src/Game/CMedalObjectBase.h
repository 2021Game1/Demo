#ifndef CMEDALOBJECTBASE_H
#define CMEDALOBJECTBASE_H
#include "CObjectBase.h"
class CCharaBase;

class CMedalObjectBase : public CObjectBase
{
public:
	CMedalObjectBase(ETaskPriority prio = ETaskPriority::eMedal);
	virtual ~CMedalObjectBase();
	// メダル取得
	virtual void MedalStart();
	// メダル取得終了
	virtual void MedalEnd();
protected:
	// メダルがヒットしたオブジェクトを追加
	void AddAttachHitMedalObj(CObjectBase* obj);
	// すでにメダルにヒットしているオブジェクトかどうか
	bool IsAttachHitMedalObj(CObjectBase* obj) const;

	// メダルアイテムヒット済みのオブジェクトリスト
	std::list<CObjectBase*> mMedalObjects;
};
#endif