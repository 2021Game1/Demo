#include "CSceneTitle.h"
#include "CKey.h"

void CSceneTitle::Init() {
	//シーンの設定
	mScene = ETITLE;
}

//更新処理のオーバーライド
void CSceneTitle::Update() {
	//文字列の描画
	CText::DrawString("TITLE", -200, 0, 50, 50);
	CText::DrawString("Push ENTER Key",
		-200, -100, 16, 16);
	if (CKey::Once(VK_RETURN)) {
		//次のシーンはゲーム
		mScene = EGAME;
	}
}
//次のシーンの取得
CScene::EScene CSceneTitle::GetNextScene() {
	return mScene;
}
