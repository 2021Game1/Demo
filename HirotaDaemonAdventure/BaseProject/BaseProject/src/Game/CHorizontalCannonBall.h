#ifndef CHORIZONTALCANNONBALL_H
#define CHORIZONTALCANNONBALL_H

#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderSphere.h"

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

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	// 大砲の弾モデル
	CModel* mpCannonBall;
	// 弾のコライダー
	CColliderSphere* mpSpherer;
	// 移動速度
	float mMoveSpeed;
	// 飛距離
	float mFlyingDistance;
	// 現在の飛距離
	float mCurrentFlyingDistance;
	// Y軸方向の初速度を設定する変数
	float mVerticalSpeed;
};
#endif