#ifndef CPOINTLINE_H
#define CPOINTLINE_H

#include "CObjectBase.h"
#include "CModel.h"

// 特定の位置に移動するオブジェクトのポイントライン
class CPointLine : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	CPointLine(const CVector& pos, const CVector& scale, const CVector& rot);
	// デストラクタ
	~CPointLine();

	// 描画処理
	void Render() override;

private:
	CModel* mpPointLine;
};
#endif