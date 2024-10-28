#ifndef CHOPSANDHOOPSFIELD_H
#define CHOPSANDHOOPSFIELD_H

#include "CObjectBase.h"
#include "CColliderMesh.h"
#include "CColliderSphere.h"

// 「キノコジャンプステージ」
class CHopsAndHoopsField : public CObjectBase
{
public:
	// コンストラクタ
	CHopsAndHoopsField();
	// デストラクタ
	~CHopsAndHoopsField();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// ステージのモデル
	CModel* mpStageModel;
	// ステージのコライダー
	CColliderMesh* mpFloorCol;
};
#endif