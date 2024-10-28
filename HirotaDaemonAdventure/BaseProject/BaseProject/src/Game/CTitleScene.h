#pragma once
#include "CSceneBase.h"
#include "CInput.h"
#include "CImage.h"
#include "CImage.h"

class CSound;
class CTitleMenu;
class CTitleUI;
class CTitleStage;
class CStageSky;

//タイトルシーン
class CTitleScene :public CSceneBase
{
public:
	//コンストラクタ
	CTitleScene();
	//デストラクタ
	~CTitleScene();
	//シーン読み込み
	void Load();
	//シーンの更新処理
	void Update();

private:
	/*CImage* mTitle;
	CTitleMenu* mpTitleMenu;*/
	CTitleUI* mpTitleUI;
	CTitleStage* mpTitleStage;
	CStageSky* mpStageSky;
};