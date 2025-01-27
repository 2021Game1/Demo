#pragma once
#include "CSceneBase.h"
//class CGameMenu;
class CInventory;
class CSound;

//タイトルシーン
class CGameScene4 :public CSceneBase
{
public:
	//コンストラクタ
	CGameScene4();
	//デストラクタ
	~CGameScene4();
	//シーン読み込み
	void Load();
	//シーンの更新処理
	void Update();

private:
	CInventory* mpGameMenu;
};
