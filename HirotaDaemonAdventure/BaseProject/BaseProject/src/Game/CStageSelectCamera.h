#ifndef CSTAGESELECTCAMERA_H
#define CSTAGESELECTCAMERA_H

#include "CCamera.h"

// ステージ選択画面のカメラ
class CStageSelectCamera : public CCamera
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="eye">カメラの視点</param>
	/// <param name="center">カメラの注視点</param>
	/// <param name="isMainCamera">メインカメラかどうか</param>
	CStageSelectCamera(const CVector& eye, const CVector& center, bool isMainCamera = true);
	// デストラクタ
	~CStageSelectCamera();

	// 更新
	void Update() override;
};
#endif