#include "CSceneGame.h"
#include <stdio.h>

//残り時間（30秒）
int Time = 30 * 60;
int Remain = 3;

void CSceneGame::Init() {
	//シーンの設定
	mScene = EGAME;

	//クラスのメンバ変数への代入
//37
	CPlayer *Player = new CPlayer();
	Player->x = 150;
	Player->y = 150;
	Player->w = 25;
	Player->h = 25;
	Player->mEnabled = true;
//37
	int map[6][8] =
	{
		{ 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 0, 1, 0, 0, 0, 1, 1 },
		{ 1, 2, 0, 0, 1, 0, 0, 1 },
		{ 1, 0, 1, 2, 0, 0, 1, 1 },
		{ 1, 0, 0, 0, 1, 2, 0, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1 },
	};
//37	MapSize = 0;	//0を代入する
	for (int j = 0; j < 6; j++) {
		for (int i = 0; i < 8; i++) {
			//mapの要素が1の時、四角形配置
			if (map[j][i] == 1) {
				//37
				CMap *Map = new CMap();
				//四角形に値を設定
				Map->mEnabled = true;
				Map->x = i * 100 - 350;
				Map->y = j * -100 + 250;
				Map->w = 50;
				Map->h = 50;
				//37
			}
			else if (map[j][i] == 2) {
				CEnemy *Enemy = new CEnemy();
				Enemy->x = i * 100 - 350;
				Enemy->y = j * -100 + 250;
				//右へ移動
				Enemy->mFx = 0;
				Enemy->mFy = 1;
				/*37
				for (int k = 0; k < 10; k++) {
					if (!Enemy[k].mEnabled) {
						//敵に値を設定
						Enemy[k].x = i * 100 - 350;
						Enemy[k].y = j * -100 + 250;
						//右へ移動
						Enemy[k].mFx = 0;
						Enemy[k].mFy = 1;
						//有効にする
						Enemy[k].mEnabled = true;
						break;
					}
				}
				*/
			}
		}
	}
}

void CSceneGame::Update() {
	/*
	配列の要素分繰り返す
	配列名.size()
	配列の要素数を取得する
	*/
	for (int i = 0; i < VectorRect.size(); i++) {
		/*
		配列の参照
		配列名[添え字]
		通常の配列同様に添え字で要素にアクセスできる
		*/
		//更新処理
		VectorRect[i]->Update();
	}
	for (int i = 0; i < VectorRect.size() - 1; i++) {
		//衝突処理
		for (int j = i + 1; j < VectorRect.size(); j++) {
			VectorRect[i]->Collision(VectorRect[i], VectorRect[j]);
			VectorRect[j]->Collision(VectorRect[j], VectorRect[i]);
		}
	}

	//リストから削除する
	//イテレータの生成
	std::vector<CRectangle*>::iterator itr;
	//イテレータを先頭
	itr = VectorRect.begin();
	//最後まで繰り返し
	while (itr != VectorRect.end()) {
		if ((*itr)->mEnabled) {
			//次へ
			itr++;
		}
		else {
			//falseのインスタンスを削除
			delete *itr;
			//リストからも削除
			itr = VectorRect.erase(itr);
		}
	}

	for (int i = 0; i < VectorRect.size(); i++) {
		//描画処理
		VectorRect[i]->Render();
	}

	CText::DrawChar('S', -350, 250, 16, 16);
	CText::DrawChar('c', -350 + 32, 250, 16, 16);
	CText::DrawChar('o', -350 + 32 * 2, 250, 16, 16);
	CText::DrawChar('r', -350 + 32 * 3, 250, 16, 16);
	CText::DrawChar('e', -350 + 32 * 4, 250, 16, 16);

	CText::DrawChar('P', 150, -250, 16, 16);
	CText::DrawChar('l', 150 + 32, -250, 16, 16);
	CText::DrawChar('a', 150 + 32 * 2, -250, 16, 16);
	CText::DrawChar('y', 150 + 32 * 3, -250, 16, 16);
	CText::DrawChar('e', 150 + 32 * 4, -250, 16, 16);
	CText::DrawChar('r', 150 + 32 * 5, -250, 16, 16);

	//文字列の描画
	CText::DrawString("Time", 150, 250, 16, 16);
	if (Time > 0) {
		Time--;
	}
	//整数を文字列に変換する
	char buf[10];//9文字までOK
	sprintf(buf, "%d", Time / 60);
	CText::DrawString(buf, 300, 250, 16, 16);

	sprintf(buf, "%d", Remain);
	CText::DrawString(buf, 150 + 32 * 7, -250, 16, 16);

}


//次のシーンの取得
CScene::EScene CSceneGame::GetNextScene() {
	return mScene;
}
//デストラクタ
CSceneGame::~CSceneGame() {
	//全てのインスタンスを削除します
	for (int i = 0; i < VectorRect.size(); i++) {
		//インスタンスの削除
		delete VectorRect[i];
	}
	//可変長配列のクリア
	VectorRect.clear();
}
