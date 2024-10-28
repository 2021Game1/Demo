#include "CReflectionLeftRightKinoko.h"

// コンストラクタ
CReflectionLeftRightKinoko::CReflectionLeftRightKinoko(const CVector& pos, const CVector& scale, const CVector& rot,
	const CVector& move, float moveTime)
	: CReflectionMove(pos, scale, rot, move, moveTime, "ReflectionKinoko")
{
}

// デストラクタ
CReflectionLeftRightKinoko::~CReflectionLeftRightKinoko()
{
}