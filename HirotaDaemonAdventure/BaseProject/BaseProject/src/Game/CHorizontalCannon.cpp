#include "CHorizontalCannon.h"
#include "CPlayer.h"
#include "CHorizontalCannonBall.h"
#include "Maths.h"

// プレイヤーのインスタンス設定
#define PLAYER_INSTANCE CPlayer::Instance()
// 視野の角度
#define FOV_ANGLE 100.0f
// 弾の発射待機時間
#define WEIT_TIME 2.0f
// プレイヤーを見つける距離
#define CASERANGE 200.0f

// コンストラクタ
CHorizontalCannon::CHorizontalCannon(const CVector& pos, const CVector& scale, const CVector& rot)
    : CObjectBase(ETag::eEnemy, ETaskPriority::eDefault, 0, ETaskPauseType::eGame)
    , mFireTime(0.0f)
    , mFire(false)
{
    // 大砲モデルを取得
    mpCannon = CResourceManager::Get<CModel>("HorizontalCannon");

    Position(pos);
    Scale(scale);
    Rotate(rot);
}

// デストラクタ
CHorizontalCannon::~CHorizontalCannon()
{
    // デストラクタ処理
}

// 衝突処理
void CHorizontalCannon::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
    // 衝突処理
}

// プレイヤー追跡処理
bool CHorizontalCannon::IsFoundPlayer() const
{
    CVector playerPos = PLAYER_INSTANCE->Position();
    CVector enemyPos = Position();

    CVector toPlayer = (playerPos - enemyPos).Normalized();
    CVector forward = Matrix().VectorZ().Normalized();

    float dot = forward.Dot(toPlayer);

    // 視野角の半分を計算する
    float halfFOV = FOV_ANGLE * 0.5f;

    // 視野角の半分より小さいかつプレイヤーとの距離が一定範囲以内であれば、プレイヤーを認識する
    if (dot >= cosf(halfFOV * M_PI / 180.0f))
    {
        float distance = (playerPos - enemyPos).Length();
        const float chaseRange = CASERANGE;

        if (distance <= chaseRange)
            return true;
    }

    return false;
}

// 更新処理
void CHorizontalCannon::Update()
{
    if (IsFoundPlayer())
    {
        if (!mFire)
        {
            // 弾丸を生成
            new CHorizontalCannonBall
            (
                // 発射位置
                Position() + CVector(0.0f, -2.0f, 0.0f) + VectorZ(),
                VectorZ(),	// 発射方向
                80.0f,	    // 移動距離
                200.0f		// 飛距離
            );
            mFire = true;
        }

        // 打った後の処理
        if (mFire)
        {
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
    else
    {
        // 打った後の処理
        if (mFire)
        {
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
    
    //CDebugPrint::Print("mFireTime:%f\n", mFireTime);
}

// 描画処理
void CHorizontalCannon::Render()
{
    mpCannon->SetColor(mColor);
    mpCannon->Render(Matrix());
}


CCannonFoundationsHorizontal::CCannonFoundationsHorizontal(const CVector& pos, const CVector& scale, const CVector& rot)
    : CObjectBase(ETag::eEnemy, ETaskPriority::eDefault, 0, ETaskPauseType::eGame)
{
    // 大砲土台モデルを取得
    mpCannonFoundations = CResourceManager::Get<CModel>("HorizontalCannonFound");

    Position(pos);
    Scale(scale);
    Rotate(rot);
}

CCannonFoundationsHorizontal::~CCannonFoundationsHorizontal()
{
}

void CCannonFoundationsHorizontal::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
}

void CCannonFoundationsHorizontal::Update()
{
}

void CCannonFoundationsHorizontal::Render()
{
    mpCannonFoundations->SetColor(mColor);
    mpCannonFoundations->Render(Matrix());
}