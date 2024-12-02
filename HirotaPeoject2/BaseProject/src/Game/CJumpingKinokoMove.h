#ifndef CJUMPINGKINOKOMOVE_H
#define CJUMPINGKINOKOMOVE_H

#include "CJumpingKinoko.h"

// プレイヤーを跳ねさせるキノコ(移動タイプ)
class CJumpingKinokoMove : public CJumpingKinoko
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
	CJumpingKinokoMove(const CVector& pos, const CVector& scale, const CVector& rot,
		const CVector& move, float moveTime,
		std::string modelPath);
	// デストラクタ
	virtual ~CJumpingKinokoMove();

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