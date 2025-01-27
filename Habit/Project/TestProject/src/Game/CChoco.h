#pragma once
#include "CObjectBase.h"
#include "CModel.h"

class CCollider;

// チョコレートのクラス
class CChoco : public CObjectBase
{
public:
	// コンストラクタ
	CChoco();
	// デストラクタ
	~CChoco();

	// 衝突処理
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	CModel* mpModel;		// チョコのモデルデータ
	CCollider* mpCollider;	// チョコのコライダー
};