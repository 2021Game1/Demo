#ifndef CSTAGESELECTION_H
#define CSTAGESELECTION_H
#include "CObjectBase.h"
#include "CColliderMesh.h"

class CStageSelection : public CObjectBase
{
public:
	// コンストラクタ
	CStageSelection();
	// デストラクタ
	~CStageSelection();

	// 壁のコライダー取得
	//CColliderMesh* GetWallCol() const;

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	void CreateFieldObjects();

	CModel* mpModel;
	CColliderMesh* mpColliderMesh;
	//CColliderMesh* mpWallCol;
};
#endif