#include "CCircleNbFl1.h"
#include "Maths.h"

// コンストラクタ
CCircleNbFl1::CCircleNbFl1(const CVector& pos, const CVector& scale, const CVector& rot,
	float angle, float dist, float speed, bool rotateangle,
	std::string modelPath)
	: CNumberFloor1(pos, scale, rot)
	, mAngle(angle)
	, mDistance(dist)
	, mDefaultPos(pos)
	, mSpeed(speed)
	, mElapsedRotateTime(0.0f)
{
	mRotateAngle = rotateangle;
}

// デストラクタ
CCircleNbFl1::~CCircleNbFl1()
{
}

// 更新処理
void CCircleNbFl1::Update()
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
	CNumberFloor1::Update();
}