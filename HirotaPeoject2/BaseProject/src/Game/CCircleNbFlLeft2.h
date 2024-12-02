#ifndef CCIRCLENBFLLEFT2_H
#define CCIRCLENBFLLEFT2_H

#include "CCircleNbFl2.h"

// 円回転する回数で落ちる床(2回)
class CCircleNbFlLeft2 : public CCircleNbFl2
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// <param name="angle">角度</param>
	/// <param name="dist">距離</param>
	/// <param name="speed">速度</param>
	/// <param name="rotateangle">回転方向を決める</param>
	CCircleNbFlLeft2(const CVector& pos, const CVector& scale, const CVector& rot,
		float angle, float dist, float speed, bool rotateangle);
	// デストラクタ
	~CCircleNbFlLeft2();
};
#endif