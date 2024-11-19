#pragma once
#include "CCharacter3.h"
#include "CColliderMesh.h"

class CMap : public CCharacter3
{
public:
	CMap();
	void Update(){}
private:
	static CModel msModel;
	static bool msLoad;
	CColliderMesh mColMesh;
};
