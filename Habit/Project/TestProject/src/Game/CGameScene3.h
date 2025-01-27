#pragma once
#include "CSceneBase.h"
//class CGameMenu;
class CInventory;
class CSound;

//タイトルシーン
class CGameScene3 :public CSceneBase
{
public:
	//コンストラクタ
	CGameScene3();
	//デストラクタ
	~CGameScene3();
	//シーン読み込み
	void Load();
	//シーンの更新処理
	void Update();

private:
	CInventory* mpGameMenu;
};
