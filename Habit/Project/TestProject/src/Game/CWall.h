#pragma once
#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderMesh.h"

// 壁表示クラス
class CWall : public CObjectBase
{
public:
	// コンストラクタ
	CWall(const CVector& pos, const CVector& angle, const CVector& size);
	// デストラクタ
	~CWall();

	/// <summary>
	/// レイと壁との衝突判定
	/// </summary>
	/// <param name="start">レイの開始位置</param>
	/// <param name="end">レイの終了位置</param>
	/// <param name="hit">衝突情報返却用</param>
	/// <returns>衝突したら、trueを返す</returns>
	bool CollisionRay(const CVector& start, const CVector& end,
		CHitInfo* hit) override;

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	CModel* mpModel;	// 壁のモデルデータ
	CColliderMesh* mpColliderMesh;	// 壁のコリジョンデータ

	EScene mScene;
};