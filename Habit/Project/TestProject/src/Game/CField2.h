#pragma once
#include "CObjectBase.h"
#include "CColliderMesh.h"

class CWall2;

class CField2 : public CObjectBase
{
public:
	// フィールドのインスタンスを返す
	static CField2* Instance();

	CField2();
	~CField2();

	void Update();

	/// <summary>
	/// レイとフィールドオブジェクトの衝突判定
	/// </summary>
	/// <param name="start">レイの開始位置</param>
	/// <param name="end">レイの終了位置</param>
	/// <param name="hit">衝突情報返却用</param>
	/// <returns>衝突したら、trueを返す</returns>
	bool CollisionRay(const CVector& start, const CVector& end,
		CHitInfo* hit) override;

	void Render();

private:
	// 壁を生成
	void CreateWalls();
	void CreateFieldObjects();
	// 経路探索用のノードを作成
	void CreateNavNodes();

	// フィールドのインスタンス
	static CField2* spInstance;

	CModel* mpModel;
	CColliderMesh* mpColliderMesh;

	CModel* mpCubeModel;
	CModel* mpCylinderModel;

	//TexAnimData mEffectAnimData;

	// 壁のオブジェクトのリスト
	std::list<CWall2*> mWalls;
};