#include "CMap.h"

//#define CMAP_GROUND "res\\plane.obj", "res\\plane.mtl"
//#define CMAP_GROUND "res\\sky.obj", "res\\sky.mtl"
#define CMAP_GROUND "res\\UnderGround\\passage2.obj","res\\UnderGround\\passage2.mtl"

//#define POSITION 0.0f,1.0f,0.0f
//#define POSITION 0.0f,-12.0f,0.0f
#define POSITION 45.0f,12.0f,0.0f
#define ROTATION 0.0f,0.0f,0.0f
#define SCALE 1.0f,1.0f,1.0f

CModel CMap::msModel;
bool CMap::msLoad = true;


CMap::CMap()
{
	if (msLoad)
	{
		msLoad = false;
		msModel.Load(CMAP_GROUND);
	}
	Model(&msModel);
	Position(CVector(POSITION));
	Rotation(CVector(ROTATION));
	Scale(CVector(SCALE));
	CTransform::Update();
	mColMesh.Set(this, &mMatrix, &msModel);
}
