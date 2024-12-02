#ifndef CTREASURECHEST_H
#define CTREASURECHEST_H

#include "CObjectBase.h"
#include "CColliderSphere.h"
#include "CColliderMesh.h"

class CModel;
class COperationUI;

// 宝箱
class CTreasureChest : public CObjectBase
{
public:
	CTreasureChest(const CVector& pos,const CVector&scale,const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	~CTreasureChest();

	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	void Update() override;
	void Render() override;
private:

	CModel* mpChest;
	CColliderSphere* mpChestSphere;
	CColliderMesh* mpChestCol;

	// ベクトル関連
	// 宝箱モデルの初期位置
	CVector mStartPos;


	ETag mReactionTag;
	ELayer mReactionLayer;

};

// 宝箱の蓋
class CTreasureChestTwo : public CObjectBase
{
public:
	CTreasureChestTwo(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	~CTreasureChestTwo();

	void Update() override;
	void Render() override;

private:
	enum class EState
	{
		Idle,
		Two,
		End,
	};
	void UpdateIdle();
	void UpdateTwo();
	void UpdateEnd();
	EState mState;
	void ChangeState(EState state);


	CModel* mpChestTwo;
	CColliderSphere* mpChestSphere;
	CColliderMesh* mpChestTwoCol;

	COperationUI* mpKey;


	// ベクトル関連
	// 宝箱モデルの初期位置
	CVector mStartPos;
	// 初期回転値
	CQuaternion mDefaultRot;

	// 変数関連
	// 状態内のステップ
	int mStateStep;
	// 待ち時間
	float mWaitTime;
	// 回転開始時の角度
	float mRotateStartAngle;
	// 回転終了時の角度
	float mRotateEndAngle;
	ETag mReactionTag;
	ELayer mReactionLayer;

	bool IsFoundPlayer() const;
};
#endif