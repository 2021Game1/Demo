#pragma once
#include "CTexture.h"
#include "CUIBase.h"

class CImage;

class CGaugeUI : public CUIBase
{
public:
	// コントラクタ
	CGaugeUI();
	// デストラクタ
	virtual ~CGaugeUI();

	// 最大値を設定
	void SetMaxPoint(int point);
	// 現在値を設定
	void SetCurPoint(int point);

	// 更新
	void Update() override;
	// 描画
	void Render() override;

protected:
	// 現在のポイントをゲージに反映
	void ApplyPoint();

	// バーの
	virtual CColor CalcBarColor() const;

	CImage* mpWhiteImag;	// ゲージのイメージ
	CImage* mpGaugeImag;	// 白イメージ

	CVector2 mBaseBarSize;	// ゲージのイメージサイズ
	int mMaxPoint;	// 最大値
	int mCurPoint;	// 現在値
	float mPercent;	// ポイント残量の割合

};