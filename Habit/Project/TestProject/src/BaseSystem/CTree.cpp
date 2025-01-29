#include "CTree.h"
#include "CVector.h"
#include "CCollisionManager.h"

void CTree::Priority(const CVector& v)
{
	mPriority = v.Length();
	CCollisionManager::Instance()->Remove(this);
	CCollisionManager::Instance()->Add(this);
}

void CTree::Priority(const CVector& v, const CVector& v2)
{
	mPriority = ((v + v2)*0.5).Length();
	CCollisionManager::Instance()->Remove(this);
	CCollisionManager::Instance()->Add(this);
}

void CTree::Priority(const CVector& v, const CVector& v2, const CVector& v3)
{
	mPriority = ((v + v2 + v3) * 0.333333).Length();
	CCollisionManager::Instance()->Remove(this);
	CCollisionManager::Instance()->Add(this);
}
