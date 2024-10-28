#ifndef CWEAPON_H
#define CWEAPON_H
#include "CObjectBase.h"
class CCharaBase;

// 武器クラス 
class CWeapon :public CObjectBase
{
public:
	CWeapon();
	virtual ~CWeapon();

	// 追従する行列の設定
	virtual void AttachMtx(const CMatrix* mtx);
	// 追従する行列を取得
	const CMatrix* GetAttachMtx() const;
	// 追従する行列の値を更新
	void UpdateAttachMtx();
	// 追従を解除
	void DetachMtx();

	//　攻撃開始
	virtual void AttackStart();

	// 攻撃終了
	virtual void AttackEnd();

	bool IsAttack();

	// 武器の所持キャラクターを設定
	void SetOwner(CCharaBase* owner);
	// 武器の所持キャラクターを取得
	CCharaBase* GetOwner() const;

protected:
	// 攻撃がヒットしたオブジェクトを追加
	void AddAttackHitObj(CObjectBase* obj);
	// すでに攻撃がヒットしているオブジェクトかどうか
	bool IsAttackHitObj(CObjectBase* obj) const;

	// 攻撃がヒット済みのオブジェクトリスト
	std::list<CObjectBase*> mAttackHitObjects;

	// アイテムの所持キャラクター
	CCharaBase* mOwner;

	// 攻撃中かどうか
	bool mIsAttack;
private:
	// 追従する行列のポインター
	const CMatrix* mpAttachMtx;
	// 追従する行列の現在地
	CMatrix mAttachCurrentMtx;

};
#endif