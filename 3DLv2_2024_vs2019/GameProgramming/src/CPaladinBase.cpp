#include "CPaladinBase.h"
#include "CPaladinAttack.h"
#include "CPaladinIdle.h"
#include "CPaladinWalk.h"

#define PALADIN_MODEL_PATH "res\\paladin\\paladin.x"

CModelX CPaladinBase::sModel;

CPaladinBase::CPaladinBase()
	: CXCharacter(CCharacter3::ETag::EPLAYER)
{
	if (sModel.IsLoaded() == false)
	{
		sModel.Load(PALADIN_MODEL_PATH);
	}
	Init(&sModel);

	mState = EState::EIDLE;
	//mpState = mpIdle = new CPaladinIdle(this);
	//mpWalk = new CPaladinWalk(this);
	//mpAttack = new CPaladinAttack(this);

	mpState->Start();
}

CPaladinBase::~CPaladinBase()
{
	delete mpIdle;
	delete mpWalk;
	delete mpAttack;
}

CPaladinBase::CPaladinBase(const CVector& pos, const CVector& rot, const CVector& scale)
	: CPaladinBase()
{
	Position(pos);
	Rotation(rot);
	Scale(scale);
}

void CPaladinBase::Update()
{
	mTargetPosition = mPosition + mAdjust;
	mpState->Update();

	if (mState != mpState->State())
	{
		mState = mpState->State();
		switch (mState)
		{
		case EState::EJUMP:
			//Jump();
			break;
		case EState::EIDLE:
			//Idle();
			//mpState->Update();
			mpState = mpIdle;
			mpState->Start();
			break;
		case EState::EATTACK:
			mpState = mpAttack;
			mpState->Start();
			//Attack();
			break;
		case EState::EWALK:
			mpState = mpWalk;
			mpState->Start();
			//ChangeAnimation(1, true, 33);
			//Walk();
			break;
		}
	}

	if (mState != EState::EIDLE || !mGrounded)
	{
		mVelocityG += mGravity;
		mTargetPosition = mTargetPosition + CVector(0.0f, mVelocityG, 0.0f);

		CVector v = mTargetPosition - mPosition;

		if (v.Length() > 0.001f)
		{
			if (v.Length() < mSpeed)
			{
				mSpeed -= 0.01f;
			}
			else if (mSpeed < VELOCITY)
			{
				mSpeed += 0.01f;
			}
			mPosition = mPosition + v.Normalize() * mSpeed;
		}
		else
		{
			mSpeed = 0.0f;
		}
	}

	CXCharacter::Update();

	mGrounded = false;
	mAdjust = CVector();
}
