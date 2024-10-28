#ifndef CSPRINGOBJECT_H
#define CSPRINGOBJECT_H

#include "CModel.h"
#include "CCollider.h"
#include "CObjectBase.h"

class CSpringObject : public CObjectBase
{
public:
	CSpringObject(const CVector& pos, const CVector& scale, const CVector& rot);
	virtual ~CSpringObject();

	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	void Update() override;
	void Render() override;
protected:
	CModel* mpModel;
	CCollider* mpCollider;

	enum class ESpring
	{
		eIdle,
		eSpring
	};
	void ChangeState(ESpring state);

	void UpdateIdle();

	void SpringStart();
	void UpdateSpring();
	ESpring mState;

	// ベクトル関連
	// 初期の大きさ
	CVector mStartScale;
	// 縮む大きさ
	CVector mShrinkScale;

	// 変数関連
	// 状態内のステップ
	int mStateStep;
	// 経過時間計測用
	float mElapsedTime;
	// SPACEを押したときの経過時間
	float mJumpedElapsedTime;
	// 衝突しているか
	bool mIsCollisionPlayer;
};
#endif