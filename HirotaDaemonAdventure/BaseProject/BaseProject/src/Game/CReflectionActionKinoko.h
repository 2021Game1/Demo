#ifndef CREFLECTIONACTIONKINOKO_H
#define CREFLECTIONACTIONKINOKO_H

#include "CReflectionKinoko.h"

// プレイヤーを跳ね返させるキノコ
class CReflectionActionKinoko : public CReflectionKinoko
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	CReflectionActionKinoko(const CVector& pos, const CVector& scale, const CVector& rot);

	// デストラクタ
	~CReflectionActionKinoko();
};
#endif