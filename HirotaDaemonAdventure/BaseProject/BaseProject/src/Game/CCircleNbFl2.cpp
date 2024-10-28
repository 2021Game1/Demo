#include "CCircleNbFl2.h"
#include "Maths.h"

// コンストラクタ
CCircleNbFl2::CCircleNbFl2(const CVector& pos, const CVector& scale, const CVector& rot,
	float angle, float dist, float speed, bool rotateangle,
	std::string modelPath)
	: CNumberFloor2(pos, scale, rot)
	, mAngle(angle)
	, mDistance(dist)
	, mDefaultPos(pos)
	, mSpeed(speed)
	, mElapsedRotateTime(0.0f)
{
	mRotateAngle = rotateangle;
}

// デストラクタ
CCircleNbFl2::~CCircleNbFl2()
{
}

// 更新処理
void CCircleNbFl2::Update()
{
	if (mState != EState::Falling)
	{
		// 回転
		CVector pos = CVector::zero;
		pos.X(cosf(Math::DegreeToRadian(mAngle)) * mDistance);
		pos.Z(sinf(Math::DegreeToRadian(mAngle)) * mDistance);
		pos.Y(0.0f);
		Position(mDefaultPos + pos);

		if (mRotateAngle)
		{
			mAngle += mSpeed * Time::DeltaTime();
			if (mAngle >= 360.0f) mAngle -= 360.0f;
		}
		else
		{
			mAngle -= mSpeed * Time::DeltaTime();
			if (mAngle >= 360.0f) mAngle += 360.0f;
		}
	}
	else
	{
		// 何もしない
	}
	// ベースクラスの更新処理
	CNumberFloor2::Update();
}