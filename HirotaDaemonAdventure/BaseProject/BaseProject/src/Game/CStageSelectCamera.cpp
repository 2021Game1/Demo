#include "CStageSelectCamera.h"
#include "CInput.h"

// コンストラクタ
CStageSelectCamera::CStageSelectCamera(const CVector& eye, const CVector& center, bool isMainCamera)
	: CCamera(eye, center, isMainCamera)
{
}

// デストラクタ
CStageSelectCamera::~CStageSelectCamera()
{
}

// 更新
void CStageSelectCamera::Update()
{
	// カメラのベースの更新処理
	CCamera::Update();
}