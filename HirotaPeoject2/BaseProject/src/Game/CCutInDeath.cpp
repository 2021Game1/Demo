#include "CCutInDeath.h"
#include "Maths.h"

#define CUTIN_TIME 4.0f
#define START_ANGLE 0.0f
#define END_ANGLE 90.0f
#define START_Y 0.0f
#define END_Y 15.0f
#define START_DIST 5.0f
#define END_DIST 30.0f
#define WAIT_TIME 1.0f

// コンストラクタ
CCutInDeath::CCutInDeath()
	: mCutInStep(0)
	, mElapsedTime(0.0f)
	, mCenterPos(CVector::zero)
	, mStartAngleY(0.0f)
{

}

// デストラクタ
CCutInDeath::~CCutInDeath()
{

}

// カットイン開始
bool CCutInDeath::Start()
{
	// ベースのカットイン開始処理
	if (!CCutInCamera::Start()) return false;

	// カットイン時に使用する変数などの初期化
	mCutInStep = 0;
	mElapsedTime = 0.0f;

	return true;
}

// カットイン終了
bool CCutInDeath::End()
{
	// ベースのカットイン終了処理
	if (!CCutInCamera::End()) return false;

	return true;
}

// カットインに必要な情報を設定
void CCutInDeath::Setup(CObjectBase* obj)
{
	// 設定されたオブジェクトの位置を中心地点とする
	mCenterPos = obj->Position();
	// 設定されたオブジェクトの現在のY軸の角度を取得
	mStartAngleY = obj->EulerAngles().Y();
}

// ステップ0 カメラの回転
void CCutInDeath::CutInStep0()
{
	if (mElapsedTime < CUTIN_TIME)
	{
		float per = mElapsedTime / CUTIN_TIME;

		// カメラの高さを上昇させる
		CVector offsetPos = CVector::down;
		float offsetY = Math::Lerp(50.0f, 100.0f, per);
		mAt = mCenterPos + offsetPos;

		// カメラの位置を設定する
		float angleY = Math::Lerp(mStartAngleY, mStartAngleY + 90.0f, per);
		float radians = Math::DegreeToRadian(angleY);
		float radius = 80.0f; // 仮の半径
		mEye = CVector(mCenterPos.X() + radius * sin(radians),
			mCenterPos.Y() + offsetY,
			mCenterPos.Z() + radius * cos(radians));

		mElapsedTime += Time::DeltaTime();
	}
	else
	{
		mCutInStep++;
		mElapsedTime = 0.0f;
	}
}

// ステップ0 カットイン終了時の待ち
void CCutInDeath::CutInStep1()
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
void CCutInDeath::Update()
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