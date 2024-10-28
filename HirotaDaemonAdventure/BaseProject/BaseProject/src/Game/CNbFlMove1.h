#ifndef CNBFLMOVE1_H
#define CNBFLMOVE1_H

#include "CNumberFloor1.h"

// 動く床(1回)
class CNbFlMove1 : public CNumberFloor1
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
	CNbFlMove1(const CVector& pos, const CVector& scale, const CVector& rot,
		const CVector& move, float moveTime,
		std::string modelPath);
	// デストラクタ
	virtual ~CNbFlMove1();

	// 更新処理
	void Update() override;

private:
	// 移動距離
	CVector mMoveVec;
	// 元の位置
	CVector mDefaultPos;

	// 移動時間計測用
	float mMoveElapsedTime;
	// 移動時間
	float mMoveTime;
};
#endif