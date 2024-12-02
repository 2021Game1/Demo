#include "COperationUI.h"
#include "Maths.h"
#include "CImage.h"
#include "CCamera.h"
#include "CSignboard.h"
#include "CPlayer.h"
#include "CStageManager.h"

// コンストラクタ
COperationUI::COperationUI(std::string path)
	: mScale(0.0f)
{
	// T画像
	mpKay = new CImage
	(
		path.c_str(),
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eGame,
		false, false
	);
	CVector2 size(150.0f, 150.0f);
	mpKay->SetSize(size);
	mpKay->SetCenter(size * 0.5f);

	// バックグラウンド画像
	mpBG = new CImage
	(
		"Frame",
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eGame,
		false, false
	);
	mpBG->SetSize(size);
	mpBG->SetCenter(size * 0.5f);
	mpBG->SetAlpha(0.7f);
}

// デストラクタ
COperationUI::~COperationUI()
{
	SAFE_DELETE(mpBG);
	SAFE_DELETE(mpKay);
}

// 削除
void COperationUI::Kill()
{
	CTask::Kill();
}

// ワールド座標を設定
void COperationUI::SetWorldPos(const CVector& worldPos)
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

// 更新処理
void COperationUI::Update()
{
	// ゲージの位置を設定
	CVector2 pos = mPosition;

	mpBG->SetPos(pos);
	mpBG->SetShow(IsShow());
	mpKay->SetPos(pos);
	mpKay->SetShow(IsShow());
}

// 描画処理
void COperationUI::Render()
{
	mpBG->Render();
	mpKay->Render();
}