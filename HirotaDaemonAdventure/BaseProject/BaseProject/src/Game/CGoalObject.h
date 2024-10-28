#ifndef CGOALOBJECT_H
#define CGOALOBJECT_H

#include "CModel.h"
#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CColliderMesh.h"
#include "CGoalBase.h"

// ゴールクラス
class CGoalObject : public CGoalBase
{
public:
	CGoalObject(const CVector& pos, const CVector& scale, const CVector&rot);
	~CGoalObject();

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	// モデル・素材関連
	// ゴールの土台モデル
	CModel* mpModel;
	// ゴールのポストモデル
	CModel* mpGoalPost;
	// ポストのコライダー
	CColliderLine* mpColliderLine;
	// てっぺんのコライダー
	CColliderSphere* mpColliderSphere;
	// 土台のコライダー
	CColliderMesh* mpColliderMesh;
};
#endif