#include "CSavePoint2.h"
#include "CPlayer.h"
#include "CModel.h"
#include "CStageManager.h"

// コストラクタ
CSavePoint2::CSavePoint2(const CVector& pos, const CVector& scale, const CVector& rot)
	: CObjectBase(ETag::eSavePoint2, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
{
	// セーブポイントモデル取得
	mpSavePointModel = CResourceManager::Get<CModel>("SavePoint");

	// セーブポイントのコライダー作成
	mpSaveColLine = new CColliderLine
	(
		this, ELayer::eSavePoint2,
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, 10.0f, 0.0f)
	);
	mpSaveColLine->SetCollisionLayers({ ELayer::ePlayer });
	mpSaveColLine->SetCollisionTags({ ETag::ePlayer });

	SetColor(CColor(1.0f, 0.8f, 0.5f, 1.0f));

	Position(pos);
	Scale(scale);
	Rotation(rot);
}

// デストラクタ
CSavePoint2::~CSavePoint2()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpSaveColLine);
}

// 更新処理
void CSavePoint2::Update()
{

}

// 描画処理
void CSavePoint2::Render()
{
	mpSavePointModel->SetColor(mColor);
	mpSavePointModel->Render(Matrix());
}