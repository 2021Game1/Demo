#ifndef CSAVEPOINT1_H
#define CSAVEPOINT1_H

#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CObjectBase.h"
class CModel;

// セーブポイントクラス
class CSavePoint1 : public CObjectBase
{
public:
	CSavePoint1(const CVector& pos, const CVector& scale, const CVector& rot);
	~CSavePoint1();

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	// モデル・素材関連
	// セーブポイントモデル
	CModel* mpSavePointModel;
	// セーブポイントのコライダー
	CColliderLine* mpSaveColLine;

};
#endif