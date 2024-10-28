#include "CMeatObjectBase.h"

CMeatObjectBase::CMeatObjectBase()
	: CObjectBase(ETag::eMeat, ETaskPriority::eItem)
	, mNumber(0)
{

}

CMeatObjectBase::~CMeatObjectBase()
{

}

// ナンバーを設定
void CMeatObjectBase::SetMeatNumber(int number)
{
	mNumber = number;
}

// ナンバーを取得
int CMeatObjectBase::GetMeatNumber() const
{
	return mNumber;
}
