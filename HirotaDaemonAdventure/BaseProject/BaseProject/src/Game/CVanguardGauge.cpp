#include "CVanguardGauge.h"
#include "Maths.h"
#include "CImage.h"
#include "CPlayer.h"

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

#define CHANGE_SPEED 3.0f


CVanguardGauge::CVanguardGauge()
	: mMaxValue(100)
	, mValue(100)
	, mScale(0.0f)
{
	mpBarImage = new CImage("PBarImage");
	mpBarImage->SetSize(BAR_SIZE_X, BAR_SIZE_Y);
	mpBarImage->SetUV(438, 0, 500, 62);
}

// デストラクタ
CVanguardGauge::~CVanguardGauge()
{

}

// フレームを削除
void CVanguardGauge::Kill()
{
	CTask::Kill();
	mpBarImage->Kill();
}

// 表示するかどうかを設定
void CVanguardGauge::SetShow(bool isShow)
{
	CTask::SetShow(isShow);

	// ゲージの表示設定と同時に、
	// ゲージで使用するUIの表示設定も変更する
	mpBarImage->SetShow(isShow);
}


// 更新処理
void CVanguardGauge::Update()
{
	// ゲージのフレームとバーの位置を設定
	mpBarImage->SetPos(mPosition + CVector2(BARPOSITION_X, 10.0f));


	// バーのサイズを目標のサイズに向かって変化させる
	float targetPercent = Math::Clamp01((float)mValue / mMaxValue);
	float currentPercent = Math::Clamp01(mpBarImage->GetSize().X() / BAR_SIZE_X);
	float newPercent = Math::Lerp(currentPercent, targetPercent, Time::DeltaTime() * CHANGE_SPEED);


	// HPの割合でバーの色を変更
	CColor color;
	// HPが減少している場合は赤色に設定

	// ある程度の誤差を許容する値
	const float epsilon = 0.0001f;
	// ゲージを揺らす
	float verticalOffset = 0.0f;
	if (targetPercent < currentPercent - epsilon) {

		verticalOffset = Math::Rand(-1.5f, 1.5f) * VERTICAL_SHAKE_AMOUNT;
		color = CColor(1.0f, 0.0f, 0.0f);
	}
	// それ以外の場合はHPの割合に応じて色を設定
	else {
		// 10%以下
		if (targetPercent <= 0.2f) {
			color = CColor(1.0f, 0.0f, 0.0f);
		}
		// 50%以下
		else if (targetPercent <= 0.5f) {
			color = CColor(0.9f, 0.3f, 0.5f);
		}
		// それ以外
		else {
			color = CColor(0.0f, 1.0f, 0.0f);
		}
	}


	// バーに色を設定
	mpBarImage->SetColor(color);
	CVector2 position = mPosition + CVector2(BARPOSITION_X, 10.0f + verticalOffset);
	mpBarImage->SetPos(position);
	CVector2 size = CVector2(BAR_SIZE_X * newPercent, BAR_SIZE_Y);
	mpBarImage->SetSize(size);

}

// ワールド座標を設定
void CVanguardGauge::SetWorldPos(const CVector& worldPos)
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
	if (dist <= 130.0f)
	{
		// カメラから離れるごとにスケール値を小さくする
		float ratio = Math::Clamp01((dist - 50.0f) / (130.0f - 50.0f));
		mScale = Math::Lerp(0.8f, 1.0f, ratio);
		SetShow(true);
	}
	// カメラとの距離が遠い場合は、非表示
	else
	{
		SetShow(false);
	}

}

// 最大値
void CVanguardGauge::SetMaxValue(int value)
{
	mMaxValue = value;
}

// 現在地を設定
void CVanguardGauge::SetValue(int value)
{
	mValue = value;
}

void CVanguardGauge::SetPor(float per)
{

}