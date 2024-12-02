#include "CStone1.h"

// コンストラクタ
CStone1::CStone1(const CVector& pos, const CVector& scale, const CVector& rot)
{
	// 石1モデル取得
	mpModel = CResourceManager::Get<CModel>("Stone1");

	// 石1モデルコライダー作成
	mpColliderSphere = new CColliderSphere
	(
		this, ELayer::eField,
		1.5f, true
	);
	mpColliderSphere->Position(0.0f, 1.0f, 0.0f);

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

// デストラクタ
CStone1::~CStone1()
{
	SAFE_DELETE(mpColliderSphere);
}

// 更新処理
void CStone1::Update()
{

}

// 描画処理
void CStone1::Render()
{
	mpModel->Render(Matrix());
}