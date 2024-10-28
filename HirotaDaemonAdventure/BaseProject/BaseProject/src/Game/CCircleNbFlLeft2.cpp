#include "CCircleNbFlLeft2.h"
#include "CStageManager.h"

// コンストラクタ
CCircleNbFlLeft2::CCircleNbFlLeft2(const CVector& pos, const CVector& scale, const CVector& rot,
	float angle, float dist, float speed, bool rotateangle)
	: CCircleNbFl2(pos, scale, rot, angle, dist, speed, rotateangle
		, "Number2")
{
}

// デストラクタ
CCircleNbFlLeft2::~CCircleNbFlLeft2()
{
	CStageManager::RemoveTask(this);
}