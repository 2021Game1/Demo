#pragma once
#include "CObjectBase.h"

class CRideableObject : public CObjectBase
{
public:
	CRideableObject(ETaskPriority prio = ETaskPriority::eBackground);
	virtual ~CRideableObject();

protected:
};