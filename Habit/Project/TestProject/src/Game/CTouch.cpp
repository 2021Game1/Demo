#include "CTouch.h"

// コンストラクタ
CTouch::CTouch(const CVector& pos, const CVector& angle, const CVector& size)
{
	// 壁のモデルデータ取得(変更予定)
	//mpModel = CResourceManager::Get<CModel>("Obj");
	mpModel = CResourceManager::Get<CModel>("Touch");

	// 位置と向きとサイズを設定
	Position(pos);
	Rotation(angle);
	Scale(size);
}

// デストラクタ
CTouch::~CTouch()
{
}

// 更新処理
void CTouch::Update()
{
}

// 描画処理
void CTouch::Render()
{
	mpModel->Render(Matrix());
}
