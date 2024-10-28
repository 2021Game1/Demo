#include "CPowerfulCannon.h"
#include "CStageManager.h"
#include "CCannonBall.h"
#include "CPlayer.h"

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
#define MAX_SPEED 5.5f
// 最小速度
#define MIN_SPEED 6.0f
// ラジアン角度
#define RAD_TO_DEG (180.0f / 3.14159265358979323846f)

// コンストラクタ
CPowerfulCannon::CPowerfulCannon(const CVector& pos, const CVector& scale, const CVector& rot,
	std::string modelPath)
	: CCannonBase(pos, scale, rot)
    , mFireTime(0.0f)
    , mFire(false)
{
	// 大砲のモデル取得
	mpCannon = CResourceManager::Get<CModel>(modelPath);

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

// デストラクタ
CPowerfulCannon::~CPowerfulCannon()
{
	CStageManager::RemoveTask(this);
}

// 更新処理
void CPowerfulCannon::Update()
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

        // 大砲からプレイヤーまでの距離
        CVector DirectionToPlayer = PlayerPos - CannonPos;
        // 垂直方向のY軸は無視
        DirectionToPlayer.Y(0.0f);
        // 水平距離
        float HorizontalDistance = DirectionToPlayer.Length();
        DirectionToPlayer.Normalize();

        //// 大砲の向きを変える処理 ////
        // 大砲の前方向とプレイヤー方向の角度を計算
        float AngleToPlayer = acos(CVector::Dot(CannonForward, DirectionToPlayer)) * RAD_TO_DEG;

        // 回転角度を80度に制限
        float MaxRotationAngle = 80.0f;
        float RotationAngle = fmin(AngleToPlayer, MaxRotationAngle);

        // 回転角度が許容範囲内であれば回転
        if (AngleToPlayer <= MaxRotationAngle) 
        {
            // 向きをSlerpで補間
            float RotationSpeed = 1.0f;
            CVector Forward = CVector::Slerp(CannonForward, DirectionToPlayer, RotationSpeed);
            // 大砲を横方向に回転させる
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

            // 着弾地点までの距離を計算
            // 水平距離
            float ImpactPointToPlayer = HorizontalDistance;

            // プレイヤーまでの3次元距離を計算
            // Y成分を含めた距離計算
            ImpactPointToPlayer = sqrt(dx * dx + dy * dy + dz * dz);

            // 角度係数を計算
            float AngleFactor = (ImpactPointToPlayer - MIN_DISTANCE * 0.5f) / (MAX_DISTANCE - MIN_DISTANCE * 0.5f);
            // 0から1の範囲
            AngleFactor = std::max(0.0f, std::min(1.0f, AngleFactor));

            // 発射速度の計算
            // 角度に基づいて速度を調整
            float v = MIN_SPEED + (AngleFactor * (MAX_SPEED - MIN_SPEED));

            // 到達時間を計算
            // 水平距離を速度で割る
            float TimeToPlayer = horizontalDistance / v;

            // プレイヤーの未来の位置を計算
            float PredictedPlayerX = PlayerPos.X() + PlayerSpeed.X() * TimeToPlayer;
            float PredictedPlayerY = PlayerPos.Y() + PlayerSpeed.Y() * TimeToPlayer;
            float PredictedPlayerZ = PlayerPos.Z() + PlayerSpeed.Z() * TimeToPlayer;

            // 大砲の発射位置のY座標
            float InitialY = CannonPos.Y();
            float VerticalDrop = 0.5f * g * TimeToPlayer * TimeToPlayer;

            // 最終的な目標Yを設定
            // 未来のY位置を使用
            float TargetY = PredictedPlayerY;

            // 必要な初期Y軸速度を計算
            float initialVerticalSpeed = (TargetY - InitialY + VerticalDrop) / TimeToPlayer;

            // 弾の発射方向を計算
            // 基本的に0.3fの方がいい
            CVector DirectionToTarget(PredictedPlayerX - CannonPos.X(), TargetY * 0.01f - InitialY * 0.01f, PredictedPlayerZ - CannonPos.Z());
            // 単位ベクトルに正規化
            DirectionToTarget.Normalize();

            if (!mFire)
            {
                // 弾丸を発射
                CCannonBall* cannonBall = new CCannonBall
                (
                    CannonPos + CVector(0.0f, 4.2f, 0.0f),  // 位置
                    DirectionToTarget,                      // 向き
                    v,                                      // 水平移動速度
                    1500.0f,                                // 最大飛距離
                    initialVerticalSpeed                    // Y軸初期速度
                );
                mFire = true; // 発射フラグを立てる
            }

            //// 大砲がプレイヤーの方に向いているかどうかを確認
            //if (Forward.Dot(DirectionToPlayer) > 0.5f)
            //{
            //    
            //}
        }
    }
    else
    {
        
    }

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