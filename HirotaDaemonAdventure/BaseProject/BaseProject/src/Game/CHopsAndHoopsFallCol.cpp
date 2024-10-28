#include "CHopsAndHoopsFallCol.h"
#include "CCollisionManager.h"
#include "CCamera.h"
#include "CStageManager.h"

// �R���X�g���N�^
CHopsAndHoopsFallCol::CHopsAndHoopsFallCol()
	: CObjectBase(ETag::eFall, ETaskPriority::eFall)
{
	// �����R���C�_�[
	CModel* fallCol = CResourceManager::Get<CModel>("HopsAndHoops(FallCol)");
	mpFallCol = new CColliderMesh(this, ELayer::eFall, fallCol, true);
	mpFallCol->SetCollisionTags({ ETag::ePlayer });
	mpFallCol->SetCollisionLayers({ ELayer::ePlayer });
}

// �f�X�g���N�^
CHopsAndHoopsFallCol::~CHopsAndHoopsFallCol()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpFallCol);
}

// �X�V����
void CHopsAndHoopsFallCol::Update()
{

}

// �`�揈��
void CHopsAndHoopsFallCol::Render()
{

}