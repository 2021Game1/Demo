#include "CCutInClear.h"
#include "Maths.h"



// コンストラクタ
CCutInClear::CCutInClear()
	: mCutInStep(0)
	, mElapsedTime(0.0f)
	, mCenterPos(CVector::zero)
	, mStartAngleY(0.0f)
	, mStartAngleZ(0.0f)
{

}

// デストラクタ
CCutInClear::~CCutInClear()
{

}

// カットイン開始
bool CCutInClear::Start()
{
	// ベースのカットイン開始処理
	if (!CCutInCamera::Start()) return false;

	// カットイン時に使用する変数などの初期化
	mCutInStep = 0;
	mElapsedTime = 0.0f;

	return true;
}

// カットイン終了
bool CCutInClear::End()
{
	// ベースのカットイン終了処理
	if (!CCutInCamera::End()) return false;

	return true;
}

// カットインに必要な情報を設定
void CCutInClear::Setup(CObjectBase* obj)
{
	// 設定されたオブジェクトの位置を中心地点とする
	mCenterPos = obj->Position();
	// 設定されたオブジェクトの現在のY軸の角度を取得
	mStartAngleY = obj->EulerAngles().Y();

	mStartAngleZ = obj->EulerAngles().Z();

	mObject = obj;
}

#define CUTIN_TIME 10.0f
#define START_ANGLE -360.0f
#define END_ANGLE 120.0f
#define START_Y 25.0f
#define END_Y 65.5f
#define START_DIST 45.0f
#define END_DIST 130.0f
#define WAIT_TIME 1.0f

// ステップ0 カメラの回転
void CCutInClear::CutInStep0()
{
	// カットインの時間が経過するにつれてカメラを移動させます
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

		mAt = mCenterPos;
		mEye = (mCenterPos + offsetPos) + CVector(cosf(radAng), 0.0f, sinf(radAng)) * dist;

		mElapsedTime += Time::DeltaTime();
	}
	else
	{
		CVector offsetPos = CVector::zero;
		offsetPos.Y(END_Y);
		float radAng = Math::DegreeToRadian(mStartAngleY + END_ANGLE);
		float dist = END_DIST;

		mAt = mCenterPos;
		mEye = (mCenterPos + offsetPos) + CVector(cosf(radAng), 0.0f, sinf(radAng)) * dist;

		// 何もしない。カメラの位置を変更しない
		mCutInStep++;
		mElapsedTime = 0.0f;
	}
}

// ステップ0 カットイン終了時の待ち
void CCutInClear::CutInStep1()
{
	if (mElapsedTime < 6.0f)
	{
		mElapsedTime += Time::DeltaTime();
	}
	else
	{
		mCutInStep = 0;
		//End();
	}
}

// 更新
void CCutInClear::Update()
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