#ifndef CREFLECTIONLEFTRIGHTKINOKO_H
#define CREFLECTIONLEFTRIGHTKINOKO_H

#include "CReflectionMove.h"

// プレイヤーを跳ね返させるキノコ(左右)
class CReflectionLeftRightKinoko : public CReflectionMove
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// <param name="move">移動距離</param>
	/// <param name="moveTime">移動時間</param>
	CReflectionLeftRightKinoko(const CVector& pos, const CVector& scale, const CVector& rot,
		const CVector& move, float moveTime);
	// デストラクタ
	~CReflectionLeftRightKinoko();
};
#endif