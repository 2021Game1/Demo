#ifndef CCUTINDEATH_H
#define CCUTINDEATH_H

#include "CCutInCamera.h"

// 死亡時のカットインカメラ
class CCutInDeath : public CCutInCamera
{
public:
	// コンストラクタ
	CCutInDeath();
	// デストラクタ
	~CCutInDeath();

	// カットイン開始
	bool Start() override;
	// カットイン終了
	bool End() override;

	// カットインに必要な情報を設定
	void Setup(CObjectBase* obj);

	// 更新
	void Update() override;

private:
	// ステップ0 カメラを回転
	void CutInStep0();
	// ステップ1 カットイン終了時の待ち
	void CutInStep1();
	int mCutInStep;	// カットインのステップ
	float mElapsedTime;	// 経過時間計測用

	CVector mCenterPos;	// カットインの中心地店
	float mStartAngleY;	// 開始のカメラのY軸角度
};
#endif