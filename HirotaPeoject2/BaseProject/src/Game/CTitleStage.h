#ifndef CTITLESTAGE_H
#define CTITLESTAGE_H

#include "CObjectBase.h"
#include "CColliderMesh.h"

// 「タイトルステージ」
class CTitleStage : public CObjectBase
{
public:
	// コンストラクタ
	CTitleStage();
	// デストラクタ
	~CTitleStage();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// ステージモデル
	CModel* mpStageModel;
	// 床コライダー
	CColliderMesh* mpTitleCol;
};
#endif