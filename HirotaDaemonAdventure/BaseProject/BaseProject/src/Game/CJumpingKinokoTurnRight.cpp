#include "CJumpingKinokoTurnRight.h"
#include "CStageManager.h"

// コンストラクタ
CJumpingKinokoTurnRight::CJumpingKinokoTurnRight(const CVector& pos, const CVector& scale, const CVector& rot,
	float angle, float dist, float speed, bool rotateangle)
	: CJumpingKinokoRotate(pos, scale, rot, angle, dist, speed, rotateangle
		, "JumpingKinoko3Color")
{
}

// デストラクタ
CJumpingKinokoTurnRight::~CJumpingKinokoTurnRight()
{
	CStageManager::RemoveTask(this);
}