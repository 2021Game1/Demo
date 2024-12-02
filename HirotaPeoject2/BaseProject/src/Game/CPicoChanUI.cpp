#include "CPicoChanUI.h"
#include "Maths.h"
#include "CImage.h"
#include "CCamera.h"
#include "CPlayer.h"

// スケール値計算時のカメラとの距離の最小値
#define SCALE_DIST_MIN 50.0f
// スケール値計算時のカメラとの距離の最大値
#define SCALE_DIST_MAX 200.0f
// スケール値の最小値
#define SCALE_MIN 0.8f
// スケール値の最大値
#define SCALE_MAX 1.0f

CPicoChanUI::CPicoChanUI()
	: mMaxValue(15)
	, mValue(15)
	, mCenterRatio(0.0f, 0.0f)
	, mScale(0.0f)
	, mGauge(false)
	, mElapsedTime(0.0f)
{
	mpFrameImage = new CImage("PicoFrame");
	mpFrameImage->SetSize(100.0f, 100.0f);
	mpFrameImage->SetUV(0, 0, 1, 1);

	mpBarImage = new CImage("PicoGauge");
	mpBarImage->SetSize(90.0f, 90.0f);
	mpBarImage->SetUV(0, 0, 1, 1);
	SetShow(false);
}

CPicoChanUI::~CPicoChanUI()
{

}

void CPicoChanUI::Kill()
{
	CTask::Kill();
	mpBarImage->Kill();
	mpFrameImage->Kill();
}

// 表示するかどうかを設定
void CPicoChanUI::SetShow(bool isShow)
{
	CTask::SetShow(isShow);

	// ゲージの表示設定と同時に、
	// ゲージで使用するUIの表示設定も変更する
	mpBarImage->SetShow(isShow);
	mpFrameImage->SetShow(isShow);
}

void CPicoChanUI::SetCenterRatio(const CVector2& ratio)
{
	mCenterRatio = ratio;
}

// ワールド座標を設定
void CPicoChanUI::SetWorldPos(const CVector& worldPos)
{
	// 現在のカメラを取得
	CCamera* cam = CCamera::CurrentCamera();
	if (cam == nullptr) return;

	CVector playerPos = CPlayer::Instance()->Position();

	// 設定されたワールド座標をスクリーン座標に変換
	CVector screenPos = cam->WorldToScreenPos(worldPos);

	// 設定されたワールド座標がカメラの背後であれば、
	// ゲージを表示しない
	if (screenPos.Z() < 0.0f)
	{
		SetShow(false);
		return;
	}

	// 求めたスクリーン座標を自身の座標に設定
	mPosition = screenPos;

	// 設定されたワールド座標とカメラの距離を求める
	float dist = (worldPos - cam->Position()).Length();

	// カメラとの距離がある程度近い場合は
	if (dist <= SCALE_DIST_MAX)
	{
		// カメラから離れるごとにスケール値を小さくする
		float ratio = Math::Clamp01((dist - SCALE_DIST_MIN) / (SCALE_DIST_MAX - SCALE_DIST_MIN));
		mScale = Math::Lerp(SCALE_MIN, SCALE_MAX, ratio);
		SetShow(true);
	}
	// カメラとの距離が遠い場合は、非表示
	else
	{
		SetShow(false);
	}
}

// 更新処理
void CPicoChanUI::Update()
{
	mpFrameImage->SetPos(mPosition);
	mpFrameImage->SetSize(CVector2(100.0f, 100.0f) * mScale);

	// フレームの中心位置
	mpFrameImage->SetCenter
	(
		100.0f * mCenterRatio.X() * mScale,
		100.0f * mCenterRatio.Y() * mScale
	);

	// ゲージの位置を設定
	CVector2 pos = mPosition;
	pos.X(pos.X() - 90.0f * mCenterRatio.X() * mScale);
	mpBarImage->SetPos(pos + CVector2(0.0f, 5.0f) * mScale);


	// ゲージサイズを最大値と現在地から求める
	float percent = Math::Clamp01((float)mValue / mMaxValue);
	CVector2 size = CVector2(90.0f * percent, 90.0f) * mScale;
	mpBarImage->SetSize(size);

	// ゲージの中心位置を設定
	mpBarImage->SetCenter
	(
		0.0f,
		90.0f * mCenterRatio.Y() * mScale
	);

	// HPの割合でゲージの色を変更
	CColor color;
	// 10%以下
	if (percent <= 0.2f) color = CColor(1.0f, 0.0f, 0.0f);
	// 50%以下
	else if (percent <= 0.5f) color = CColor(0.9f, 0.3f, 0.5f);
	// それ以外
	else color = CColor(0.0f, 1.0f, 0.0f);
	// ゲージに色を設定
	mpBarImage->SetColor(color);
}

// 最大値
void CPicoChanUI::SetMaxValue(int value)
{
	mMaxValue = value;
}

// 現在地を設定
void CPicoChanUI::SetValue(int value)
{
	mValue = value;
}