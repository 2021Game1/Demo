#ifndef CWIREMESHMOVECLIMBWALL_H
#define CWIREMESHMOVECLIMBWALL_H
#include "CObjectBase.h"
#include "CRideableObject.h"
#include "CColliderMesh.h"

// 左右に動く登れる金網
class CWireMeshMoveClimbWall : public CRideableObject
{
public:
	CWireMeshMoveClimbWall(std::string wireName, std::string topName,
		const CVector& moveUp, const CVector& moveForward,
		const CVector& pos, const CVector& move, float moveTime);
	~CWireMeshMoveClimbWall();

	// 頂上へ上り切った時の移動量を取得
	void GetClimbedMoveVec(CVector* outUp, CVector* outForward) const;

	void Update() override;
	void Render() override;

private:
	CModel* mpWireMeshModel;

	CColliderMesh* mpWallCol;
	CColliderMesh* mpWallTopCol;

	CVector mClimbedMoveUp;
	CVector mClimbMoveForward;
	CVector mDefaultPos;
	CVector mMoveVec;
	float mMoveTime;
	float mElapsedTime;
};
#endif