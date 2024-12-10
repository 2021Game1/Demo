#pragma once
#include "CPaladin.h"
#include "CInput.h"

class CPaladinAttack : public CState
{
public:
	CPaladinAttack(CPaladin* parent);

	void Start();
	void Update();
	//void Collision(CCollider* m, CCollider* o);
	//void Render();
private:
	CPaladin* mpParent;
	CInput mInput;
};