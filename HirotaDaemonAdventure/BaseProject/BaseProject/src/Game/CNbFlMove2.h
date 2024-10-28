#ifndef CNBFLMOVE2_H
#define CNBFLMOVE2_H

#include "CNumberFloor2.h"

// 動く床(2回)
class CNbFlMove2 : public CNumberFloor2
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
	CNbFlMove2(const CVector& pos, const CVector& scale, const CVector& rot,
		const CVector& move, float moveTime,
		std::string modelPath);
	// デストラクタ
	virtual ~CNbFlMove2();

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