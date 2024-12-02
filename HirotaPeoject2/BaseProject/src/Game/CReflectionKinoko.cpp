#include "CReflectionKinoko.h"
#include "CColliderMesh.h"

// コンストラクタ
CReflectionKinoko::CReflectionKinoko(const CVector& pos, const CVector& scale, const CVector& rot,
	std::string modelPath)
	: CReflectionObject(pos, scale, rot)
{
	// 跳ね返させるキノコのモデル取得
	mpModel = CResourceManager::Get<CModel>(modelPath);

	// 跳ね返させるキノコのコライダー作成
	CModel* kinokoCol1 = CResourceManager::Get<CModel>("ReflectionKinokoCol");
	mpCollider1 = new CColliderMesh(this, ELayer::eReflection, kinokoCol1, true);
	mpCollider1->SetCollisionTags({ ETag::ePlayer });

	// 生成時に設定された触れた時に反応するオブジェクトタグと
	// コライダーのレイヤーを個別に設定
	mpCollider1->SetCollisionLayers({ ELayer::ePlayer });
	mpCollider1->SetCollisionTags({ ETag::ePlayer });

	// 跳ね返させるキノコのコライダー作成
	CModel* kinokoCol2 = CResourceManager::Get<CModel>("ReflectionKinokoTopCol");
	mpCollider2 = new CColliderMesh(this, ELayer::eReflectionJump, kinokoCol2, true);
	mpCollider2->SetCollisionTags({ ETag::ePlayer });

	// 生成時に設定された触れた時に反応するオブジェクトタグと
	// コライダーのレイヤーを個別に設定
	mpCollider2->SetCollisionLayers({ ELayer::ePlayer });
	mpCollider2->SetCollisionTags({ ETag::ePlayer });

	Position(pos);
	Scale(mStartScale);
	Rotate(rot);
}

// デストラクタ
CReflectionKinoko::~CReflectionKinoko()
{
}