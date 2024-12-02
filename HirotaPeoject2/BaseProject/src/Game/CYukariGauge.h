#ifndef CYUKARIGAUGE_H
#define CYUKARIGAUGE_H

#include "CUIBase.h"
#include "CVector.h"
class CImage;

class CYukariGauge :public CUIBase

{
private:
	CImage* mpBarImage;			// バー画像

	int mMaxValue;				// 最大値
	int mValue;					// 現在値
	CVector2 mCenterRatio;		// 中心位置の割合
	float mScale;				// ゲージのスケール値
public:
	// コンストラクタ
	CYukariGauge();
	// デストラクタ
	~CYukariGauge();

	// ゲージを削除
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

	// 中心位置の割合を設定
	void SetCenterRatio(const CVector2& ratio);

	// ワールド座標を設定
	void SetWorldPos(const CVector& worldPos);

	// 更新処理
	void Update();
};
#endif