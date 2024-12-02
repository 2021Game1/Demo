#ifndef CREFLECTIONKINOKO_H
#define CREFLECTIONKINOKO_H

#include "CReflectionObject.h"

// プレイヤーを跳ね返させるキノコ(ベース)
class CReflectionKinoko : public CReflectionObject
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// <param name="modelPath">モデルパス</param>
	CReflectionKinoko(const CVector& pos, const CVector& scale, const CVector& rot,
		std::string modelPath = "JumpingKinoko");

	// デストラクタ
	virtual ~CReflectionKinoko();
protected:
};
#endif