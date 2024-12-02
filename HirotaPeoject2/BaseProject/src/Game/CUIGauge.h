#ifndef CUIGAUGE_H
#define CUIGAUGE_H
#include "CUIBase.h"
class CImage;

class CUIGauge :public CUIBase
{
private:
	CImage* mpFrameImage;		// 枠画像
	CImage* mpBarImage;			// バー画像
	CImage* mpDecreaseBarImage;	// 差分画像

	int mMaxValue;				// 最大値
	int mValue;					// 現在値
	int mPreviousValue;
	float mElapsedTime;
	bool mGauge;
	bool mDamaged;
	bool mStartDamaged;
	
public:
	// コンストラクタ
	CUIGauge();
	// デストラクタ
	~CUIGauge();

	// フレームを削除
	void Kill() override;

	// 表示するかどうか設定
	void SetShow(bool isShow) override;

	// 最大値を設定
	void SetMaxValue(int value);
	// 現在地を設定
	void SetValue(int value);

	// バーの表示位置の割合を設定
	// (HPであれば、残りHPが最大HPと比べて何パーセント残っているかを設定)
	void SetPor(float per);

	// 更新処理
	void Update();

};
#endif