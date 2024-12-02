#include "CSavePoint1.h"
#include "CPlayer.h"
#include "CModel.h"
#include "CStageManager.h"

// コストラクタ
CSavePoint1::CSavePoint1(const CVector& pos, const CVector& scale, const CVector& rot)
	: CObjectBase(ETag::eSavePoint1, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
{
	// セーブポイントモデル取得
	mpSavePointModel = CResourceManager::Get<CModel>("SavePoint");

	// セーブポイントのコライダー作成
	mpSaveColLine = new CColliderLine
	(
		this, ELayer::eSavePoint1,
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, 10.0f, 0.0f)
	);
	mpSaveColLine->SetCollisionLayers({ ELayer::ePlayer });
	mpSaveColLine->SetCollisionTags({ ETag::ePlayer });

	Position(pos);
	Scale(scale);
	Rotation(rot);
}

// デストラクタ
CSavePoint1::~CSavePoint1()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpSaveColLine);
}

// 更新処理
void CSavePoint1::Update()
{

}

// 描画処理
void CSavePoint1::Render()
{
	mpSavePointModel->SetColor(mColor);
	mpSavePointModel->Render(Matrix());
}