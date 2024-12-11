#include "CPaladinAttack.h"

#define ANIMATION_FILE "res\\paladin\\Sword And Shield Slash.x"
#define ANIMATION_SIZE 53

CPaladinAttack::CPaladinAttack(CPaladin* parent)
{
	mpParent = parent;
	mState = CCharacter3::EState::EATTACK;
	if (mpParent->Model()->IsLoaded())
	{
		mAnimNo = mpParent->Model()->AddAnimationSet(ANIMATION_FILE) - 1;
	}
}

void CPaladinAttack::Start()
{
	mpParent->ChangeAnimation(mAnimNo, false, ANIMATION_SIZE);
	mState = CCharacter3::EState::EATTACK;
}

void CPaladinAttack::Update()
{
	if (mpParent->IsAnimationFinished())
	{
		mState = CCharacter3::EState::EIDLE;
	}
}
