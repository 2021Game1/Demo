#ifndef CREFLECTIONMOVE_H
#define CREFLECTIONMOVE_H

#include "CReflectionKinoko.h"

// プレイヤーを跳ね返させるキノコ(移動タイプ)
class CReflectionMove : public CReflectionKinoko
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// <param name="move">回転距離</param>
	/// <param name="moveTime">移動時間</param>
	/// <param name="modelPath">モデルパス</param>
	CReflectionMove(const CVector& pos, const CVector& scale, const CVector& rot,
		const CVector& move, float moveTime,
		std::string modelPath);
	// デストラクタ
	virtual ~CReflectionMove();

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