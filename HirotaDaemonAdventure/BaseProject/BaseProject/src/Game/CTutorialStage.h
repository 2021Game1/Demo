#ifndef CTUTORIALSTAGE_H
#define CTUTORIALSTAGE_H

#include "CObjectBase.h"
#include "CColliderMesh.h"
#include "CColliderSphere.h"

// チュートリアルステージ
class CTutorialStage : public CObjectBase
{
public:
	// コンストラクタ
	CTutorialStage();
	// デストラクタ
	~CTutorialStage();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	CModel* mpStageModel;
	CColliderMesh* mpFloor;
	CColliderMesh* mpWall;
};
#endif