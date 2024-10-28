#include "CFixedFlamethrower.h"
#include "CPlayer.h"
#include "CFlamethrower.h"
#include "Maths.h"
#include "CStageManager.h"
#include "CPlayer.h"

#define WAIT_TIME 4.0f
#define FOV_ANGLE 170.0f

CFixedFlamethrower::CFixedFlamethrower(const CVector& pos, const CVector& scale, const CVector& rot)
	: CObjectBase(ETag::eField, ETaskPriority::eBackground)
	, mState(EState::Idle)
	, mStateStep(0)
	, fire(true)
	, mWaitTime(0.0f)
{
	// 火炎放射器モデル取得
	mpFlamethrowerModel = CResourceManager::Get<CModel>("FlamethrowerModel");
	mpFlamethrowerTank = CResourceManager::Get<CModel>("FlamethrowerTank");

	// 火炎放射器コライダー
	CModel* flameCol = CResourceManager::Get<CModel>("FlamethrowerCol");
	mpColliderMesh = new CColliderMesh(this, ELayer::eFlameWall, flameCol, true);

	// 火炎エフェクト
	mpFlamethrower = new CFlamethrower
	(
		this, nullptr,
		CVector(0.0f, 16.0f, -1.0f),
		CQuaternion(0.0f, 0.0f, 0.0f).Matrix()
	);
	CStageManager::AddTask(mpFlamethrower);

	Position(pos);
	Scale(scale);
	Rotation(rot);

	SetColor(CColor(1.0f, 1.0f, 1.0f, 1.0f));
}

CFixedFlamethrower::~CFixedFlamethrower()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderMesh);
}

void CFixedFlamethrower::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
	mWaitTime = WAIT_TIME;
}

void CFixedFlamethrower::UpdateIdle()
{
	if (IsFoundPlayer())
	{
		if (fire)
		{
			mWaitTime -= Time::DeltaTime();
			if (mWaitTime >= 0.0f)
			{
				if (!mpFlamethrower->IsThrowing())
				{
					mpFlamethrower->Start();
				}
			}
			else
			{
				if (mpFlamethrower->IsThrowing())
				{
					mpFlamethrower->Stop();
				}
				fire = false;
			}
		}
		else
		{
			if (mWaitTime <= WAIT_TIME)
			{
				mWaitTime += Time::DeltaTime();
				if (mWaitTime >= WAIT_TIME)
				{
					mWaitTime = WAIT_TIME;
					fire = true;
				}
			}
		}
	}
	else
	{
		mWaitTime = 4.0f;
		if (mpFlamethrower->IsThrowing())
		{
			mpFlamethrower->Stop();
		}
		fire = false;
	}
	//CDebugPrint::Print("wait:%f\n", mWaitTime);
}

void CFixedFlamethrower::Update()
{
	switch (mState)
	{
	case EState::Idle:
		UpdateIdle();
		break;
	}
}

void CFixedFlamethrower::Render()
{
	mpFlamethrowerModel->SetColor(mColor);
	mpFlamethrowerModel->Render(Matrix());
	mpFlamethrowerTank->SetColor(mColor);
	mpFlamethrowerTank->Render(Matrix());
}

// プレイヤーを見つけたか
bool CFixedFlamethrower::IsFoundPlayer() const
{
	CVector playerPos = CPlayer::Instance()->Position();
	CVector beamer = Position();

	// プレイヤーとの距離を計算する
	float distance = (playerPos - beamer).Length();
	const float detectionRadius = FOV_ANGLE;

	// プレイヤーとの距離が検出半径以内であれば、プレイヤーを認識する
	if (distance <= detectionRadius)
	{
		return true;
	}

	return false;

}