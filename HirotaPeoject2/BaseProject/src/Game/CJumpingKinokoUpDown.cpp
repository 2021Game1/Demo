#include "CJumpingKinokoUpDown.h"
#include "CStageManager.h"

// コンストラクタ
CJumpingKinokoUpDown::CJumpingKinokoUpDown(const CVector& pos, const CVector& scale, const CVector& rot,
	const CVector& move, float moveTime)
	: CJumpingKinokoMove(pos, scale, rot, move, moveTime,
		"JumpingKinoko2Color")
{
}

// デストラクタ
CJumpingKinokoUpDown::~CJumpingKinokoUpDown()
{
	CStageManager::RemoveTask(this);
}