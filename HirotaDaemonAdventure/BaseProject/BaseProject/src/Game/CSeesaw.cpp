#include "CSeesaw.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CModel.h"
#include "CColliderMesh.h"
#include "CStageManager.h"

// �R���X�g���N�^
CSeesaw::CSeesaw(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer, const float right, const float left,
	const float rotateRSpeed, const float rotateLSpeed,
	std::string modelPath)
	: CSeesawObject(pos, scale, rot, reactionTag, reactionLayer, right, left, rotateRSpeed, rotateLSpeed)
{
	// �V�[�\�[���f�����擾
	mpModel = CResourceManager::Get<CModel>("SeesawModel");

	// �V�[�\�[�S�̃R���C�_�[���쐬
	CModel* ceesaw = CResourceManager::Get<CModel>("SeesawModelCol");
	mpCollider = new CColliderMesh(this, ELayer::eField, ceesaw, true);
	mpCollider->SetCollisionLayers({ ELayer::ePlayer });
	mpCollider->SetCollisionTags({ ETag::ePlayer });


	Position(pos);
	Scale(scale);
	Rotation(mDeafaultRot);

	// �����ʒu
	mStartPos = Position();
}

// �f�X�g���N�^
CSeesaw::~CSeesaw()
{
	CStageManager::RemoveTask(this);
}