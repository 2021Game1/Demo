#ifndef CBULLET_H
#define CBULLET_H

#include "CRectangle.h"

/*
CBullet
弾クラス
CRectangleクラスを継承する
親：CRectangleクラス
子：CBulletクラス
*/
class CBullet : public CRectangle {
public:
	int mFx, mFy;	//移動量

	//デフォルトコンストラクタ
	CBullet();
	//更新処理
	void Update();

	//描画処理
	void Render();

	//36
	void Collision(CRectangle *i, CRectangle *y);

};

#endif
