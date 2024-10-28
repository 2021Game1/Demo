#ifndef CITEMOBJECTBASE_H
#define CITEMOBJECTBASE_H
#include "CObjectBase.h"
class CCharaBase;

// オブジェクト継承
// 回復アイテムオブジェのクラス
class CItemObjectBase : public CObjectBase
{
public:
	CItemObjectBase();
	virtual ~CItemObjectBase();

	// 回復開始
	virtual void RecoverStart();
	// 回復終了
	virtual void RecoverEnd();

	// 回復薬で回復開始
	virtual void HealingStart();
	// 回復薬で回復終了
	virtual void HealingEnd();

protected:
	// 回復がヒットしたオブジェクトを追加
	void AddAttachHitObj(CObjectBase* obj);
	// すでに回復がヒットしているオブジェクトかどうか
	bool IsAttachHitObj(CObjectBase* obj) const;

	// 回復アイテムヒット済みのオブジェクトリスト
	std::list<CObjectBase*> mRecoveryObjects;

	// 回復薬がヒットしたオブジェクトを追加
	void AddAttachHitHealingObj(CObjectBase* obj);
	// すでに回復薬を使ったオブジェクトかどうか
	bool IsAttachHitHealingObj(CObjectBase* obj) const;

	// 回復薬ヒット済みのオブジェクトリスト
	std::list<CObjectBase*> mHealingObjects;
};
#endif