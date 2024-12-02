#pragma once

#include "CSceneBase.h"

class CGameMenu;
class CInventoryMenu;
class CSound;
class CPlayer;
class CSoldier;
class CStageTime;
class CScore;
class CResult;
class CResultAnnouncement;
class CTutorialUI;

// ゲームシーン
class CGameScene : public CSceneBase
{
public:
	//コンストラクタ
	CGameScene();
	//デストラクタ
	~CGameScene();
	//シーン読み込み
	void Load();
	//シーンの更新処理
	void Update();

private:
	// ゲームメニュー(仮のメニューなので後から消す予定)
	CGameMenu* mpGameMenu;
	//CInventoryMenu* mpInventoryMenu;

	// ステージの時間
	CStageTime* mpTime;
	// スコア
	CScore* mpScore;
	// リザルトのUI
	CResultAnnouncement* mpResultUI;
	// チュートリアル画像(ステージ選択方法)
	CTutorialUI* mpTutorialUI;
	// ステージ選択方法の画像を描画できるかどうか
	bool mIsTutorial;
};
