#include "CUIGauge.h"
#include "Maths.h"
#include "CImage.h"

// フレームの線の幅
#define FRAME_BORDER	(1.0f)

// フレームの横サイズ
#define FRAME_SIZE_X	(426.0f)	//(50.0f)
// フレームの縦サイズ
#define FRAME_SIZE_Y	(62.0f)		//(32.0f)

// バーの横サイズ
#define NEW_BAR_SIZE_X	(339.0f)
// バーの縦サイズ
#define NEW_BAR_SIZE_Y	(31.5f)

// バーの横サイズ * 線の幅
#define BAR_SIZE_X (NEW_BAR_SIZE_X - FRAME_BORDER) //*2.0f
// バーの縦サイズ * 線の幅
#define BAR_SIZE_Y (NEW_BAR_SIZE_Y - FRAME_BORDER)

// フレームポジション横
#define FRAMEPOSITION_X		(400.0f)
// フレームポジション縦
#define FRAMEPOSITION_Y		(600.0f)

// ゲージポジション横
#define BARPOSITION_X		(488.5f)
// ゲージポジション縦
#define BARPOSITION_Y		(600.0f)

#define VERTICAL_SHAKE_AMOUNT 20.0f

#define CHANGE_SPEED 0.7f

#define DAMAGE_DELAY 0.1f


CUIGauge::CUIGauge()
    : mMaxValue(100)
    , mValue(100)
    , mElapsedTime(0.0f)
	, mGauge(false)
	, mDamaged(false)
	, mStartDamaged(false)
{
	mpFrameImage = new CImage("PFrame");
	mpFrameImage->SetSize(FRAME_SIZE_X, FRAME_SIZE_Y);
	mpFrameImage->SetUV(0, 0, 1, 1);

	mpDecreaseBarImage = new CImage("PBarImage");
	mpDecreaseBarImage->SetSize(BAR_SIZE_X, BAR_SIZE_Y);
	mpDecreaseBarImage->SetUV(438, 0, 500, 62);

	mpBarImage = new CImage("PBarImage");
	mpBarImage->SetSize(BAR_SIZE_X, BAR_SIZE_Y);
	mpBarImage->SetUV(438, 0, 500, 62);
}

// デストラクタ
CUIGauge::~CUIGauge()
{

}

// フレームを削除
void CUIGauge::Kill()
{
	CTask::Kill();
	mpBarImage->Kill();
	mpFrameImage->Kill();
	mpDecreaseBarImage->Kill();
}

// 表示するかどうかを設定
void CUIGauge::SetShow(bool isShow)
{
	CTask::SetShow(isShow);

	// ゲージの表示設定と同時に、
	// ゲージで使用するUIの表示設定も変更する
	mpBarImage->SetShow(isShow);
	mpFrameImage->SetShow(isShow);
	mpDecreaseBarImage->SetShow(isShow);
}

// 更新処理
void CUIGauge::Update()
{
	// ゲージの差分
	mpDecreaseBarImage->SetPos(mPosition + CVector2(BARPOSITION_X, BARPOSITION_Y));
	// バーのサイズを目標のサイズに向かって変化させる
	float targetPercent = Math::Clamp01((float)mValue / mMaxValue);
	float currentPercent = Math::Clamp01(mpDecreaseBarImage->GetSize().X() / BAR_SIZE_X);
	float newPercent = Math::Lerp(currentPercent, targetPercent, Time::DeltaTime() * CHANGE_SPEED);

	// HPの割合でバーの色を変更
	CColor color2;
	// HPが減少している場合は赤色に設定
	if (targetPercent < currentPercent)
	{
		mGauge = true;
		color2 = CColor(0.9f, 0.2f, 0.0f); // 赤色に設定
		if (mGauge)
		{
			// 2秒経過後にサイズを更新
			// バーのサイズを更新
			CVector2 size = CVector2(BAR_SIZE_X * newPercent, BAR_SIZE_Y);
			mpDecreaseBarImage->SetSize(size);
		}
		else
		{
			CVector2 size2 = CVector2(BAR_SIZE_X * targetPercent, BAR_SIZE_Y);
			mpDecreaseBarImage->SetSize(size2);
		}
	}
	else
	{
		CVector2 size2 = CVector2(BAR_SIZE_X * targetPercent, BAR_SIZE_Y);
		mpDecreaseBarImage->SetSize(size2);
	}

	// サイズが目標に達した場合、mElapsedTimeをリセット
	if (fabs(targetPercent - currentPercent) < 0.010000)
	{
		mGauge = false;
		mElapsedTime = 0.0f;
	}
	/*CDebugPrint::Print("mGauge: %s\n", mGauge ? "true" : "false");
	CDebugPrint::Print("mDamaged: %s\n", mDamaged ? "true" : "false");
	CDebugPrint::Print("mStartDamaged: %s\n", mStartDamaged ? "true" : "false");
	CDebugPrint::Print("mElapsedTime: %f\n", mElapsedTime);
	CDebugPrint::Print("targetPercent: %f\n", targetPercent);
	CDebugPrint::Print("currentPercent: %f\n", currentPercent);*/

	// 差分に色を設定
	mpDecreaseBarImage->SetColor(color2);

	CVector2 position = mPosition + CVector2(BARPOSITION_X, BARPOSITION_Y);
	mpDecreaseBarImage->SetPos(position);


	// フレーム位置を設定
	mpFrameImage->SetPos(mPosition + CVector2(FRAMEPOSITION_X, FRAMEPOSITION_Y));
	// ゲージ
	mpBarImage->SetPos(mPosition + CVector2(BARPOSITION_X, BARPOSITION_Y));

    // ゲージサイズを最大値と現在地から求める
    float percent = Math::Clamp01((float)mValue / mMaxValue);

	
	// HPの割合でゲージの色を変更
	//CColor color;
	//// 10%以下
	//if (percent <= 0.2f) color = CColor(1.0f, 0.0f, 0.0f);
	//// 50%以下
	//else if (percent <= 0.5f) color = CColor(0.9f, 0.3f, 0.5f);
	//// それ以外
	//else color = CColor(0.0f, 1.0f, 0.0f);
	//// ゲージに色を設定
	//mpBarImage->SetColor(color);
	mpBarImage->SetColor(CColor(0.0f, 1.0f, 0.0f));

    CVector2 size2 = CVector2(BAR_SIZE_X * percent, BAR_SIZE_Y);
    mpBarImage->SetSize(size2);
    CVector2 position2 = mPosition + CVector2(BARPOSITION_X, BARPOSITION_Y);
    mpBarImage->SetPos(position2);
}

// 最大値
void CUIGauge::SetMaxValue(int value)
{
	mMaxValue = value;
}

// 現在地を設定
void CUIGauge::SetValue(int value)
{
	mValue = value;
}

void CUIGauge::SetPor(float per)
{

}