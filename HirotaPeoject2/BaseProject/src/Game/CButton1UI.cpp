#include "CButton1UI.h"
#include "Maths.h"
#include "CImage.h"
#include "CCamera.h"
#include "CSignboard.h"
#include "CPlayer.h"

CButton1UI::CButton1UI()
	: mCenterRatio(0.0f, 0.0f)
	, mScale(0.0f)
{
	mpUI = new CImage("EnterUI");
	mpUI->SetSize(100.0f, 100.0f);
}

// デストラクタ
CButton1UI::~CButton1UI()
{

}

// 削除
void CButton1UI::Kill()
{
	CTask::Kill();
	mpUI->Kill();
}

void CButton1UI::SetCenterRatio(const CVector2& ratio)
{
	mCenterRatio = ratio;
}

void CButton1UI::SetWorldPos(const CVector& worldPos)
{
	// 現在のカメラを取得
	CCamera* cam = CCamera::CurrentCamera();
	if (cam == nullptr) return;

	// 設定されたワールド座標をスクリーン座標に変換
	CVector screenPos = cam->WorldToScreenPos(worldPos - CVector(0.0f,0.0f,0.0f));

	// 求めたスクリーン座標を自身の座標に設定
	mPosition = screenPos;
}

void CButton1UI::Update()
{
	// フレーム位置を設定
	//CVector2 pos = mPosition - CVector2(FRAME_SIZE_X, 0.0f) * 0.5f;
	mpUI->SetPos(mPosition);
	mpUI->SetShow(IsShow());

	// フレームの中心位置
	mpUI->SetCenter
	(
		30.0f * mCenterRatio.X(),
		30.0f * mCenterRatio.Y()
	);
}