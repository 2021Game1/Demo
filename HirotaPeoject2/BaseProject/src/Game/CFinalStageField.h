#ifndef CFINALSTAGEFIELD_H
#define CFINALSTAGEFIELD_H

#include "CObjectBase.h"
#include "CColliderMesh.h"

// 「最終ステージ」
class CFinalStageField : public CObjectBase
{
public:
	// コンストラクタ
	CFinalStageField();
	// デストラクタ
	~CFinalStageField();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// ステージのモデル
	CModel* mpStageModel;
	// ラインモデル
	CModel* mpLineModel;

	// ステージの床コライダー
	CColliderMesh* mpStageFloorCol;
	// ステージの壁コライダー
	CColliderMesh* mpStageWallCol;
};
#endif