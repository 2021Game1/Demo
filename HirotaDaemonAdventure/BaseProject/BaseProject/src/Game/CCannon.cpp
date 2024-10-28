#include "CCannon.h"
#include "CPlayer.h"
#include "CCannonBall.h"
#include "CStageManager.h"
#include "Maths.h"

// 重力
#define GRAVITY 0.0625f
// 弾の発射待機時間
#define WEIT_TIME 2.0f

// プレイヤーの最小距離
#define MIN_DISTANCE 10.0f
// プレイヤーの最大距離
#define MAX_DISTANCE 350.0f
// 最大角度
#define MAX_ANGLE 90.0f
// 最小角度
#define MIN_ANGLE -10.0f
// 最大速度
#define MAX_SPEED 4.5f
// 最小速度
#define MIN_SPEED 5.0f

// コンストラクタ
CCannon::CCannon(const CVector& pos, const CVector& scale, const CVector& rot,
    std::string modelPath)
    : CCannonBase(pos, scale, rot)
    , mFireTime(0.0f)
    , mFire(false)
{
    // 大砲モデルを取得
    mpCannon = CResourceManager::Get<CModel>(modelPath);

    Position(pos);
    Scale(scale);
    Rotate(rot);
}

// デストラクタ
CCannon::~CCannon()
{
    CStageManager::RemoveTask(this);
}

// 更新処理
void CCannon::Update()
{
    if (IsFoundPlayer())
    {
        //// 初期設定 ////
        // プレイヤーのインスタンス
        CPlayer* player = CPlayer::Instance();
        // プレイヤーの位置
        CVector PlayerPos = player->Position();
        // プレイヤーの移動速度
        CVector PlayerSpeed = player->Velocity();
        // 大砲の位置
        CVector CannonPos = Position();
        // 大砲の正面方向のベクトル
        CVector CannonForward = VectorZ();
        // 正面方向に10.0f移動
        // 砲口の位置が斜め前のため初期Z位置を変更
        CannonPos = CannonPos + (CannonForward * 11.0f);

        //// 大砲の向きを変える処理 ////
        // 大砲からプレイヤーまでの距離
        CVector DirectionToPlayer = PlayerPos - CannonPos;
        // 垂直方向のY軸は無視
        DirectionToPlayer.Y(0.0f);
        // 水平距離
        float HorizontalDistance = DirectionToPlayer.Length();
        DirectionToPlayer.Normalize();
        // 回転速度を調整できる
        float RotationSpeed = 1.0f;
        // 向きをSlerpで補間
        CVector Forward = CVector::Slerp(CannonForward, DirectionToPlayer, RotationSpeed);

        // 大砲を横方向に回転させる
        Rotation(CQuaternion::LookRotation(Forward));
        // 現在の大砲の向きとプレイヤー方向との角度を計算
        float AngleToPlayer = acos(CVector::Dot(VectorZ(), DirectionToPlayer));

        // 角度の制限
        // ラジアンに変換
        float MaxRotationAngle = 45.0f * (M_PI / 180.0f);

        // 角度が制限範囲内にあるかチェック
        if (AngleToPlayer <= MaxRotationAngle)
        {
            // 回転速度を調整できる
            float RotationSpeed = 1.0f;
            // 向きをSlerpで補間
            CVector Forward = CVector::Slerp(CannonForward, DirectionToPlayer, RotationSpeed);

            // 大砲を回転させる
            Rotation(CQuaternion::LookRotation(Forward));

            // 重力加速度
            const float g = GRAVITY;

            // プレイヤーの位置との相対的な差を計算
            float dx = PlayerPos.X() - CannonPos.X();
            float dy = PlayerPos.Y() - CannonPos.Y();
            float dz = PlayerPos.Z() - CannonPos.Z();

            // 水平距離を計算
            // Y成分を除いた距離計算
            float horizontalDistance = sqrt(dx * dx + dz * dz);

            // プレイヤーまでの3次元距離を計算
            float ImpactPointToPlayer = sqrt(dx * dx + dy * dy + dz * dz);

            // 角度係数を計算
            float AngleFactor = (ImpactPointToPlayer - MIN_DISTANCE) / (MAX_DISTANCE - MIN_DISTANCE);
            AngleFactor = std::max(0.0f, std::min(1.0f, AngleFactor));

            // 発射速度の計算
            float v = MIN_SPEED + (AngleFactor * (MAX_SPEED - MIN_SPEED));

            // 到達時間を計算
            // 水平距離を速度で割る
            float TimeToPlayer = horizontalDistance / v;

            // 必要なY軸の移動量を計算
            float InitialY = CannonPos.Y();
            float VerticalDrop = 0.5f * g * TimeToPlayer * TimeToPlayer;

            // 最終的な目標Yを設定
            float TargetY = PlayerPos.Y();

            // 必要な初期Y軸速度を計算
            float initialVerticalSpeed = (TargetY - InitialY + VerticalDrop) / TimeToPlayer;

            // 弾の発射方向を計算
            CVector DirectionToTarget(dx, TargetY * 0.3f - InitialY * 0.3f, dz);
            DirectionToTarget.Normalize();

            if (!mFire)
            {
                // 弾丸を発射
                CCannonBall* cannonBall = new CCannonBall
                (
                    CannonPos + CVector(0.0f, 4.0f, 0.0f),  // 位置
                    DirectionToTarget,                      // 向き
                    v,                                      // 水平移動速度
                    1500.0f,                                // 最大飛距離
                    initialVerticalSpeed                    // Y軸初期速度
                );
                mFire = true; // 発射フラグを立てる
            }
            //// 大砲がプレイヤーの方に向いているかどうかを確認
            //if (Forward.Dot(DirectionToPlayer) > 0.99f)
            //{
            //    
            //}
        }
        else
        {
            // 制限範囲を超えた場合、回転しない（または制限角度まで回転）
            // 必要に応じて別の処理を追加
        }
    }

    //CDebugPrint::Print("isFound:%s\n", IsFoundPlayer() ? "true" : "false");
    // 打った後の処理
    if (mFire)
    {
        // 時間を増分
        mFireTime += Time::DeltaTime();
        if (mFireTime >= WEIT_TIME)
        {
            // 一定時間が経過すると
            // 打てるようにする
            mFire = false;
            mFireTime = 0.0f;
        }
    }
}