#include "CStaminaGauge.h"
#include "Maths.h"
#include "CImage.h"

#define STAMINA_IMAGE "UI\\Sutamina.png"

// CUIgaugeと一緒
// フレームの線の幅
#define FRAME_BORDER	(1.0f)
// バーの横サイズ
#define NEW_BAR_SIZE_X	(339.0f)
// バーの縦サイズ
#define NEW_BAR_SIZE_Y	(31.5f)


// スタミナの横サイズ * 線の幅
#define SUTAMINA_SIZE_X (NEW_BAR_SIZE_X - FRAME_BORDER) //*2.0f
// スタミナの縦サイズ * 線の幅
#define SUTAMINA_SIZE_Y (NEW_BAR_SIZE_Y - FRAME_BORDER)

// スタミナポジション横
#define SUTAMINAPOSITION_X	(488.5f)
// スタミナポジション縦
#define SUTAMINAPOSITION_Y	(632.0f)

#define VERTICAL_SHAKE_AMOUNT 20.0f

#define CHANGE_SPEED 3.0f

CStaminaGauge::CStaminaGauge()
	: mMaxSutaminaValue(150)
	, mSutaminaValue(150)
{
	mpStaminaImage = new CImage("PStamina");
	mpStaminaImage->SetSize(SUTAMINA_SIZE_X, SUTAMINA_SIZE_Y);
	mpStaminaImage->SetUV(0, 1, 1, 0);
}

CStaminaGauge::~CStaminaGauge()
{
}

// フレームを削除
void CStaminaGauge::Kill()
{
	CTask::Kill();
	mpStaminaImage->Kill();
}

// 表示するかどうかを設定
void CStaminaGauge::SetShow(bool isShow)
{
	CTask::SetShow(isShow);

	// ゲージの表示設定と同時に、
	// ゲージで使用するUIの表示設定も変更する
	mpStaminaImage->SetShow(isShow);
}

void CStaminaGauge::Update()
{
	// スタミナゲージのポジション
	mpStaminaImage->SetPos(mPosition + CVector2(SUTAMINAPOSITION_X, SUTAMINAPOSITION_Y));
	mpStaminaImage->SetUV(0, 1, 1, 0);

	// スタミナのサイズを最大値と現在地から求める
	float percent_sutamina = Math::Clamp01((float)mSutaminaValue / mMaxSutaminaValue);
	CVector2 sizesutamina = CVector2(SUTAMINA_SIZE_X, SUTAMINA_SIZE_Y);
	sizesutamina.X(SUTAMINA_SIZE_X * percent_sutamina);
	mpStaminaImage->SetSize(sizesutamina);

	// スタミナの割合でバーの色を変更
	CColor colorsutamina;
	// 10%以下
	if (percent_sutamina <= 0.2f) colorsutamina = CColor(1.0f, 0.0f, 0.0f);
	// 50%以下
	else if (percent_sutamina <= 0.5f) colorsutamina = CColor(0.9f, 0.3f, 0.5f);
	// それ以外
	else colorsutamina = CColor(1.0f, 1.0f, 0.0f);
	// バーに色を設定
	mpStaminaImage->SetColor(colorsutamina);

	////////////////////////////////////////////////////////////////////////////////////////////////

	//// スタミナゲージのポジション
	//mpStaminaImage->SetPos(mPosition + CVector2(SUTAMINAPOSITION_X, SUTAMINAPOSITION_Y));


	//// バーのサイズを目標のサイズに向かって変化させる
	//float targetPercent = Math::Clamp01((float)mSutaminaValue / mMaxSutaminaValue);
	//float currentPercent = Math::Clamp01(mpStaminaImage->GetSize().X() / NEW_BAR_SIZE_X);
	//float newPercent = Math::Lerp(currentPercent, targetPercent, Time::DeltaTime() * CHANGE_SPEED);

	//CColor colorSutamina;

	//const float epsilon = 0.0001f;
	//float verticalOffset = 0.0f;
	//if (targetPercent < currentPercent - epsilon) {

	//	verticalOffset = Math::Rand(-1.5f, 1.5f) * VERTICAL_SHAKE_AMOUNT;
	//}
	//else {
	//	// 10%以下
	//	if (targetPercent <= 0.2f) {
	//		colorSutamina = CColor(1.0f, 0.0f, 0.0f);
	//	}
	//	// 50%以下
	//	else if (targetPercent <= 0.5f) {
	//		colorSutamina = CColor(0.9f, 0.3f, 0.5f);
	//	}
	//	// それ以外
	//	else {
	//		colorSutamina = CColor(0.0f, 1.0f, 0.0f);
	//	}
	//}


	//// バーに色を設定
	//mpStaminaImage->SetColor(colorSutamina);
	//CVector2 position = mPosition + CVector2(SUTAMINAPOSITION_X, SUTAMINAPOSITION_Y + verticalOffset);
	//mpStaminaImage->SetPos(position);
	//CVector2 size = CVector2(SUTAMINA_SIZE_X * newPercent, SUTAMINA_SIZE_Y);
	//mpStaminaImage->SetSize(size);
}

// スタミナ最大値
void CStaminaGauge::SetSutaminaMaxValue(int value_st)
{
	mMaxSutaminaValue = value_st;
}

// スタミナ現在値
void CStaminaGauge::SetSutaminaValue(int value_st)
{
	mSutaminaValue = value_st;
}

void CStaminaGauge::SetPor(float per)
{

}