#include "CPaladinIdle.h"

// CPaladinIdle class

#define ANIMATION_FILE "res\\paladin\\Sword And Shield Idle.x"
#define IDLE_ANIMATION_SIZE 221

CPaladinIdle::CPaladinIdle(CPaladin* parent)
{
	mpParent = parent;
	mState = CCharacter3::EState::EIDLE;
	if (mpParent->Model()->IsLoaded())
	{
		mAnimNo = mpParent->Model()->AddAnimationSet(ANIMATION_FILE) - 1;
	}
}

void CPaladinIdle::Start()
{
	mpParent->ChangeAnimation(mAnimNo, true, IDLE_ANIMATION_SIZE);
	mState = CCharacter3::EState::EIDLE;
}

void CPaladinIdle::Update()
{
	bool flg = false;
	if (mInput.Key('A')) {
		flg = true;
	}
	if (mInput.Key('D')) {
		flg = true;
	}
	if (mInput.Key('W')) {
		flg = true;
	}
	if (mInput.Key('S')) {
		flg = true;
	}
	if (flg)
	{
		mState = CCharacter3::EState::EWALK;
	}
	if (mInput.Key(VK_SPACE))
	{
		mState = CCharacter3::EState::EJUMP;
	}
	if (mInput.Key(VK_LBUTTON))
	{
		mState = CCharacter3::EState::EATTACK;
	}
}

