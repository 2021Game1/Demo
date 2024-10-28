#ifndef CSTAGE2_H
#define CSTAGE2_H
#include "CStageBase.h"

class CHopsAndHoopsFallCol;
class CStageSky;

// ステージ2 「ホップ＆フープス」
class CStage2 : public CStageBase
{
public:
	// コンストラクタ
	CStage2();
	// デストラクタ
	~CStage2();

	// ステージ読み込み
	void Load() override;
	// ステージ破棄
	void Unload() override;

private:
	CHopsAndHoopsFallCol* mpHopsAndHoopsFallCol;
	CStageSky* mpSky;
};
#endif