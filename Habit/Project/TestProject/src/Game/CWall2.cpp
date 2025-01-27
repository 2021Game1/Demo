#include "CWall2.h"

// コンストラクタ
CWall2::CWall2(const CVector& pos, const CVector& angle, const CVector& size)
{
	// 壁のモデルデータ取得
	mpModel = CResourceManager::Get<CModel>("Map_mini");

	// 壁のコライダーを作成
	CModel* colModel = CResourceManager::Get<CModel>("Map_mini_Col");
	mpColliderMesh = new CColliderMesh(this, ELayer::eWall, colModel, true);

	// 位置と向きとサイズを設定
	Position(pos);
	Rotation(angle);
	Scale(size);

}

// デストラクタ
CWall2::~CWall2()
{
	// コライダーを削除
	SAFE_DELETE(mpColliderMesh);
}

// レイと壁との衝突判定
bool CWall2::CollisionRay(const CVector& start, const CVector& end, CHitInfo* hit)
{
	//壁のコライダーが存在しなければ、衝突していない
	if (mpColliderMesh == nullptr) return false;

	return CCollider::CollisionRay(mpColliderMesh, start, end, hit);
}

// 更新処理
void CWall2::Update()
{
}

// 描画処理
void CWall2::Render()
{
	mpModel->Render(Matrix());
}
