#include "CYukariFrame.h"
#include "Maths.h"
#include "CImage.h"
#include "CCamera.h"
#include "CPlayer.h"


// フレームの線の幅
#define FRAME_BORDER	(1.0f)

// フレームの横サイズ
#define FRAME_SIZE_X	(100.0f)		//(50.0f)
// フレームの縦サイズ
#define FRAME_SIZE_Y	(15.0f)		//(32.0f)


// スケール値計算時のカメラとの距離の最小値
#define SCALE_DIST_MIN 50.0f
// スケール値計算時のカメラとの距離の最大値
#define SCALE_DIST_MAX 100.0f
// スケール値の最小値
#define SCALE_MIN 0.8f
// スケール値の最大値
#define SCALE_MAX 1.0f


#define DISTANCE_MIN 0.5f
#define DISTANCE_MAX 10.0f

CYukariFrame::CYukariFrame()
	: mCenterRatio(0.0f, 0.0f)
	, mScale(0.0f)
{
	mpFrameImage = new CImage("YFrame");
	mpFrameImage->SetSize(FRAME_SIZE_X, FRAME_SIZE_Y);
	mpFrameImage->SetUV(0, 0, 1, 1);

}

// デストラクタ
CYukariFrame::~CYukariFrame()
{

}

// フレームを削除
void CYukariFrame::Kill()
{
	CTask::Kill();
	mpFrameImage->Kill();
}

// 表示するかどうかを設定
void CYukariFrame::SetShow(bool isShow)
{
	CTask::SetShow(isShow);

	// ゲージの表示設定と同時に、
	// ゲージで使用するUIのひょじ設定も変更する
	mpFrameImage->SetShow(isShow);
}

// 中心位置の割合を設定
void CYukariFrame::SetCenterRatio(const CVector2& ratio)
{
	mCenterRatio = ratio;
}

// ワールド座標を設定
void CYukariFrame::SetWorldPos(const CVector& worldPos)
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

	float distanceToPlayer = (worldPos - playerPos).Length();
	if (distanceToPlayer < 100.0f)
	{
		SetShow(true);
	}
	else
	{
		SetShow(false);
	}

	// 求めたスクリーン座標を自身の座標に設定
	mPosition = screenPos;

	// 設定されたワールド座標とカメラの距離を求める
	float dist = (worldPos - cam->Position()).Length();

	// カメラから離れるごとにスケール値を小さくする
	float ratio = Math::Clamp01((dist - SCALE_DIST_MIN) / (SCALE_DIST_MAX - SCALE_DIST_MIN));
	mScale = Math::Lerp(SCALE_MIN, SCALE_MAX, ratio);
}

void CYukariFrame::Update()
{
	// フレーム位置を設定
	//CVector2 pos = mPosition - CVector2(FRAME_SIZE_X, 0.0f) * 0.5f;
	mpFrameImage->SetPos(mPosition);
	mpFrameImage->SetSize(CVector2(FRAME_SIZE_X, FRAME_SIZE_Y) * mScale);
	mpFrameImage->SetShow(IsShow());


	// フレームの中心位置
	mpFrameImage->SetCenter
	(
		FRAME_SIZE_X * mCenterRatio.X() * mScale,
		FRAME_SIZE_Y * mCenterRatio.Y() * mScale
	);
}