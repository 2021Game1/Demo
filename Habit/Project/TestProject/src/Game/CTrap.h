#pragma once
#include "CObjectBase.h"
#include "CModel.h"

// 敵が設置する罠
class CTrap : public CObjectBase
{
public:
	// コンストラクタ
	CTrap();
	// デストラクタ
	~CTrap();

	// 衝突処理
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	CModel* mpModel;		// 罠のモデルデータ
	CCollider* mpCollider;	// 罠のコライダー
};