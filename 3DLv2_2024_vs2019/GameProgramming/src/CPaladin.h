#ifndef CPALADIN_H
#define CPALADIN_H

#include "CPaladinBase.h"
#include "CColliderCapsule.h"
#include "CInput.h"
#include "CState.h"

class CPaladin : public CXCharacter
{
public:
	CPaladin();
	~CPaladin();
	CPaladin(const CVector& pos, const CVector& rot, const CVector& scale);
	void Update();
	void Collision(CCollider* m, CCollider* o);
	void Collision();
	static CModelX* Model() { return &sModel; }
private:
	CState* mpState;
	void Jump();
	//void Idle();
	//void Walk();
	//void Attack();
	CColliderCapsule mColBody;	//‘Ì
	CColliderCapsule mColSword;
	static CModelX sModel;
	CInput mInput;

	CState* mpIdle;
	CState* mpWalk;
	CState* mpAttack;
};

#define VELOCITY 0.1f

#endif

