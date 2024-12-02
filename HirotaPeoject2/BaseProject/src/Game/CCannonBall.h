#ifndef CCANNONBALL_H
#define CCANNONBALL_H

#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderSphere.h"

// 大砲の弾クラス
class CCannonBall : public CObjectBase
{
public:
    /// <summary>
    /// コンストラクタ
    /// </summary>
    /// <param name="pos">位置</param>
    /// <param name="dir">向き</param>
    /// <param name="speed">移動速度</param>
    /// <param name="distance">飛距離</param>
    /// <param name="verticalSpeed">Y軸初速度</param>
    CCannonBall(const CVector& pos, const CVector& dir,
        float speed, float distance, float verticalSpeed);
    // デストラクタ
    ~CCannonBall();

    // 初速度を設定
    void SetVerticalSpeed(float speed);

    // 更新処理
    void Update() override;
    // 描画処理
    void Render() override;

private:
    // 大砲の弾モデル
    CModel* mpCannonBall;
    // 砲弾のコライダー
    CColliderSphere* mpSpherer;

    // 砲弾の向き
    CVector mDirection;

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