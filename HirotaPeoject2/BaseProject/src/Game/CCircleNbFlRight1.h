#ifndef CCIRCLENBFLRIGHT1_H
#define CCIRCLENBFLRIGHT1_H

#include "CCircleNbFl1.h"

// 円回転する回数で落ちる床(1回)
class CCircleNbFlRight1 : public CCircleNbFl1
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
	CCircleNbFlRight1(const CVector& pos, const CVector& scale, const CVector& rot,
		float angle, float dist, float speed, bool rotateangle);
	// デストラクタ
	~CCircleNbFlRight1();

	// 更新処理
	void Update();
};
#endif