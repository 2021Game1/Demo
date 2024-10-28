#ifndef CCLIMBWALL_H
#define CCLIMBWALL_H
#include "CObjectBase.h"
#include "CColliderMesh.h"

// 登れる壁
class CClimbWall : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="climbName">登れる壁のモデルデータのリソース名</param>
	/// <param name="TopName">登れる壁の頂上のモデルのデータのリソース名</param>
	/// <param name="moveUp">頂上へ上った時の上方向の移動量</param>
	/// <param name="moveForaward">頂上へ上った時の正面方向の移動量</param>
	CClimbWall(std::string climbName, std::string TopName, 
		const CVector& moveUp, const CVector& moveForward);
	// デストラクタ
	~CClimbWall();

	// 頂上へ上り切った時の移動量を取得
	void GetClimbedMoveVec(CVector* outUp, CVector* outForward) const;

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	CModel* mpWallModel;		// 登れる壁のモデルデータ
	CColliderMesh* mpWallCol;	// 登れる壁のコライダー
	CColliderMesh* mpWallTopCol;// 登れる壁の頂上コライダー
	CVector mClimbedMoveUp;		// 頂上へ登り上り切った時の移動量
	CVector mClimbMoveForward;	// 頂上へ上り切った時の正面方向の移動量
};
#endif