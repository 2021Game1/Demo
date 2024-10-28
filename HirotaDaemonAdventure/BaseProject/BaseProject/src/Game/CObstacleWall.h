#ifndef COBSTACLEWALL_H
#define COBSTACLEWALL_H

#include "CObstacle.h"
#include "CColliderMesh.h"

class CModel;

// 障害物の壁
class CObstacleWall : public CObstacle
{
public:
	// コンストラクタ
	CObstacleWall(const CVector& pos, const CQuaternion& rot , const CVector& scale);
	// デストラクタ
	~CObstacleWall();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">自身</param>
	/// <param name="other">相手</param>
	/// <param name="hit">衝突情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	// 削除時に呼び出される
	void Death() override;

	enum EState
	{
		eIdle,
		eDeath,
	};
	void UpdateIdle();
	void UpdateDeath();

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	CModel* mpModel;
	CColliderMesh* mpColliderMesh;
	EState mState;
	int mStateStep;
	float mElapsedTimel;

	CVector mStartPos;
	CVector mTargetPos;
};
#endif