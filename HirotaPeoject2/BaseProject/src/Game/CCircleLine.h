#ifndef CCIRCLELINE_H
#define CCIRCLELINE_H

#include "CObjectBase.h"
#include "CModel.h"

// 動くオブジェクトのライン
class CCircleLine : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	CCircleLine(const CVector& pos, const CVector& scale, const CVector& rot);
	// デストラクタ
	~CCircleLine();

	// 描画処理
	void Render() override;
private:
	CModel* mpCircle;
};
#endif