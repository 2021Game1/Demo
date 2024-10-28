#ifndef CNBFLUPDOWN2_H
#define CNBFLUPDOWN2_H

#include "CNbFlMove2.h"

// 上下に動く床(2回)
class CNbFlUpDown2 : public CNbFlMove2
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
	CNbFlUpDown2(const CVector& pos, const CVector& scale, const CVector& rot,
		const CVector& move, float moveTime);
	// デストラクタ
	~CNbFlUpDown2();
};
#endif