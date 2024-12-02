#ifndef CSTAGE4_H
#define CSTAGE4_H

#include "CStageBase.h"

class CSeesawAdventure;
class CStageSky;
class CSeesawAdventure;
class CSeesawStageFallCol;

// ステージ4「シーソーアドベンチャー」
class CStage4 : public CStageBase
{
public:
	// コンストラクタ
	CStage4();
	// デストラクタ
	~CStage4();

	// ステージ読み込み
	void Load() override;
	// ステージ破棄
	void Unload() override;

private:
	CSeesawStageFallCol* mpFallCol;
	CStageSky* mpSky;
	CSeesawAdventure* mpFeild;
};
#endif