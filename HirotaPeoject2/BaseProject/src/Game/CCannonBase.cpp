#include "CCannonBase.h"
#include "CPlayer.h"
#include "CCannonBall.h"
#include "Maths.h"

// 視野の角度
#define FOV_ANGLE 100.0f

// コンストラクタ
CCannonBase::CCannonBase(const CVector& pos, const CVector& scale, const CVector& rot)
    : CObjectBase(ETag::eEnemy, ETaskPriority::eDefault, 0, ETaskPauseType::eGame)
    , mpCannon(nullptr)
    , InitialVectorZ(CVector::zero)
{
    InitialVectorZ = Matrix().VectorZ().Normalized();
    // 大砲モデルを取得
    //mpCannon = CResourceManager::Get<CModel>("Cannon");

    Position(pos);
    Scale(scale);
    Rotate(rot);
}

// デストラクタ
CCannonBase::~CCannonBase()
{
    
}

// 衝突処理
void CCannonBase::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
    // 衝突処理
}

// プレイヤー追跡処理
bool CCannonBase::IsFoundPlayer() const
{
    CPlayer* player = CPlayer::Instance();
    CVector playerPos = player->Position();
    CVector enemyPos = Position();

    // プレイヤーへのベクトル
    CVector toPlayer = (playerPos - enemyPos).Normalized();
    // 敵の前方向ベクトル
    CVector forward = Matrix().VectorZ().Normalized();

    // ドット積計算 (前方向かどうかの判定)
    float dot = forward.Dot(toPlayer);

    // 視野角の半分を計算する
    float halfFOV = FOV_ANGLE * 0.5f;

    // 視野角の半分より小さいかつプレイヤーとの距離が一定範囲以内であれば、プレイヤーを認識する
    if (dot >= cosf(halfFOV * M_PI / 180.0f))
    {
        float distance = (playerPos - enemyPos).Length();
        const float chaseRange = 350.0f;

        if (distance <= chaseRange)
            return true;
    }

    return false;
}

// 更新処理
void CCannonBase::Update()
{
   
}

// 描画処理
void CCannonBase::Render()
{
    if (mpCannon != nullptr)
    {
        mpCannon->SetColor(mColor);
        mpCannon->Render(Matrix());
    }
}


CCannonFoundationsBase::CCannonFoundationsBase(const CVector& pos, const CVector& scale, const CVector& rot,
    std::string modelPath)
    : CObjectBase(ETag::eEnemy, ETaskPriority::eDefault, 0, ETaskPauseType::eGame)
    , mpFoundations(nullptr)
{
    // 大砲土台モデルを取得
    mpFoundations = CResourceManager::Get<CModel>(modelPath);

    Position(pos);
    Scale(scale);
    Rotate(rot);
}

CCannonFoundationsBase::~CCannonFoundationsBase()
{
}

void CCannonFoundationsBase::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
}

void CCannonFoundationsBase::Update()
{
}

void CCannonFoundationsBase::Render()
{
    if (mpFoundations != nullptr)
    {
        mpFoundations->SetColor(mColor);
        mpFoundations->Render(Matrix());
    }
}