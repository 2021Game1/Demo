#ifndef CHOPSANDHOOPSFALLCOL_H
#define CHOPSANDHOOPSFALLCOL_H

#include "CObjectBase.h"
#include "CColliderMesh.h"

// 「ホップ＆フープス」の落下コライダー
class CHopsAndHoopsFallCol : public CObjectBase
{
public:
	// コンストラクタ
	CHopsAndHoopsFallCol();
	// デストラクタ
	~CHopsAndHoopsFallCol();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;
private:
	// 落下コライダー
	CColliderMesh* mpFallCol;
};
#endif