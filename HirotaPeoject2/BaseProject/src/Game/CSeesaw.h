#ifndef CSEESAW_H
#define CSEESAW_H

#include "CSeesawObject.h"

// シーソー
class CSeesaw : public CSeesawObject
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// <param name="reactionTag">反応するタグ</param>
	/// <param name="reactionLayer">反応するレイヤー</param>
	/// <param name="right">右の回転値</param>
	/// <param name="left">左の回転値</param>
	/// <param name="rotateRSpeed">右の回転スピード</param>
	/// <param name="rotateLSpeed">左の回転スピード</param>
	/// <param name="modelPath">モデルパス</param>
	CSeesaw(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer, const float right, const float left,
		const float rotateRSpeed, const float rotateLSpeed,
		std::string modelPath = "SeesawModel");

	// デストラクタ
	virtual ~CSeesaw();
};
#endif