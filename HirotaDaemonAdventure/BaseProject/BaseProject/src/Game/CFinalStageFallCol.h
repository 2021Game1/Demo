#ifndef CFINALSTAGEFALLCOL_H
#define CFINALSTAGEFALLCOL_H

#include "CObjectBase.h"
#include "CColliderMesh.h"

// 「最終ステージ」の落下コライダー
class CFinalStageFallCol : public CObjectBase
{
public:
	// コンストラクタ
	CFinalStageFallCol();
	// デストラクタ
	~CFinalStageFallCol();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;
private:
	// 落下コライダー
	CColliderMesh* mpFallCol;
};
#endif