#include "CGun.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CInput.h"
#include "CEffect.h"

CGun::CGun()
{
	// モデルデータ取得
	mpGun = CResourceManager::Get<CModel>("Gun_M1G");
}

CGun::~CGun()
{
}

// 武器の行列を取得
CMatrix CGun::Matrix() const
{
	const CMatrix* attachMtx = GetAttachMtx();
	// 手に持っていないときは、自分自身の行列を返す
	if (attachMtx == nullptr)
	{
		return CTransform::Matrix();
	}
	// 手に持っているときは、アタッチしている行列を返す
	else
	{
		CMatrix sm;
		sm.Scale(190.0f, 190.0f, 190.0f);

		// 回転を表す行列を作成
		CMatrix rotateY;
		CMatrix rotateZ;
		CMatrix rotateX;

		// 移動を表す行列を作成
		CMatrix positionX;
		CMatrix positionZ;
		CMatrix positionY;

		//rotateX.RotateX(30.0f);		// X軸の回転
		rotateY.RotateY(-105.0f);	// Y軸の回転
		rotateZ.RotateZ(-22.5f);		// Z軸の回転

		float xOffset = 5.0f;	// X軸方向のずれを指定
		positionX.Translate(xOffset, 0, 0);
		float yOffset = 17.0f;	// Y軸方向のずれを指定
		positionY.Translate(0, yOffset, 0);
		float zOffset = 8.0f;	// Z軸方向のずれを指定3.5f
		positionZ.Translate(0, 0, zOffset);

		return sm * rotateZ * rotateY * positionX * positionY * positionZ * (*attachMtx);
	}
}

// 更新
void CGun::Update()
{

}

// 描画
void CGun::Render()
{
	mpGun->Render(Matrix());
}