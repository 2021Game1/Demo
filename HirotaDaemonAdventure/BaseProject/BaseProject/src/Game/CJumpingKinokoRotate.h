#ifndef CJUMPINGKINOKOROTATE_H
#define CJUMPINGKINOKOROTATE_H

#include "CJumpingKinoko.h"

// プレイヤーを跳ねさせるキノコ(回転移動タイプ)
class CJumpingKinokoRotate : public CJumpingKinoko
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
	CJumpingKinokoRotate(const CVector& pos, const CVector& scale, const CVector& rot,
		float angle, float dist, float speed, bool rotateangle,
		std::string modelPath);
	// デストラクタ
	virtual ~CJumpingKinokoRotate();

	void Update() override;

private:
	// 元の位置
	CVector mDefaultPos;

	// 経過時間
	float mElapsedTime;
	// 角度
	float mAngle;
	// 距離
	float mDistance;
	// 回転スピード
	float mSpeed;
};
#endif