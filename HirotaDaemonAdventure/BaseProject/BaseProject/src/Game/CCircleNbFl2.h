#ifndef CCIRCLENBFL2_H
#define CCIRCLENBFL2_H

#include "CNumberFloor2.h"

// 円回転する回数で落ちる床(2回)ベース
class CCircleNbFl2 : public CNumberFloor2
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
	/// <param name="speed">回転の速さ</param>
	/// <param name="rotateangle">回転方向の設定</param>
	/// <param name="modelPath">モデルパス</param>
	CCircleNbFl2(const CVector& pos, const CVector& scale, const CVector& rot,
		float angle, float dist, float speed, bool rotateangle,
		std::string modelPath);
	// デストラクタ
	virtual ~CCircleNbFl2();

	void Update() override;

private:
	// 元の位置
	CVector mDefaultPos;

	// 経過時間
	float mElapsedRotateTime;
	// 角度
	float mAngle;
	// 距離
	float mDistance;
	// 回転スピード
	float mSpeed;
};
#endif