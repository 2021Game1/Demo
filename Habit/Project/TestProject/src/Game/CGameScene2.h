#pragma once
#include "CSceneBase.h"
class CGameMenu;
class CSound;

//タイトルシーン
class CGameScene2 :public CSceneBase
{
public:
	//コンストラクタ
	CGameScene2();
	//デストラクタ
	~CGameScene2();
	//シーン読み込み
	void Load();
	//シーンの更新処理
	void Update();

private:
	CGameMenu* mpGameMenu;
};
