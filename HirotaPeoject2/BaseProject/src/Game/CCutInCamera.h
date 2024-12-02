#ifndef CCUTINCAMERA_H
#define CCUTINCAMERA_H

#include "CCamera.h"

// カットイン時のカメラのベースクラス
class CCutInCamera : public CCamera
{
public:
	// コンストラクタ
	CCutInCamera();
	// デストラクタ
	virtual ~CCutInCamera();

	// カットイン開始
	virtual bool Start();
	// カットイン終了
	virtual bool End();

	// 更新
	void Update() override;
	// カットイン再生中か
	bool IsPlaying() const;

protected:
	// 現在再生中のカットインカメラ
	static CCutInCamera* spCutInCamera;
	bool mIsPlaying;	// カットイン再生中かどうか
};
#endif