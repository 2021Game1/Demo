#include "CTree1.h"

// コンストラクタ
CTree1Obj::CTree1Obj(const CVector& pos, const CVector& scale, const CVector& rot)
{
	// 木1モデル取得
	mpModel = CResourceManager::Get<CModel>("Tree1");

	// 木1モデルコライダー作成
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
CTree1Obj::~CTree1Obj()
{
	SAFE_DELETE(mpColliderSphere);
}

// 更新処理
void CTree1Obj::Update()
{

}

// 描画処理
void CTree1Obj::Render()
{
	mpModel->Render(Matrix());
	mpModel->SetColor(mColor);
}