#ifndef CHOPSANDHOOPSFALLCOL_H
#define CHOPSANDHOOPSFALLCOL_H

#include "CObjectBase.h"
#include "CColliderMesh.h"

// �u�z�b�v���t�[�v�X�v�̗����R���C�_�[
class CHopsAndHoopsFallCol : public CObjectBase
{
public:
	// �R���X�g���N�^
	CHopsAndHoopsFallCol();
	// �f�X�g���N�^
	~CHopsAndHoopsFallCol();

	// �X�V����
	void Update() override;
	// �`�揈��
	void Render() override;
private:
	// �����R���C�_�[
	CColliderMesh* mpFallCol;
};
#endif