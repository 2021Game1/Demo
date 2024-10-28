#pragma once
#include "CRideableObject.h"
#include "CModel.h"
#include "CColliderMesh.h"

// ダメージを与えるオブジェクラス
class CDamageObject : public CRideableObject
{
public:
	CDamageObject(const CVector& pos, const CVector& scale, const CVector& move, float moveTime);
	~CDamageObject();

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:

	// モデル・素材関連
	// ダメージを与えるオブジェモデル
	CModel* mpModel;
	// ダメージを与えるオブジェコライダー
	CColliderMesh* mpColliderMesh;


	// ベクトル関連
	// 初期位置
	CVector mDefaultPos;
	// 移動量
	CVector mMoveVec;

	
	// 変数関連
	// 時間計測
	float mMoveTime;
	// 終了時間計測
	float mElapsedTime;
};