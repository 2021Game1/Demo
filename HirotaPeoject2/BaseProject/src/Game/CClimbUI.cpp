#include "CClimbUI.h"
#include "Maths.h"
#include "CImage.h"
#include "CCamera.h"
#include "CSignboard.h"
#include "CPlayer.h"

CClimbUI::CClimbUI()
	: mCenterRatio(0.0f, 0.0f)
	, mScale(0.0f)
{
	mpUI = new CImage("EUI");
	mpUI->SetSize(150.0f, 150.0f);
}

// デストラクタ
CClimbUI::~CClimbUI()
{

}

// 削除
void CClimbUI::Kill()
{
	CTask::Kill();
	mpUI->Kill();
}

void CClimbUI::SetCenterRatio(const CVector2& ratio)
{
	mCenterRatio = ratio;
}

void CClimbUI::SetWorldPos(const CVector& worldPos)
{
	// 現在のカメラを取得
	CCamera* cam = CCamera::CurrentCamera();
	if (cam == nullptr) return;

	// 設定されたワールド座標をスクリーン座標に変換
	CVector screenPos = cam->WorldToScreenPos(worldPos - CVector(0.0f, 0.0f, 0.0f));

	//// 設定されたワールド座標がカメラの背後であれば、
	//// ゲージを表示しない
	//if (screenPos.Z() < 0.0f)
	//{
	//	SetShow(false);
	//	return;
	//}

	// 求めたスクリーン座標を自身の座標に設定
	mPosition = screenPos;
}

void CClimbUI::Update()
{
	// フレーム位置を設定
	//CVector2 pos = mPosition - CVector2(FRAME_SIZE_X, 0.0f) * 0.5f;
	mpUI->SetPos(mPosition);
	mpUI->SetShow(IsShow());

	// フレームの中心位置
	mpUI->SetCenter
	(
		0.0f * mCenterRatio.X(),
		0.0f * mCenterRatio.Y()
	);
}