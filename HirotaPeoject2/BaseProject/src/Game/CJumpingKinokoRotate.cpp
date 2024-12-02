#include "CJumpingKinokoRotate.h"
#include "Maths.h"

// コンストラクタ
CJumpingKinokoRotate::CJumpingKinokoRotate(const CVector& pos, const CVector& scale, const CVector& rot,
	float angle, float dist, float speed, bool rotateangle,
	std::string modelPath)
	: CJumpingKinoko(pos, scale, rot, modelPath)
	, mAngle(angle)
	, mDistance(dist)
	, mDefaultPos(pos)
	, mSpeed(speed)
	, mElapsedTime(0.0f)
{
	mRotateAngle = rotateangle;
}

// デストラクタ
CJumpingKinokoRotate::~CJumpingKinokoRotate()
{
}

// 更新処理
void CJumpingKinokoRotate::Update()
{
	// ベースクラスの更新処理
	CJumpingKinoko::Update();

	// 回転
	CVector pos =  CVector::zero;
	pos.X(cosf(Math::DegreeToRadian(mAngle)) * mDistance);
	pos.Z(sinf(Math::DegreeToRadian(mAngle)) * mDistance);
	pos.Y(0.0f);
	Position(mDefaultPos + pos);

	// 向き
	/*CVector dir = Position();
	dir.Y(0.0f);
	dir.Normalized();
	Rotation(CQuaternion::LookRotation(dir));*/
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