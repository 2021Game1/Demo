#pragma once
#include "CGaugeUI.h"

// HPゲージクラス
class CHpGauge : public CGaugeUI
{
private:
	// バーの色を計算
	CColor CalcBarColor() const override;
};