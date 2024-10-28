#ifndef CINVINCIBLEOBJECTBASE_H
#define CINVINCIBLEOBJECTBASE_H
#include "CObjectBase.h"
class CCharaBase;

// 無敵アイテムオブジェのベースクラス
class CInvincibleObjectBase : public CObjectBase
{
public:
	CInvincibleObjectBase();
	virtual ~CInvincibleObjectBase();

	// 無敵開始
	virtual void InvincibleStart();
	// 無敵終了
	virtual void InvincibleEnd();

protected:
	// 無敵アイテムがヒットしたオブジェクトを追加
	void AddAttachHitObjInvincible(CObjectBase* obj);
	// すでに無敵アイテムがヒットしているオブジェクトかどうか
	bool IsAttachHitObjInvincible(CObjectBase* obj) const;

	// 無敵アイテムにヒット済みオブジェクトリスト
	std::list<CObjectBase*> mInvincible;
};
#endif