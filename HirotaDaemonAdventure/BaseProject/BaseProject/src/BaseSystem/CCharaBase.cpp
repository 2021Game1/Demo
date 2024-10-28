#include "CCharaBase.h"

CCharaBase::CCharaBase(ETag tag, ETaskPriority prio, int sortOrder, ETaskPauseType pause)
	: CObjectBase(tag, prio, sortOrder, pause)
{
}

CCharaBase::~CCharaBase()
{
}

// 被ダメージ処理
void CCharaBase::TakeDamage(int damage)
{
	
}

// 回復処理
void CCharaBase::TakeRecovery(int recovery)
{

}

void CCharaBase::TakeInvincible()
{
}

void CCharaBase::TakeAttackPotion(int attack)
{
}


// 最大ステータスを取得
const CharaStatus& CCharaBase::MaxStatus() const
{
	return mCharaMaxStatus;
}

// 現在ステータスを取得
const CharaStatus& CCharaBase::Status() const
{
	return mCharaStatus;
}
