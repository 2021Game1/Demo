#ifndef CSTAMINAGAUGE_H
#define CSTAMINAGAUGE_H
#include "CUIBase.h"
class CImage;

class CStaminaGauge :public CUIBase
{
private:
	CImage* mpStaminaImage;		// スタミナ画像

	int mMaxSutaminaValue;		// スタミナ最大値
	int mSutaminaValue;			// スタミナ現在値
public:
	CStaminaGauge();
	~CStaminaGauge();

	// フレームを削除
	void Kill() override;

	// 表示するかどうか設定
	void SetShow(bool isShow) override;

	// 最大値を設定(スタミナ)
	void SetSutaminaMaxValue(int value_st);
	// 現在地を設定(スタミナ)
	void SetSutaminaValue(int value_st);

	// バーの表示位置の割合を設定
	// (HPであれば、残りHPが最大HPと比べて何パーセント残っているかを設定)
	void SetPor(float per);

	void Update();
};
#endif