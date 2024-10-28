#ifndef CONESHOTFALLCOL_H
#define CONESHOTFALLCOL_H

#include "CObjectBase.h"
#include "CColliderMesh.h"

// 「連続ジャンプステージ」の落下コライダー
class COneShotFallCol : public CObjectBase
{
public:
	// コンストラクタ
	COneShotFallCol();
	// デストラクタ
	~COneShotFallCol();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;
private:
	// 落下コライダー
	CColliderMesh* mpFallCol;
};
#endif