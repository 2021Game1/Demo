#pragma once
#include "CPaladin.h"
#include "CState.h"
#include "CInput.h"

class CPaladinIdle : public CState
{
public:
	CPaladinIdle(CPaladin* parent);

	void Start();
	void Update();
	//void Collision(CCollider* m, CCollider* o);
	//void Render();
private:
	CPaladin* mpParent;
	CInput mInput;
};