#ifndef CSTAGE2MENUOBJECT_H
#define CSTAGE2MENUOBJECT_H

#include "CObjectBase.h"
#include "CColliderSphere.h"
#include "CModel.h"

// �X�e�[�W���j���[�I�u�W�F�N�g
class CStage2MenuObject : public CObjectBase
{
public:
	// �R���X�g���N�^
	CStage2MenuObject(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	// �f�X�g���N�^
	~CStage2MenuObject();

	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// �X�V����
	void Update() override;
	// �`�揈��
	void Render() override;

private:
	// ���
	enum class EState
	{
		eIdle,
		eReaction,
	};
	EState mState;
	int mStateStep;
	bool mIsCollisionPlayer;
	float mElapsedTime;
	CVector mStartScale;
	CVector mShrinkScale;

	void ChangeState(EState state);
	void UpdateIdle();
	void UpdateReaction();

	// �L�m�R���f��
	CModel* mpKinokoModel;
	// �L�m�R�̃R���C�_�[
	CColliderSphere* mpColliderSphere;

	// �G�ꂽ���ɔ�������I�u�W�F�N�g�̃^�O
	ETag mReactionTag;
	// �G�ꂽ���ɔ������郌�C���[
	ELayer mReactionLayer;
};
#endif