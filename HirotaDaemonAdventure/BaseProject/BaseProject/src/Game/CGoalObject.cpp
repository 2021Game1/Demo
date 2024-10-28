#include "CGoalObject.h"
#include "CPlayer.h"
#include "CStageManager.h"

// コンストラクタ
CGoalObject::CGoalObject(const CVector& pos, const CVector& scale, const CVector& rot)
{
	// ゴールの土台モデル取得
	mpModel = CResourceManager::Get<CModel>("GoalCube");
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpModel, true);

	// ゴールのポストモデル取得
	mpGoalPost = CResourceManager::Get<CModel>("GoalPost");

	// ポストのコライダーを作成
	mpColliderLine = new CColliderLine
	(
		this, ELayer::eGoalCol,
		CVector(0.0f, 5.0f, 0.0f),
		CVector(0.0f, 30.0, 0.0f)
	);
	mpColliderLine->SetCollisionLayers({ ELayer::ePlayer });
	mpColliderLine->SetCollisionTags({ ETag::ePlayer });

	// てっぺんのコライダーを作成
	mpColliderSphere = new CColliderSphere
	(
		this, ELayer::eGoalCol,
		2.0f//0.5f
	);
	mpColliderSphere->SetCollisionLayers({ ELayer::ePlayer });
	mpColliderSphere->SetCollisionTags({ ETag::ePlayer });
	// ゴールコライダーを少し上へずらす
	mpColliderSphere->Position(0.0f, 20.0f, 0.0f);


	Position(pos);
	Scale(scale);
	Rotation(rot);
}

// デストラクタ
CGoalObject::~CGoalObject()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderMesh);
	SAFE_DELETE(mpColliderLine);
	SAFE_DELETE(mpColliderSphere);
}

// 更新処理
void CGoalObject::Update()
{
	
}

// 描画処理
void CGoalObject::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
	mpGoalPost->SetColor(mColor);
	mpGoalPost->Render(Matrix());
}