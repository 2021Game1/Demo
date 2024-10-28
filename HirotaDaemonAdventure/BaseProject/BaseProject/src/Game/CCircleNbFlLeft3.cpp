#include "CCircleNbFlLeft3.h"
#include "CStageManager.h"

// コンストラクタ
CCircleNbFlLeft3::CCircleNbFlLeft3(const CVector& pos, const CVector& scale, const CVector& rot,
	float angle, float dist, float speed, bool rotateangle)
	: CCircleNbFl3(pos, scale, rot, angle, dist, speed, rotateangle
		, "Number3")
{
}

// デストラクタ
CCircleNbFlLeft3::~CCircleNbFlLeft3()
{
	CStageManager::RemoveTask(this);
}