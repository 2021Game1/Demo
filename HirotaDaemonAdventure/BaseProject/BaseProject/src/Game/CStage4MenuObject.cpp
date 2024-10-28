#include "CStage4MenuObject.h"
#include "CCollisionManager.h"
#include "Maths.h"
#include "Easing.h"
#include "CInput.h"
#include "CModel.h"
#include "CTaskManager.h"
#include "CStageManager.h"

#define SHRINK_SCALE 0.65f
#define SHRINK_TIME 0.15f
#define RETURN_TIME 0.3f

// コンストラクタ
CStage4MenuObject::CStage4MenuObject(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eStageMenuObject, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mReactionLayer(reactionLayer)
	, mReactionTag(reactionTag)
	, mStartScale(CVector::one)
	, mShrinkScale(CVector::one)
	, mState(EState::eIdle)
	, mStateStep(0)
	, mElapsedTime(0.0f)
	, mIsCollisionPlayer(false)
{
	// シーソーモデルを取得
	mpSeesawModel = CResourceManager::Get<CModel>("SeesawModel");

	// シーソーモデルのコライダー作成
	mpColliderSphere = new CColliderSphere
	(
		this, ELayer::eStageMenuObject,
		15.0f
	);
	mpColliderSphere->SetCollisionLayers({ ELayer::eDamageCol });
	mpColliderSphere->SetCollisionTags({ ETag::ePlayer });

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

// デストラクタ
CStage4MenuObject::~CStage4MenuObject()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderSphere);
}

// 衝突処理
void CStage4MenuObject::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	if (owner->Tag() == mReactionTag && other->Layer() == mReactionLayer)
	{
		mIsCollisionPlayer = true;
	}
}

void CStage4MenuObject::ChangeState(EState state)
{
	if (mState == state) return;
	mState = state;
	mStateStep = 0;
	mElapsedTime = 0.0f;
}

void CStage4MenuObject::UpdateIdle()
{
	if (mIsCollisionPlayer)
	{
		ChangeState(EState::eReaction);
	}
}

void CStage4MenuObject::UpdateReaction()
{
	switch (mStateStep)
	{
	case 0:
		mStartScale = Scale();
		mShrinkScale = mStartScale;
		mShrinkScale.X(mShrinkScale.X() * SHRINK_SCALE);
		mShrinkScale.Y(mShrinkScale.Y() * SHRINK_SCALE);
		mShrinkScale.Z(mShrinkScale.Z() * SHRINK_SCALE);
		Scale(mShrinkScale);
		mStateStep++;
		break;

	case 1:
		if (mElapsedTime < SHRINK_TIME)
		{
			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			mStateStep++;
			mElapsedTime = 0.0f;
		}
		break;
	case 2:
		if (mElapsedTime < RETURN_TIME)
		{
			float percent = Easing::BackOut
			(
				mElapsedTime,
				RETURN_TIME,
				0.0f, 1.0f, 5.0f
			);

			CVector scale = CVector::LerpUnclamped(
				mShrinkScale,
				mStartScale,
				percent
			);
			Scale(scale);

			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			Scale(mStartScale);
			mElapsedTime = 0.0f;
			mStateStep++;
		}
		break;
	case 3:
		if (!mIsCollisionPlayer)
		{
			ChangeState(EState::eIdle);
		}
		break;
	}
}

// 更新処理
void CStage4MenuObject::Update()
{
	// 回転
	float rot = 1.0f;
	Rotate(0.0f, rot, 0.0f);

	switch (mState)
	{
	case EState::eIdle:
		UpdateIdle();
		break;
	case EState::eReaction:
		UpdateReaction();
		break;
	}

	mIsCollisionPlayer = false;
}

// 描画処理
void CStage4MenuObject::Render()
{
	mpSeesawModel->SetColor(mColor);
	mpSeesawModel->Render(Matrix());
}