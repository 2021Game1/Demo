#ifndef CSTAGESELECTIONSTAGE_H
#define CSTAGESELECTIONSTAGE_H
#include "CStageBase.h"

class CStageSky;
class CTutorialUI;

// ステージ選択ステージ
class CStageSelectionStage : public CStageBase
{
public:
	// コンストラクタ
	CStageSelectionStage();
	// デストラクタ
	~CStageSelectionStage();

	// プレイヤーのポジションを設定
	CVector GetPlayerStartPosition();

	// ステージ読み込み
	void Load() override;
	// ステージ破棄
	void Unload() override;

	// 更新
	void Update() override;

private:
	// ステージのデータ
	struct StageData
	{
		int stageNo;		// ステージ番号
		CVector btnPos;		// ステージのボタンの番号
		int prevStageNo;	// 前のステージの番号
		int nextStageNo;	// 次のステージの番号
		bool canMove;       // 移動可能かどうかのフラグ
	};
	// ステージを移動できるかどうか
	void UpdateStageMovement();
	// ステージのデータのテーブル
	// bool値を変更するためconstを削除した
	static StageData STAGE_DATA[];
	// 現在のステージ番号
	int mSelectStageNo;
	CStageSky* mpSky;
	bool IsTutorial;

	CTutorialUI* mpTutorial;
};
#endif