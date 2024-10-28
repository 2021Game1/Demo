#include "CReflectionActionKinoko.h"
#include "CStageManager.h"

// コンストラクタ
CReflectionActionKinoko::CReflectionActionKinoko(const CVector& pos, const CVector& scale, const CVector& rot)
	: CReflectionKinoko(pos, scale, rot, "ReflectionKinoko")
{

}

// デストラクタ
CReflectionActionKinoko::~CReflectionActionKinoko()
{
	CStageManager::RemoveTask(this);
}