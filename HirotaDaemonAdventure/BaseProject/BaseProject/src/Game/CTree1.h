#ifndef CTREE1_H
#define CTREE1_H

#include "CModel.h"
#include "CColliderSphere.h"
#include "CRisingObject.h"

// 木モデル1
class CTree1Obj : public CRideableObject
{
public:
	// コンストラクタ
	CTree1Obj(const CVector& pos, const CVector& scale, const CVector& rot);
	// デストラクタ
	~CTree1Obj();

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	// 木1モデル
	CModel* mpModel;
	// 木1モデルコライダー
	CColliderSphere* mpColliderSphere;
};
#endif