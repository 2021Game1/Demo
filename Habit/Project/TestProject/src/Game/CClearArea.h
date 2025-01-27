#pragma once
#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderMesh.h"

// クリアエリア　クラス
class CClearArea : public CObjectBase
{
public:
	// コンストラクタ
	CClearArea(const CVector& pos, const CVector& angle, const CVector& size);
	// デストラクタ
	~CClearArea();

	// 衝突処理
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	//// 更新処理
	//void Update() override;
	// 描画処理
	void Render() override;

private:
	CModel* mpModel;	// クリアエリアのモデルデータ
	CColliderMesh* mpColliderMesh;	// クリアエリアのコリジョンデータ
};