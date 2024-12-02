#include "CCutInTest.h"
#include "Maths.h"

#define CUTIN_TIME 30.0f
#define START_ANGLE 0.0f
#define END_ANGLE 90.0f
#define START_Y 0.0f
#define END_Y 15.0f
#define START_DIST 5.0f
#define END_DIST 30.0f
#define WAIT_TIME 1.0f

// コンストラクタ
CCutInTest::CCutInTest()
	: mCutInStep(0)
	, mElapsedTime(0.0f)
	, mCenterPos(CVector::zero)
	, mStartAngleY(0.0f)
{

}

// デストラクタ
CCutInTest::~CCutInTest()
{

}

// カットイン開始
bool CCutInTest::Start()
{
	// ベースのカットイン開始処理
	if (!CCutInCamera::Start()) return false;

	// カットイン時に使用する変数などの初期化
	mCutInStep = 0;
	mElapsedTime = 0.0f;

	return true;
}

// カットイン終了
bool CCutInTest::End()
{
	// ベースのカットイン終了処理
	if (!CCutInCamera::End()) return false;

	return true;
}

// カットインに必要な情報を設定
void CCutInTest::Setup(CObjectBase* obj)
{
	// 設定されたオブジェクトの位置を中心地点とする
	mCenterPos = obj->Position();
	// 設定されたオブジェクトの現在のY軸の角度を取得
	mStartAngleY = obj->EulerAngles().Y();
}

// ステップ0 カメラの回転
void CCutInTest::CutInStep0()
{
	if (mElapsedTime < CUTIN_TIME)
	{
		float per = mElapsedTime / CUTIN_TIME;

		CVector offsetPos = CVector::zero;
		float offsetY = Math::Lerp(START_Y, END_Y, per);
		offsetPos.Y(offsetY);

		float startAng = mStartAngleY + START_ANGLE;
		float endAng = mStartAngleY + END_ANGLE;
		float angle = Math::Lerp(startAng, endAng, per);
		float radAng = Math::DegreeToRadian(angle);

		float dist = Math::Lerp(START_DIST, END_DIST, per);

		mAt = mCenterPos + offsetPos;
		mEye = mAt + CVector(cosf(radAng), 0.0f, sinf(radAng)) * dist;

		mElapsedTime += Time::DeltaTime();
	}
	else
	{
		CVector offsetPos = CVector::zero;
		offsetPos.Y(END_Y);
		float radAng = Math::DegreeToRadian(mStartAngleY + END_ANGLE);
		float dist = END_DIST;

		mAt = mCenterPos + offsetPos;
		mEye = mAt + CVector(cosf(radAng), 0.0f, sinf(radAng)) * dist;

		mCutInStep++;
		mElapsedTime = 0.0f;
	}
}

// ステップ0 カットイン終了時の待ち
void CCutInTest::CutInStep1()
{
	if (mElapsedTime < WAIT_TIME)
	{
		mElapsedTime += Time::DeltaTime();
	}
	else
	{
		mCutInStep = 0;
		End();
	}
}

// 更新
void CCutInTest::Update()
{
	// カットイン再生中でなければ、処理しない
	if (!mIsPlaying) return;

	switch (mCutInStep)
	{
	case 0:
		CutInStep0();
		break;
	case 1:
		CutInStep1();
		break;
	}

	// カメラの更新
	CCamera::Update();
}