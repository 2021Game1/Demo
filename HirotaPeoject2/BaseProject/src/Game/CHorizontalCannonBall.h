#ifndef CHORIZONTALCANNONBALL_H
#define CHORIZONTALCANNONBALL_H

#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderSphere.h"
#include "CColliderMesh.h"

// 水平方向の大砲の弾クラス
class CHorizontalCannonBall : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="dir">弾の向き</param>
	/// <param name="speed">弾の速度</param>
	/// <param name="distance">弾の飛距離</param>
	CHorizontalCannonBall(const CVector& pos, const CVector& dir,
		float speed, float distance);
	// デストラクタ
	~CHorizontalCannonBall();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	// 大砲の弾モデル
	CModel* mpCannonBall;
	// 弾のコライダー
	CColliderSphere* mpSpherer;
	// 弾の上コライダー
	CColliderMesh* mpCannonCol;

	// 状態
	// 弾の状態
	enum class EState
	{
		eIdle,	// 通常状態
		eFall,	// 落下状態
	};
	// 状態を切り替える
	void ChangeState(EState state);

	// 通常状態の更新処理
	void UpdateIdle();
	// 落下状態の更新処理
	void UpdateFall();
	// 現在の状態
	EState mState;

	// 状態内のステップ
	int mStateStep;
	// SPACEを押したときの経過時間
	float mJumpedElapsedTime;
	// 衝突しているか
	bool mIsCollisionPlayer;
	// 落下しているかどうか
	bool mIsFall;
	// 移動速度
	float mMoveSpeed;
	// 飛距離
	float mFlyingDistance;
	// 現在の飛距離
	float mCurrentFlyingDistance;
	// Y軸方向の初速度を設定する変数
	float mVerticalSpeed;
	// 落下後の経過時間
	float mFallTime;

	float mBounceTime;
};
#endif