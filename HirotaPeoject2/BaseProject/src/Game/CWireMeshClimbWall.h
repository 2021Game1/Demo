#ifndef CWIREMESHCLIMBWALL_H
#define CWIREMESHCLIMBWALL_H
#include "CObjectBase.h"
#include "CColliderMesh.h"

// 登れる金網
class CWireMeshClimbWall : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="wireName">登れる金網のモデルデータのリソース名</param>
	/// <param name="TopName">登れる金網の頂上のモデルのデータのリソース名</param>
	/// <param name="moveUp">頂上へ上った時の上方向の移動量</param>
	/// <param name="moveForward">頂上へ上った時の正面方向の移動量</param>
	CWireMeshClimbWall(std::string wireName, std::string topName,
		const CVector& moveUp, const CVector& moveForward);
	// デストラクタ
	~CWireMeshClimbWall();

	// 頂上へ上り切った時の移動量を取得
	void GetClimbedMoveVec(CVector* outUp, CVector* outForward) const;

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	CModel* mpWireMeshModel;		// 登れる金網のモデルデータ

	CColliderMesh* mpWallCol;		// 登れる金網のコライダー
	CColliderMesh* mpWallTopCol;	// 登れる金網の頂上コライダー

	CVector mClimbedMoveUp;			// 頂上へ登り切った時の移動量
	CVector mClimbMoveForward;		// 頂上へ登り切った時の正面方向の移動量
};
#endif