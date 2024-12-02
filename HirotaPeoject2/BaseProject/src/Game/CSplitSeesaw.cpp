#include "CSplitSeesaw.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CModel.h"
#include "CColliderMesh.h"
#include "CStageManager.h"

// コンストラクタ
CSplitSeesaw::CSplitSeesaw(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer, const float right, const float left,
	const float rotateRSpeed, const float rotateLSpeed,
	std::string modelPath)
	: CSeesawObject(pos, scale, rot, reactionTag, reactionLayer, right, left, rotateRSpeed, rotateLSpeed)
{
	// シーソーモデルを取得
	mpModel = CResourceManager::Get<CModel>("SplitSeesawModel");

	// シーソー全体コライダーを作成
	CModel* ceesaw = CResourceManager::Get<CModel>("SplitSeesawModelCol");
	mpCollider = new CColliderMesh(this, ELayer::eField, ceesaw, true);
	mpCollider->SetCollisionLayers({ ELayer::ePlayer });
	mpCollider->SetCollisionTags({ ETag::ePlayer });


	Position(pos);
	Scale(scale);
	Rotation(mDeafaultRot);

	// 初期位置
	mStartPos = Position();
}

// デストラクタ
CSplitSeesaw::~CSplitSeesaw()
{
	CStageManager::RemoveTask(this);
}