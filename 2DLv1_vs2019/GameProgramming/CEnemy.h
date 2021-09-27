#ifndef CENEMY_H
#define CENEMY_H

#include "CRectangle.h"
#include "CBullet.h"

class CEnemy : public CRectangle {
public:
	int mFx; //X軸方向の移動 -1:左 0:移動しない 1:右へ移動
	int mFy; //Y軸方向の移動 -1:下 0:移動しない 1:上へ移動
//	bool mEnabled;	//有効フラグ

//37	CBullet EBullet[20];
	int mFireCount;

	CEnemy();

	void Update();
	bool Collision(const CRectangle &r);
	void Render();

	//36
	void Collision(CRectangle *i, CRectangle *y);
};

#endif
