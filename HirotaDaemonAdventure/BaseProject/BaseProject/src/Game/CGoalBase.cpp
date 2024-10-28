#include "CGoalBase.h"

CGoalBase::CGoalBase()
	: CObjectBase(ETag::eGoalObject,ETaskPriority::eBackground,0,ETaskPauseType::eGame)
{

}

CGoalBase::~CGoalBase()
{

}