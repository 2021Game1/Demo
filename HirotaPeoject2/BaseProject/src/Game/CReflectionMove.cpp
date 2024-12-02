#include "CReflectionMove.h"
#include "Maths.h"

// コンストラクタ
CReflectionMove::CReflectionMove(const CVector& pos, const CVector& scale, const CVector& rot,
	const CVector& move, float moveTime,
	std::string modelPath)
	: CReflectionKinoko(pos, scale, rot, modelPath)
	, mMoveVec(move)
	, mMoveTime(moveTime)
	, mDefaultPos(pos)
	, mMoveElapsedTime(0.0f)
{
}

// デストラクタ
CReflectionMove::~CReflectionMove()
{
}

// 更新処理
void CReflectionMove::Update()
{
	// ベースクラスの更新処理
	CReflectionKinoko::Update();

	// 移動処理
	float per = mMoveElapsedTime / mMoveTime;
	Position(mDefaultPos + mMoveVec * sinf(M_PI * 2.0f * per));

	mMoveElapsedTime += Time::DeltaTime();
	if (mMoveElapsedTime >= mMoveTime)
	{
		mMoveElapsedTime -= mMoveTime;
	}
}