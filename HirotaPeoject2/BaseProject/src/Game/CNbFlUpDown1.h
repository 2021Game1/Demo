#ifndef CNBFLUPDOWN1_H
#define CNBFLUPDOWN1_H

#include "CNbFlMove1.h"

// 上下に動く床(1回)
class CNbFlUpDown1 : public CNbFlMove1
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
	CNbFlUpDown1(const CVector& pos, const CVector& scale, const CVector& rot,
		const CVector& move, float moveTime);
	// デストラクタ
	~CNbFlUpDown1();
};
#endif