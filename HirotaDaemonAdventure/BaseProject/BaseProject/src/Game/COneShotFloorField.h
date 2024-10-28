#ifndef CONESHOTFLOORFIELD_H
#define CONESHOTFLOORFIELD_H

#include "CObjectBase.h"
#include "CColliderMesh.h"
#include "CColliderSphere.h"

// 「連続ジャンプステージ」
class COneShotFloorField : public CObjectBase
{
public:
	// コンストラクタ
	COneShotFloorField();
	// デストラクタ
	~COneShotFloorField();

	// 更新処理
	void Update() override; 
	// 描画処理
	void Render() override;

private:
	// ステージのモデル
	CModel* mpStageModel;
	// ラインモデル
	CModel* mpLineModel;
	// ステージのコライダー
	CColliderMesh* mpStageFloorCol;
};
#endif