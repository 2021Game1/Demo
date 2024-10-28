#include "CWeaponEnemy.h"

CWeaponEnemy::CWeaponEnemy()
	:CObjectBase(ETag::eEnemyWeapon, ETaskPriority::eEnemyWeapon)
	, mpAttachMtx(nullptr)
{

}

CWeaponEnemy::~CWeaponEnemy()
{

}

// 追従する行列の設定
void CWeaponEnemy::AttachMtx(const CMatrix* mtx)
{
	mpAttachMtx = mtx;
}

// 追従する行列を取得
const CMatrix* CWeaponEnemy::GetAttachMtx() const
{
	if (mpAttachMtx == nullptr) return nullptr;
	return &mAttachCurrentMtx;
}

// 追従する行列の値を更新
void CWeaponEnemy::UpdateAttachMtx()
{
	if (mpAttachMtx == nullptr) return;
	// 現在の行列の状態をメンバ変数の行列へコピー
	mAttachCurrentMtx = *mpAttachMtx;
}

// 攻撃開始
void CWeaponEnemy::AttackStart()
{
	// すでに攻撃中であれば、サイド開始処理は実行しない
	if (mIsAttack) return;

	mIsAttack = true;
	mAttackHitObjects.clear();
}

// 攻撃終了
void CWeaponEnemy::AttackEnd()
{
	mIsAttack = false;
}

// 攻撃中かどうか
bool CWeaponEnemy::IsAttack()
{
	return mIsAttack;
}

// 武器の所持キャラクターを設定
void CWeaponEnemy::SetOwner(CCharaBase* owner)
{
	mOwner = owner;
}

// 武器の所持キャラクターを取得
CCharaBase* CWeaponEnemy::GetOwner() const
{
	return mOwner;
}

// 攻撃がヒットしたオブジェクトを追加
void CWeaponEnemy::AddAttackHitObj(CObjectBase* obj)
{
	mAttackHitObjects.push_back(obj);
}

// すでに攻撃がヒットしているオブジェクトかどうか
bool CWeaponEnemy::IsAttackHitObj(CObjectBase* obj) const
{
	// 既にリストに追加されているかを確認する
	auto find = std::find
	(
		mAttackHitObjects.begin(),
		mAttackHitObjects.end(),
		obj
	);
	return find != mAttackHitObjects.end();
}