#include "CInvincibleObjectBase.h"

CInvincibleObjectBase::CInvincibleObjectBase()
	: CObjectBase(ETag::eItemInvincible, ETaskPriority::eItem)
{
}

CInvincibleObjectBase::~CInvincibleObjectBase()
{

}

// 無敵アイテムがヒットしたオブジェクトを追加
void CInvincibleObjectBase::AddAttachHitObjInvincible(CObjectBase* obj)
{
	mInvincible.push_back(obj);
}


// 無敵開始
void CInvincibleObjectBase::InvincibleStart()
{
	mInvincible.clear();
}

// 無敵終了
void CInvincibleObjectBase::InvincibleEnd()
{

}


bool CInvincibleObjectBase::IsAttachHitObjInvincible(CObjectBase* obj) const
{
	// すでにリストに追加されているか確認をする
	auto find = std::find(
		mInvincible.begin(),
		mInvincible.end(),
		obj
	);
	return find != mInvincible.end();
}