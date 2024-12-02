#ifndef CNUMBERFLOOR2_H
#define CNUMBERFLOOR2_H

#include "CNumberFloorBase.h"

// 回数で落ちる床(2回)クラス
class CNumberFloor2 : public CNumberFloorBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">初期位置</param>
	/// <param name="scale">スケール値</param>
	CNumberFloor2(const CVector& pos, const CVector& scale, const CVector& rot,
		std::string modelPath = "Number2");

	// デストラクタ
	virtual ~CNumberFloor2();

	// プレイヤー待機状態
	virtual void UpdateWaiting();

	void Update() override;

protected:
	// 状態内のステップ
	int mStateStep;
	// 回転方向
	bool mRotateAngle;
};
#endif