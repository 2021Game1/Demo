#ifndef CSTUFFEDROLLSCENE_H
#define CSTUFFEDROLLSCENE_H

#include "CSceneBase.h"
#include "CInput.h"
#include "CImage.h"
#include "CImage.h"

class CSound;
class CTitleMenu;
class CStuffedRoll;

//タイトルシーン
class CStuffedRollScene : public CSceneBase
{
public:
	//コンストラクタ
	CStuffedRollScene();
	//デストラクタ
	~CStuffedRollScene();
	//シーン読み込み
	void Load();
	//シーンの更新処理
	void Update();

private:
	// スタッフロールクラス
	CStuffedRoll* mpStuffedRoll;
};
#endif