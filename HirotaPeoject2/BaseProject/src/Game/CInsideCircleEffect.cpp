#include "CInsideCircleEffect.h"
#include "CPlayer.h"
#include "Maths.h"

// コンストラクタ
CInsideCircleEffect::CInsideCircleEffect(float angle, float dist)
	: mAngle(angle)
	, mDistance(dist)
	, mElapsedTime(0.0f)
{
	mpCircleModel = CResourceManager::Get<CModel>("CircleEffect1");
	mpCircleModel->SetupEffectSettings();
	Scale(5.0f, 4.0f, 5.0f);
}

// デストラクタ
CInsideCircleEffect::~CInsideCircleEffect()
{

}

// 更新処理
void CInsideCircleEffect::Update()
{
	CPlayer* player = CPlayer::Instance();

	CVector center = mOwner->Position();
	CVector pos = CVector::zero;
	pos.X(cosf(Math::DegreeToRadian(mAngle)) * mDistance);
	pos.Z(sinf(Math::DegreeToRadian(mAngle)) * mDistance);
	pos.Y(0.0f);
	Position(center + pos);

	CVector dir = center - Position();
	dir.Y(0.0f);
	dir.Normalized();
	Rotation(CQuaternion::LookRotation(dir));

	mAngle += 55.0f * Time::DeltaTime();
	if (mAngle >= 360.0f) mAngle -= 360.0f;

	bool healing = player->IsHealingItem();
	bool attack = player->IsAttackItem();

	if (mElapsedTime >= 3.0f)
	{
		mElapsedTime = 0.0f;
		Kill();

	}
	else
	{
		mElapsedTime += Time::DeltaTime();
	}

	/*bool attack = player->IsAttackItem();
	bool healing = player->IsHealingItem();*/

	//if (!attack)
	//{
	//	// 削除
	//	Kill();
	//}
	//else if (!healing)
	//{
	//	// 削除
	//	Kill();
	//}
}

// 描画処理
void CInsideCircleEffect::Render()
{
	mpCircleModel->SetColor(mColor);
	mpCircleModel->Render(Matrix());
}