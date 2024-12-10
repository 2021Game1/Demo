#pragma once
class CState
{
public:
	virtual void Start() = 0;
	virtual void Update() = 0;
	//virtual void Collision(CCollider* m, CCollider* o) = 0;
	//virtual void Render() = 0;
	void State(const CCharacter3::EState& state) { mState = state; }
	const CCharacter3::EState& State() const { return mState; }
protected:
	CCharacter3::EState mState;
	int mAnimNo;
};