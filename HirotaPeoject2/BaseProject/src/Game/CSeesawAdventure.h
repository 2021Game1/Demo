#ifndef CSEESAWADVENTURE_H
#define CSEESAWADVENTURE_H

#include "CObjectBase.h"
#include "CColliderMesh.h"
#include "CColliderSphere.h"

// 「シーソーアドベンチャー」
class CSeesawAdventure : public CObjectBase
{
public:
	// コンストラクタ
	CSeesawAdventure();
	// デストラクタ
	~CSeesawAdventure();

	CColliderMesh* GetWallCol() const;

	// 更新距離
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// ステージのモデル
	CModel* mpStageModel;

	// ステージのコライダー
	CColliderMesh* mpFloorCol;
	// ステージの壁コライダー
	CColliderMesh* mpWallCol;
};
#endif