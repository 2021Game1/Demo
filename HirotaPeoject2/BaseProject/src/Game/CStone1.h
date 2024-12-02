#ifndef CSTONE1_H
#define CSTONE1_H

#include "CModel.h"
#include "CColliderSphere.h"
#include "CRideableObject.h"

// 石1クラス
class CStone1 : public CRideableObject
{
public:
	CStone1(const CVector& pos, const CVector& scale, const CVector& rot);
	~CStone1();

	// 更新処理
	void Update();
	// 更新処理
	void Render();

private:
	// 石1モデル
	CModel* mpModel;
	// 石1モデルのコライダー
	CColliderSphere* mpColliderSphere;
};
#endif