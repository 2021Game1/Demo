#pragma once
#include "CXCharacter.h"
#include "CState.h"

class CPaladinBase : public CXCharacter
{
public:
	CPaladinBase();
	~CPaladinBase();
	CPaladinBase(const CVector& pos, const CVector& rot, const CVector& scale);
	void Update();
	static CModelX* Model() { return &sModel; }
protected:
	static CModelX sModel;

	CState* mpState;
	CState* mpIdle;
	CState* mpWalk;
	CState* mpAttack;
};

#define VELOCITY 0.1f