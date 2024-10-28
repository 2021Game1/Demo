#include "CCircleNbFlRight2.h"
#include "CStageManager.h"

// コンストラクタ
CCircleNbFlRight2::CCircleNbFlRight2(const CVector& pos, const CVector& scale, const CVector& rot,
	float angle, float dist, float speed, bool rotateangle)
	: CCircleNbFl2(pos, scale, rot, angle, dist, speed, rotateangle
		, "Number2")
{
}

// デストラクタ
CCircleNbFlRight2::~CCircleNbFlRight2()
{
	CStageManager::RemoveTask(this);
}