#ifndef CPROPELLER_H
#define CPROPELLER_H

#include "CObjectBase.h"
#include "CColliderMesh.h"

class CModel;

class CPropeller : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rotateSpeedZ">回転</param>
	CPropeller(const CVector& pos, const CVector& scale,
		float rotateSpeedZ);
	// デストラクタ
	~CPropeller();

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	// モデル
	CModel* mpRotationgModel;
	// メッシュ
	CColliderMesh* mpRotationgCol;

	// 回転スピード
	float mRotateSpeedZ;
};
#endif