#ifndef CPALADIN_H
#define CPALADIN_H
#include "CXCharacter.h"
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
	static CModelX sModel;
	CColliderCapsule mColBody;	//‘Ì
	CColliderCapsule mColSword;
	//CInput mInput;

	CState* mpState;
	CState* mpIdle;
	CState* mpWalk;
	CState* mpAttack;
	CState* mpJump;
	CState* mpRun;
};

#define VELOCITY 0.2f

#endif

