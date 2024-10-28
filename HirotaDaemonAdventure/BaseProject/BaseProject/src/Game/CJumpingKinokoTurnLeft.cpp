#include "CJumpingKinokoTurnLeft.h"
#include "CStageManager.h"

// コンストラクタ
CJumpingKinokoTurnLeft::CJumpingKinokoTurnLeft(const CVector& pos, const CVector& scale, const CVector& rot,
	float angle, float dist, float speed, bool rotateangle)
	: CJumpingKinokoRotate(pos, scale, rot, angle, dist, speed, rotateangle
		, "JumpingKinoko2Color")
{
}

// デストラクタ
CJumpingKinokoTurnLeft::~CJumpingKinokoTurnLeft()
{
	CStageManager::RemoveTask(this);
}