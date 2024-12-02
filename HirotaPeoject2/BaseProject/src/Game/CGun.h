#ifndef CGUN_H
#define CGUN_H
#include "CObjectBase.h"
#include "CWeapon.h"
#include "CColliderLine.h"
#include "CModel.h"

// 銃クラス
class CGun :public CWeapon
{
public:
	CGun();
	~CGun();

	// 更新処理
	void Update();
	// 描画処理
	void Render();

	// 武器の行列を取得
	CMatrix Matrix() const override;

private:
	// 銃モデル
	CModel* mpGun;
};
#endif