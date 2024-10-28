#ifndef CSTAGE3_H
#define CSTAGE3_H
#include "CStageBase.h"

class CFinalStageField;
class CFinalStageFallCol;
class CStageTime;
class CStageSky;

// ステージ3「平原マップ」
class CStage3 : public CStageBase
{
public:
	// コンストラクタ
	CStage3();
	// デストラクタ
	~CStage3();

	// ステージ読み込み
	void Load() override;
	// ステージ破棄
	void Unload() override;

private:
	CFinalStageField* mpFinalStage;
	CFinalStageFallCol* mpFinalStageFallCol;

	CStageSky* mpSky;
};
#endif