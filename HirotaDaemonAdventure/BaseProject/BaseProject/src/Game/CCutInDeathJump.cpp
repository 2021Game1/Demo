#include "CCutInDeathJump.h"
#include "Maths.h"
#include "CResultAnnouncement.h"

// 死亡ジャンプカメラのインスタンス
CCutInDeathJump* CCutInDeathJump::spInstance = nullptr;

CCutInDeathJump* CCutInDeathJump::Instance()
{
	if (spInstance == nullptr)
	{
		spInstance = new CCutInDeathJump();
	}
	return spInstance;
}

// コンストラクタ
CCutInDeathJump::CCutInDeathJump()
	: mCutInStep(0)
	, mElapsedTime(0.0f)
	, mCenterPos(CVector::zero)
	, mStartAngleY(0.0f)
{
	// インスタンスの設定
	spInstance = this;
}

// デストラクタ
CCutInDeathJump::~CCutInDeathJump()
{
	spInstance = nullptr;
}

// カットイン開始
bool CCutInDeathJump::Start()
{
	// ベースのカットイン開始処理
	if (!CCutInCamera::Start()) return false;

	// カットイン時に使用する変数などの初期化
	mCutInStep = 0;
	mElapsedTime = 0.0f;

	return true;
}

// カットイン終了
bool CCutInDeathJump::End()
{
	// ベースのカットイン終了処理
	if (!CCutInCamera::End()) return false;

	return true;
}

// カットインに必要な情報を設定
void CCutInDeathJump::Setup(CObjectBase* obj)
{
	// 設定されたオブジェクトの位置を中心地点とする
	mCenterPos = obj->Position();
	// 設定されたオブジェクトの現在のY軸の角度を取得
	mStartAngleY = obj->EulerAngles().Y();

	mObject = obj;
}

#define CUTIN_TIME 6.2f
#define START_ANGLE 100.0f
#define END_ANGLE 100.0f
#define START_Y 0.0f
#define END_Y -10.0f
#define START_DIST 70.0f
#define END_DIST 70.0f
#define WAIT_TIME 1.0f

// ステップ0 カメラの回転
void CCutInDeathJump::CutInStep0()
{
	// カットインの時間が経過するにつれてカメラを移動させる
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

	CResultAnnouncement* result = CResultAnnouncement::Instance();
	bool resultEnd = result->IsResultOpened();
	if (resultEnd)
	{
		mCutInStep++;
	}
}

// ステップ1 カットイン終了時の待ち
void CCutInDeathJump::CutInStep1()
{
	mElapsedTime = 0.0f;
	mCutInStep = 0;
	End();
}

// 更新
void CCutInDeathJump::Update()
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