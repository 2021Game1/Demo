#include "CSpring.h"
#include "CColliderMesh.h"
#include "CStageManager.h"

// コンストラクタ
CSpring::CSpring(const CVector& pos, const CVector& scale, const CVector& rot,
	std::string modelPath)
	: CSpringObject(pos, scale, rot)
{
	// 跳ねるキノコのモデル取得
	mpModel = CResourceManager::Get<CModel>(modelPath);

	// 跳ねるキノコのコライダー作成
	CModel* kinokoCol = CResourceManager::Get<CModel>("SpringCol");
	mpCollider = new CColliderMesh(this, ELayer::eJumpingCol, kinokoCol, true);
	mpCollider->SetCollisionTags({ ETag::ePlayer });

	// 生成時に設定された触れた時に反応するオブジェクトタグと
	// コライダーのレイヤーを個別に設定
	mpCollider->SetCollisionLayers({ ELayer::ePlayer });
	mpCollider->SetCollisionTags({ ETag::ePlayer });

	Position(pos);
	Scale(mStartScale);
	Rotate(rot);
}

// デストラクタ
CSpring::~CSpring()
{
	CStageManager::RemoveTask(this);
}


CSpringLower::CSpringLower(const CVector& pos, const CVector& scale, const CVector& rot,
	std::string modelPath)
{
	// 跳ねるキノコのモデル取得
	mpModel = CResourceManager::Get<CModel>(modelPath);

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

CSpringLower::~CSpringLower()
{
	CStageManager::RemoveTask(this);
}

void CSpringLower::Update()
{

}

void CSpringLower::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}