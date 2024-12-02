#include "CSignboardUI.h"
#include "Maths.h"
#include "CImage.h"
#include "CCamera.h"
#include "CSignboard.h"
#include "CPlayer.h"

CSignboardUI::CSignboardUI()
	: mCenterRatio(0.0f,0.0f)
	, mScale(0.0f)
{
	mpCSiUI = new CImage("SignboardUI");
	mpCSiUI->SetSize(30.0f, 30.0f);
}

// デストラクタ
CSignboardUI::~CSignboardUI()
{

}

// 削除
void CSignboardUI::Kill()
{
	CTask::Kill();
	mpCSiUI->Kill();
}

void CSignboardUI::SetCenterRatio(const CVector2& ratio)
{
	mCenterRatio = ratio;
}

void CSignboardUI::SetWorldPos(const CVector& worldPos)
{
	// 現在のカメラを取得
	CCamera* cam = CCamera::CurrentCamera();
	if (cam == nullptr) return;

	CVector playerPos = CPlayer::Instance()->Position();

	// 設定されたワールド座標をスクリーン座標に変換
	CVector screenPos = cam->WorldToScreenPos(worldPos - CVector(0.0f, 1.0f, 0.0f));


	// 設定されたワールド座標がカメラの背後であれば、
	// ゲージを表示しない
	if (screenPos.Z() < 0.0f)
	{
		SetShow(false);
		return;
	}


	float distanceToPlayer = (worldPos - playerPos).Length();
	if (CSignboard::Instance()->IsFoundPlayer())
	{
		SetShow(true);
	}
	else
	{
		SetShow(false);	
	}

	//CDebugPrint::Print("SetShow %s\n", IsShow() ? "true" : "false");

	// 求めたスクリーン座標を自身の座標に設定
	mPosition = screenPos;

}

void CSignboardUI::Update()
{
	// フレーム位置を設定
	//CVector2 pos = mPosition - CVector2(FRAME_SIZE_X, 0.0f) * 0.5f;
	mpCSiUI->SetPos(mPosition);
	mpCSiUI->SetSize(CVector2(30.0f, 30.0f));
	mpCSiUI->SetShow(IsShow());


	// フレームの中心位置
	mpCSiUI->SetCenter
	(
		30.0f * mCenterRatio.X(),
		30.0f * mCenterRatio.Y()
	);
}