#include "CClearArea.h"
#include "CSceneManager.h"

// コンストラクタ
CClearArea::CClearArea(const CVector& pos, const CVector& angle, const CVector& size)
	: CObjectBase(ETag::eClear, ETaskPriority::eDefault, 0, ETaskPauseType::eGame)
{	// クリアエリアのモデルデータを取得
	mpModel = CResourceManager::Get<CModel>("Goal");

	// クリアエリアのコライダーを作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eWall, mpModel, true);	
	// プレイヤーとフィールドと衝突するように設定
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer });
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer });

	// 位置と向きとサイズを設定
	Position(pos);
	Rotation(angle);
	Scale(size);
}

// デストラクタ
CClearArea::~CClearArea()
{
	// コライダーを削除
	SAFE_DELETE(mpColliderMesh);
}

void CClearArea::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// プレイヤーに衝突した
	if (other->Layer() == ELayer::ePlayer)
	{
		// ゲームオーバーシーンを読み込む
		CSceneManager::Instance()->LoadScene(EScene::eClear);
	}
}

//// 更新処理
//void CClearArea::Update()
//{
//}

// 描画処理
void CClearArea::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}
