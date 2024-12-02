#ifndef CJUMPINGKINOKOLEFTRIGHT_H
#define CJUMPINGKINOKOLEFTRIGHT_H

#include "CJumpingKinokoMove.h"

// プレイヤーを跳ねさせるキノコ(左右)
class CJumpingKinokoLeftRight : public CJumpingKinokoMove
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
	CJumpingKinokoLeftRight(const CVector& pos, const CVector& scale, const CVector& rot,
		const CVector& move, float moveTime);
	// デストラクタ
	~CJumpingKinokoLeftRight();
};
#endif