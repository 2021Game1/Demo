#include "CWall.h"
#include "CSceneManager.h"

// コンストラクタ
CWall::CWall(const CVector& pos, const CVector& angle, const CVector& size)
{
	// 現在のシーンを取得
	mScene = CSceneManager::Instance()->GetCurrentScene();
	switch (mScene)
	{
	// ゲームシーン１
	case EScene::eGame:
		{
			// 壁のモデルデータ取得
			mpModel = CResourceManager::Get<CModel>("Wall");

			// 壁のコライダーを作成
			CModel* colModel = CResourceManager::Get<CModel>("WallCol");
			mpColliderMesh = new CColliderMesh(this, ELayer::eWall, colModel, true);

			break;
		}
	// ゲームシーン2
	case EScene::eGame2:
		{
			// 壁のモデルデータ取得
			mpModel = CResourceManager::Get<CModel>("Map_mini");

			// 壁のコライダーを作成
			CModel* colModel = CResourceManager::Get<CModel>("Map_mini_Col");
			mpColliderMesh = new CColliderMesh(this, ELayer::eWall, colModel, true);
			break;
		}
	// ゲームシーン2
	case EScene::eGame3:
		{
			// 壁のモデルデータ取得
			mpModel = CResourceManager::Get<CModel>("Wall");

			// 壁のコライダーを作成
			CModel* colModel = CResourceManager::Get<CModel>("Wall_Col");
			mpColliderMesh = new CColliderMesh(this, ELayer::eWall, colModel, true);
			break;
		}
	}

	// 位置と向きとサイズを設定
	Position(pos);
	Rotation(angle);
	Scale(size);

}

// デストラクタ
CWall::~CWall()
{
	// コライダーを削除
	SAFE_DELETE(mpColliderMesh);
}

// レイと壁との衝突判定
bool CWall::CollisionRay(const CVector& start, const CVector& end, CHitInfo* hit)
{
	//壁のコライダーが存在しなければ、衝突していない
	if (mpColliderMesh == nullptr) return false;

	return CCollider::CollisionRay(mpColliderMesh, start, end, hit);
}

// 更新処理
void CWall::Update()
{
}

// 描画処理
void CWall::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}
