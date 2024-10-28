#include "CItemObjectBase.h"

CItemObjectBase::CItemObjectBase()
	: CObjectBase(ETag::eItemRecover, ETaskPriority::eItem)
{
}

CItemObjectBase::~CItemObjectBase()
{

}

// 回復がヒットしたオブジェクトを追加
void CItemObjectBase::AddAttachHitObj(CObjectBase* obj)
{
	mRecoveryObjects.push_back(obj);
}

// 回復開始
void CItemObjectBase::RecoverStart()
{
	mRecoveryObjects.clear();
}

// 回復終了
void CItemObjectBase::RecoverEnd()
{

}

bool CItemObjectBase::IsAttachHitObj(CObjectBase* obj) const
{
	// すでにリストに追加されているか確認をする
	auto find = std::find
	(
		mRecoveryObjects.begin(),
		mRecoveryObjects.end(),
		obj
	);
	return find != mRecoveryObjects.end();
}


void CItemObjectBase::HealingStart()
{
	mHealingObjects.clear();
}

void CItemObjectBase::HealingEnd()
{
}

void CItemObjectBase::AddAttachHitHealingObj(CObjectBase* obj)
{
	mHealingObjects.push_back(obj);
}

bool CItemObjectBase::IsAttachHitHealingObj(CObjectBase* obj) const
{
	// すでにリストに追加されているか確認をする
	auto find = std::find
	(
		mHealingObjects.begin(),
		mHealingObjects.end(),
		obj
	);
	return find != mHealingObjects.end();
}