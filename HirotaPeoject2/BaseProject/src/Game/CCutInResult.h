#ifndef CCUTINRESULT_H
#define CCUTINRESULT_H

#include "CCutInCamera.h"

// リザルトカメラ
class CCutInResult : public CCutInCamera
{
public:
	// コンストラクタ
	CCutInResult();
	// デストラクタ
	~CCutInResult();

	//インスタンスのポインタの取得
	static CCutInResult* Instance();

	// カットイン開始
	bool Start() override;
	// カットイン終了
	bool End() override;

	// カットインに必要な情報を設定
	void Setup(CObjectBase* obj);

	// 更新
	void Update() override;

private:
	static CCutInResult* spInstance;
	// ステップ0 カメラを回転
	void CutInStep0();
	// ステップ1 カットイン終了時の待ち
	void CutInStep1();
	int mCutInStep;	// カットインのステップ
	float mElapsedTime;	// 経過時間計測用

	CVector mCenterPos;	// カットインの中心地点
	float mStartAngleY;	// 開始のカメラのY軸角度
	
	CObjectBase* mObject;
};
#endif