#ifndef CATTACKOBJECTBASE_H
#define CATTACKOBJECTBASE_H
#include "CObjectBase.h"
class CCharaBase;

// オブジェクト継承
// 攻撃力アップオブジェのクラス
class CAttackObjectBase : public CObjectBase
{
public:
	CAttackObjectBase();
	~CAttackObjectBase();

	// 攻撃力上昇開始
	virtual void AttackStart();
	// 攻撃力上昇終了
	virtual void AttackEnd();
protected:
	// 攻撃力アップアイテムがヒットしたオブジェクトを追加
	void AddAttachHitAttackObj(CObjectBase* obj);
	// すでに攻撃力アップアイテムがヒットしているオブジェクトか
	bool IsAttachHitAttackObj(CObjectBase* obj) const;

	// 攻撃力アップ済みのオブジェクトリスト
	std::list<CObjectBase*> mAttackObjects;
};
#endif