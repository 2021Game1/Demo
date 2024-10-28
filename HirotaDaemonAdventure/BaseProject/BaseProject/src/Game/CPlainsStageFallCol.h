#ifndef CPLAINSSTAGEFALLCOL_H
#define CPLAINSSTAGEFALLCOL_H

#include "CObjectBase.h"
#include "CColliderMesh.h"

// 「連続ジャンプステージ」の落下コライダー
class CPlainsStageFallCol : public CObjectBase
{
public:
	CPlainsStageFallCol();
	~CPlainsStageFallCol();

	void Update() override;
	void Render() override;
private:
	CColliderMesh* mpFallCol;
};
#endif