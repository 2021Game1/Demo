#include "CElectricLaser.h"
#include "CLineEffect.h"
#include "Maths.h"
#include "CStageManager.h"

#define LINE_DIV_COUNT 3
#define LINE_WIDTH 5.0f

CElectricLaser::CElectricLaser(const CVector& pos, const CVector& move, float moveTime,
	const CVector& laserStartPos, const CVector& laserEndPos, const CVector& colliderPos1, const CVector& colliderPos2)
	: CObjectBase(ETag::eBiribiri, ETaskPriority::eEffect,
		0, ETaskPauseType::eGame)
	, mEffectAnimData(1, 11, true, 11, 0.03f)
	, mStartPos(pos)
	, mMoveVec(move)
	, mMoveTime(moveTime)
	, mElapsedTime(0.0f)
{
	Position(mStartPos);

	mpLineEffect = new CLineEffect(ETag::eEffect);
	mpLineEffect->SetTexture("LightningBolt");
	mpLineEffect->SetBaseUV(CRect(0.0f, 0.0f, 128.0f, 1024.0f));
	mpLineEffect->SetAnimData(&mEffectAnimData);

	mpLineEffect->AddPoint(laserStartPos, LINE_WIDTH, LINE_WIDTH);
	for (int i = 0; i < LINE_DIV_COUNT; i++)
	{
		float alpha = (float)(i + 1) / LINE_DIV_COUNT;
		CVector pos = CVector::Lerp(laserStartPos, laserEndPos, alpha);
		mpLineEffect->AddPoint(pos, LINE_WIDTH, LINE_WIDTH);
	}
	mpLineEffect->SetOwner(this);

	mpLine = new CColliderLine
	(
		this, ELayer::eBiribiri,
		colliderPos1,
		colliderPos2
	);
	mpLine->SetCollisionLayers({ ELayer::eDamageCol });
	mpLine->SetCollisionTags({ ETag::ePlayer });
}

CElectricLaser::~CElectricLaser()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpLine);

	if (mpLineEffect != nullptr)
	{
		mpLineEffect->SetOwner(nullptr);
		mpLineEffect->Kill();
	}
}

void CElectricLaser::DeleteObject(CObjectBase* obj)
{
	if (obj == mpLineEffect)
	{
		mpLineEffect = nullptr;
	}
}

void CElectricLaser::Update()
{
	float percent = mElapsedTime / mMoveTime;
	CVector pos = mStartPos + mMoveVec * sinf(M_PI * 2.0f * percent);
	Position(pos);
	mElapsedTime += Time::DeltaTime();
	if (mElapsedTime >= mMoveTime)
	{
		mElapsedTime -= mMoveTime;
	}
}