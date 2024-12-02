#include "CNbFlMove3.h"
#include "Maths.h"

// コンストラクタ
CNbFlMove3::CNbFlMove3(const CVector& pos, const CVector& scale, const CVector& rot,
	const CVector& move, float moveTime,
	std::string modelPath)
	: CNumberFloor3(pos, scale, rot, modelPath)
	, mMoveVec(move)
	, mMoveTime(moveTime)
	, mDefaultPos(pos)
	, mMoveElapsedTime(0.0f)
{
}

// デストラクタ
CNbFlMove3::~CNbFlMove3()
{
}

// 更新処理
void CNbFlMove3::Update()
{
	if (mState != EState::Falling)
	{
		// 移動処理
		float per = mMoveElapsedTime / mMoveTime;
		Position(mDefaultPos + mMoveVec * sinf(M_PI * 2.0f * per));

		mMoveElapsedTime += Time::DeltaTime();
		if (mMoveElapsedTime >= mMoveTime)
		{
			mMoveElapsedTime -= mMoveTime;
		}
	}
	else
	{

	}
	// ベースクラスの更新処理
	CNumberFloor3::Update();
}