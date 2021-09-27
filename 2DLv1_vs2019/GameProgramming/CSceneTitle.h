#ifndef CSCENETITLE_H
#define CSCENETITLE_H

#include "CScene.h"
#include "CText.h"

class CSceneTitle : public CScene {
public:
	//初期化処理のオーバーライド
	void Init();
	//更新処理のオーバーライド
	void Update();
	//次のシーンの取得
	EScene GetNextScene();
};

#endif
