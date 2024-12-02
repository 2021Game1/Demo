#ifndef CNUMBERFLOOR1_H
#define CNUMBERFLOOR1_H

#include "CNumberFloorBase.h"

// 回数で落ちる床(1回)クラス
class CNumberFloor1 : public CNumberFloorBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">初期位置</param>
	/// <param name="scale">スケール値</param>
	CNumberFloor1(const CVector& pos, const CVector& scale, const CVector& rot,
		std::string modelPath = "Number1");

	// デストラクタ
	virtual ~CNumberFloor1();

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