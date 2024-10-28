#ifndef CNUMBERFLOOR3_H
#define CNUMBERFLOOR3_H

#include "CNumberFloorBase.h"

// 回数で落ちる床(3回)クラス
class CNumberFloor3 : public CNumberFloorBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">初期位置</param>
	/// <param name="scale">スケール値</param>
	CNumberFloor3(const CVector& pos, const CVector& scale, const CVector& rot,
		std::string modelPath = "Number3");

	// デストラクタ
	virtual ~CNumberFloor3();

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