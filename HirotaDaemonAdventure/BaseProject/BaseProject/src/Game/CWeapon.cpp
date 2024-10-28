#include "CWeapon.h"

CWeapon::CWeapon()
	: CObjectBase(ETag::eWeapon, ETaskPriority::eWeapon)
	, mpAttachMtx(nullptr)
{
}

CWeapon::~CWeapon()
{

}

// 追従する行列の設定
void CWeapon::AttachMtx(const CMatrix* mtx)
{
	mpAttachMtx = mtx;
}

// 追従する行列を取得
const CMatrix* CWeapon::GetAttachMtx() const
{
	if (mpAttachMtx == nullptr) return nullptr;
	return &mAttachCurrentMtx;
}

// 追従する行列の値を更新
void CWeapon::UpdateAttachMtx()
{
	if (mpAttachMtx == nullptr) return;
	// 現在の行列の状態をメンバ変数の行列へコピー
	mAttachCurrentMtx = *mpAttachMtx;
}

// 追従を解除
void CWeapon::DetachMtx()
{
	if (mpAttachMtx != nullptr)
	{
		mpAttachMtx = nullptr; // 解除後にnullptrに設定
	}
}

// 攻撃開始
void CWeapon::AttackStart()
{
	// すでに攻撃中であれば、サイド開始処理は実行しない
	if (mIsAttack) return;

	mIsAttack = true;
	mAttackHitObjects.clear();
}

// 攻撃終了
void CWeapon::AttackEnd()
{
	mIsAttack = false;
}

// 攻撃中かどうか
bool CWeapon::IsAttack()
{
	return mIsAttack;
}

// 武器の所持キャラクターを設定
void CWeapon::SetOwner(CCharaBase* owner)
{
	mOwner = owner;
}

// 武器の所持キャラクターを取得
CCharaBase* CWeapon::GetOwner() const
{
	return mOwner;
}

// 攻撃がヒットしたオブジェクトを追加
void CWeapon::AddAttackHitObj(CObjectBase* obj)
{
	mAttackHitObjects.push_back(obj);
}

// すでに攻撃がヒットしているオブジェクトかどうか
bool CWeapon::IsAttackHitObj(CObjectBase* obj) const
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