#ifndef CSEESAW_H
#define CSEESAW_H

#include "CSeesawObject.h"

// �V�[�\�[
class CSeesaw : public CSeesawObject
{
public:
	/// <summary>
	/// �R���X�g���N�^
	/// </summary>
	/// <param name="pos">�ʒu</param>
	/// <param name="scale">�傫��</param>
	/// <param name="rot">��]</param>
	/// <param name="reactionTag">��������^�O</param>
	/// <param name="reactionLayer">�������郌�C���[</param>
	/// <param name="right">�E�̉�]�l</param>
	/// <param name="left">���̉�]�l</param>
	/// <param name="rotateRSpeed">�E�̉�]�X�s�[�h</param>
	/// <param name="rotateLSpeed">���̉�]�X�s�[�h</param>
	/// <param name="modelPath">���f���p�X</param>
	CSeesaw(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer, const float right, const float left,
		const float rotateRSpeed, const float rotateLSpeed,
		std::string modelPath = "SeesawModel");

	// �f�X�g���N�^
	virtual ~CSeesaw();
};
#endif