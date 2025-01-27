#pragma once
#include "CGaugeUI.h"

// スタミナゲージクラス
class CStGauge : public CGaugeUI
{
private:
	// バーの色を計算
	CColor CalcBarColor() const override;
};