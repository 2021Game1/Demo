#include "CTreasureChestUI.h"
#include "Maths.h"
#include "CImage.h"
#include "CCamera.h"
#include "CPlayer.h"

CTreasureChestUI::CTreasureChestUI()
	: mCenterRatio(0.0f, 0.0f)
	, mScale(0.0f)
{
	mpUI = new CImage("TUI");
	mpUI->SetSize(150.0f, 150.0f);
}

// デストラクタ
CTreasureChestUI::~CTreasureChestUI()
{

}

// 削除
void CTreasureChestUI::Kill()
{
	CTask::Kill();
	mpUI->Kill();
}

void CTreasureChestUI::SetCenterRatio(const CVector2& ratio)
{
	mCenterRatio = ratio;
}

void CTreasureChestUI::SetWorldPos(const CVector& worldPos)
{
	// 現在のカメラを取得
	CCamera* cam = CCamera::CurrentCamera();
	if (cam == nullptr) return;

	// 設定されたワールド座標をスクリーン座標に変換
	CVector screenPos = cam->WorldToScreenPos(worldPos);

	// 設定されたワールド座標がカメラの背後であれば、
	// ゲージを表示しない
	if (screenPos.Z() < 0.0f)
	{
		SetShow(false);
		return;
	}

	// スクリーン座標をUIの位置として設定
	mPosition = screenPos;
}

void CTreasureChestUI::Update()
{
	// ゲージの位置を設定
	CVector2 pos = mPosition;
	//pos.X(pos.X() - 0.0f * mCenterRatio.X() * mScale);
	mpUI->SetPos(pos/* + CVector2(0.0f, 0.0f) * mScale*/);

	mpUI->SetShow(IsShow());

	// ゲージの中心位置を設定
	mpUI->SetCenter
	(
		0.0f,
		0.0f
	);
}