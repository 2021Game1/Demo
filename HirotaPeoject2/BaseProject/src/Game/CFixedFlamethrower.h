#ifndef CFIXEDFLAMETHROWER_H
#define CFIXEDFLAMETHROWER_H

#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderMesh.h"
class CFlamethrower;

// 固定式火炎放射器
class CFixedFlamethrower : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">スケール</param>
	/// <param name="rot">回転</param>
	CFixedFlamethrower(const CVector& pos, const CVector& scale, const CVector& rot);

	// デストラクタ
	~CFixedFlamethrower();

	/// <summary>
	/// コリジョン
	/// </summary>
	/// <param name="self">自身</param>
	/// <param name="other">相手</param>
	/// <param name="hit">衝突したときの情報</param>
	//void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	void Update() override;

	void Render() override;

private:

	// モデル・素材
	CModel* mpFlamethrowerModel;
	CModel* mpFlamethrowerTank;
	// 火炎放射エフェクト
	CFlamethrower* mpFlamethrower;

	// 火炎放射器のコライダー
	CColliderMesh* mpColliderMesh;

	// 状態関連
	// 火炎放射器の状態
	enum class EState
	{
		Idle,
	};
	// 状態を切り替える
	void ChangeState(EState state);
	void UpdateIdle();
	EState mState;

	// 変数関連
	int mStateStep;
	bool fire;
	float mWaitTime;

	bool IsFoundPlayer() const;
};
#endif