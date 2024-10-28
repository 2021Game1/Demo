#ifndef CPICOCHANUI_H
#define CPICOCHANUI_H

#include "CUIBase.h"
#include "CVector.h"

class CImage;

class CPicoChanUI : public CUIBase
{
public:
	CPicoChanUI();
	~CPicoChanUI();

	// UIを削除
	void Kill() override;

	// 表示するかどうか設定
	void SetShow(bool isShow) override;

	// 最大値を設定
	void SetMaxValue(int value);
	// 現在地を設定
	void SetValue(int value);

	// 中心位置の割合を設定
	void SetCenterRatio(const CVector2& ratio);

	// ワールド座標を設定
	void SetWorldPos(const CVector& worldPos);

	// 更新処理
	void Update();

private:
	CImage* mpFrameImage;		// 枠画像
	CImage* mpBarImage;			// バー画像
	CImage* mpDecreaseBarImage;	// 差分画像
	CVector2 mCenterRatio;		// 中心位置の割合
	int mMaxValue;				// 最大値
	int mValue;					// 現在値
	float mScale;				// ゲージのスケール値
	float mElapsedTime;
	bool mIsShow;				// ゲージを表示するかどうか
	bool mGauge;
};
#endif