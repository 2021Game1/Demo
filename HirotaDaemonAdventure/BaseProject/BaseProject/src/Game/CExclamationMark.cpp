#include "CExclamationMark.h"
#include "Maths.h"
#include "CImage.h"
#include "CPlayer.h"
#include "CSoldier.h"
#include "CStageManager.h"

// スケール値計算時のカメラとの距離の最小値
#define SCALE_DIST_MIN 50.0f
// スケール値計算時のカメラとの距離の最大値
#define SCALE_DIST_MAX 200.0f
// スケール値の最小値
#define SCALE_MIN 0.8f
// スケール値の最大値
#define SCALE_MAX 1.0f

// コンストラクタ
CExclamationMark::CExclamationMark()
	: mScale(0.0f)
	, mCenterRatio(0.0f, 0.0f)
{
	// ビックリマーク画像取得
	mpExclamationMark = new CImage("ExclamationMark");
	mpExclamationMark->SetSize(50.0f, 50.0f);
	mpExclamationMark->SetUV(0, 0, 1, 1);

	// 最初は非表示にしておく
	SetShow(false);
}

// デストラクタ
CExclamationMark::~CExclamationMark()
{
	CStageManager::RemoveTask(this);
}

// 削除
void CExclamationMark::Kill()
{
	CTask::Kill();
	mpExclamationMark->Kill();
}

// 表示するかどうかを設定
void CExclamationMark::SetShow(bool isShow)
{
	CTask::SetShow(isShow);

	// ゲージの表示設定と同時に、
	// ゲージで使用するUIのひょじ設定も変更する
	mpExclamationMark->SetShow(isShow);
}

// 中心位置を設定
void CExclamationMark::SetCeneterRatio(const CVector2& ratio)
{
	mCenterRatio = ratio;
}

// ワールド座標を設定
void CExclamationMark::SetWorldPos(const CVector& worldPos)
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
void CExclamationMark::Update()
{
	// フレーム位置を設定
	//CVector2 pos = mPosition - CVector2(FRAME_SIZE_X, 0.0f) * 0.5f;
	mpExclamationMark->SetPos(mPosition);
	mpExclamationMark->SetSize(CVector2(50.0f, 50.0f) * mScale);


	// フレームの中心位置
	mpExclamationMark->SetCenter
	(
		50.0f * mCenterRatio.X() * mScale,
		50.0f * mCenterRatio.Y() * mScale
	);
}