#include "CJumpingKinoko.h"
#include "CColliderMesh.h"
#include "CStageManager.h"

// コンストラクタ
CJumpingKinoko::CJumpingKinoko(const CVector& pos, const CVector& scale, const CVector& rot,
	std::string modelPath)
	: CJumpingObject(pos, scale, rot)
	, mRotateAngle(false)
{
	// 跳ねるキノコのモデル取得
	mpModel = CResourceManager::Get<CModel>(modelPath);

	// 跳ねるキノコのコライダー作成
	CModel* kinokoCol = CResourceManager::Get<CModel>("JumpingKinokoCol");
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
CJumpingKinoko::~CJumpingKinoko()
{
	CStageManager::RemoveTask(this);
}