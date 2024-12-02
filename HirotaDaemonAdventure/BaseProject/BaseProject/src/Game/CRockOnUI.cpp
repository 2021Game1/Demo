#include "CRockOnUI.h"
#include "Maths.h"
#include "CImage.h"
#include "CCamera.h"
#include "CPlayer.h"
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
CRockOnUI::CRockOnUI(std::string path)
	: mCenterRatio(0.0f, 0.0f)
{
	// ロックオン可能画像&ロックオン画像
	mpCanRockOn = new CImage
	(
		path.c_str(),
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eGame,
		false,
		false
	);
	CVector2 size(100.0f, 100.0f);
	mpCanRockOn->SetSize(size);
	mpCanRockOn->SetCenter(size * 0.5f);
	SetShow(false);
}

// デストラクタ
CRockOnUI::~CRockOnUI()
{
	SAFE_DELETE(mpCanRockOn);
}

// 削除
void CRockOnUI::Kill()
{
	CTask::Kill();
}

// 表示するかどうかを設定
void CRockOnUI::SetShow(bool isShow)
{
	CTask::SetShow(isShow);

	// ゲージの表示設定と同時に、
	// ゲージで使用するUIの表示設定も変更する
	mpCanRockOn->SetShow(isShow);
}

// 中心座標を設定
void CRockOnUI::SetCeneterRatio(const CVector2& ratio)
{
	mCenterRatio = ratio;
}

// ワールド座標を設定
void CRockOnUI::SetWorldPos(const CVector& worldpos)
{
	// 現在のカメラを取得
	CCamera* cam = CCamera::CurrentCamera();
	if (cam == nullptr) return;

	// 設定されたワールド座標をスクリーン座標に変換
	CVector screenPos = cam->WorldToScreenPos(worldpos);

	// 設定されたワールド座標がカメラの背後であれば、
	// ゲージを表示しない
	if (screenPos.Z() < 0.0f)
	{
		SetShow(false);
		printf("ssetshow:%s\n", IsShow() ? "true" : "false");
		return;
	}

	//// スクリーン座標が表示可能範囲内であれば表示
	//if (screenPos.X() >= 0.0f && screenPos.X() <= 1.0f && screenPos.Y() >= 0.0f && screenPos.Y() <= 1.0f)
	//{
	//	SetShow(true);
	//}
	//else
	//{
	//	SetShow(false);
	//}

	// 求めたスクリーン座標を自身の座標に設定
	mPosition = screenPos;
}

// 更新処理
void CRockOnUI::Update()
{
	mpCanRockOn->SetPos(mPosition);
	//mpCanRockOn->SetSize(CVector2(50.0f, 50.0f) * mScale);

	//// フレームの中心位置
	//mpCanRockOn->SetCenter
	//(
	//	50.0f * mCenterRatio.X() * mScale,
	//	50.0f * mCenterRatio.Y() * mScale
	//);
	mpCanRockOn->SetShow(IsShow());
}

// 描画処理
void CRockOnUI::Render()
{
	mpCanRockOn->Render();
}
