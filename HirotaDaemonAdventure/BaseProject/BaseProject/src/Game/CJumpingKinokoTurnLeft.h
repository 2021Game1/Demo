#ifndef CJUMPINGKINOKOTURNLEFT_H
#define CJUMPINGKINOKOTURNLEFT_H

#include "CJumpingKinokoRotate.h"

// プレイヤーを跳ねさせるキノコ(左円回転)
class CJumpingKinokoTurnLeft : public CJumpingKinokoRotate
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
	CJumpingKinokoTurnLeft(const CVector& pos, const CVector& scale, const CVector& rot,
		float angle, float dist, float speed, bool rotateangle);
	// デストラクタ
	~CJumpingKinokoTurnLeft();
};
#endif