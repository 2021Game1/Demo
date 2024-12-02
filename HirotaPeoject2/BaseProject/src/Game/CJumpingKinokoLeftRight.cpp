#include "CJumpingKinokoLeftRight.h"
#include "CStageManager.h"

// コンストラクタ
CJumpingKinokoLeftRight::CJumpingKinokoLeftRight(const CVector& pos, const CVector& scale, const CVector& rot,
	const CVector& move, float moveTime)
	: CJumpingKinokoMove(pos, scale, rot, move, moveTime, "JumpingKinoko3Color")
{
}

// デストラクタ
CJumpingKinokoLeftRight::~CJumpingKinokoLeftRight()
{
	CStageManager::RemoveTask(this);
}