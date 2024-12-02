#ifndef CPLAINSSTAGEFIELD_H
#define CPLAINSSTAGEFIELD_H

#include "CObjectBase.h"
#include "CColliderMesh.h"
#include "CColliderSphere.h"

class CPlainsStageField : public CObjectBase
{
public:
	CPlainsStageField();
	~CPlainsStageField();

	// 壁のコライダー取得
	CColliderMesh* GetWallCol() const;

	void Update() override;
	void Render() override;

private:

	CModel* mpStageModel;
	CModel* mpLoadModel;
	CModel* mpCloudModel;
	CModel* mpFanceModel;
	CModel* mpFlowersModel;
	CModel* mpGrassModel;
	CModel* mpArrowSignModel;
	CModel* mpSkyIsland;
	CModel* mpTreeModel;
	CModel* mpBranchModel;
	CModel* mpRockShrubModel;

	CColliderMesh* mpFloorCol;
	CColliderMesh* mpWallCol;
	CColliderMesh* mpTreeCol;
	CColliderMesh* mpBranchCol;
	CColliderMesh* mpRockShrudCol;

	CColliderSphere* mpMushroomSphere;
};
#endif