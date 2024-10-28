#ifndef CNBFLUPDOWN3_H
#define CNBFLUPDOWN3_H

#include "CNbFlMove3.h"

// 上下に動く床(3回)
class CNbFlUpDown3 : public CNbFlMove3
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
	CNbFlUpDown3(const CVector& pos, const CVector& scale, const CVector& rot,
		const CVector& move, float moveTime);
	// デストラクタ
	~CNbFlUpDown3();
};
#endif