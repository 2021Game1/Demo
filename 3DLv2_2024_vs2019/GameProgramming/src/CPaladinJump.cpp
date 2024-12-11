#include "CPaladinJump.h"

#define ANIMATION_FILE "res\\paladin\\Sword And Shield Jump.x"
#define ANIMATION_SIZE 51

CPaladinJump::CPaladinJump(CPaladin* parent)
{
	mpParent = parent;
	mState = CCharacter3::EState::EJUMP;
	if (mpParent->Model()->IsLoaded())
	{
		mAnimNo = mpParent->Model()->AddAnimationSet(ANIMATION_FILE) - 1;
	}
}

void CPaladinJump::Start()
{
	mpParent->ChangeAnimation(mAnimNo, false, ANIMATION_SIZE);
	mState = CCharacter3::EState::EJUMP;
	mpParent->VelocityG(2.0);
	mpParent->Position(mpParent->Position() + CVector(0.0f, 1.0f, 0.0f));
	mVelocity = mpParent->Velocity();
	mVelocity.Y(0.0f);
}

void CPaladinJump::Update()
{
	if (mpParent->IsAnimationFinished())
	{
		mState = CCharacter3::EState::EIDLE;
	}
	mpParent->Position(mpParent->Position() + mVelocity);
}
