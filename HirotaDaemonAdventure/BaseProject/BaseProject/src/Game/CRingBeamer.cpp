#include "CRingBeamer.h"
#include "CCharaBase.h"
#include "Maths.h"
#include "CBiribiri.h"
#include "CStageManager.h"
#include "CPlayer.h"

// 攻撃待ち時間
#define ATTACK_WAIT_TIME 0.3f
// 攻撃終了後の待ち時間
#define ATTACK_END_TIME 2.0f
// 待機状態
#define WAIT_TIME 2.0f
// 戻り状態
#define RETURN_TIME 5.0f
// 攻撃回数
#define ATTACK_COUNTER 3
// 視野角の角度
#define FOV_ANGLE 150.0f

// コンストラクタ
CRingBeamerUpper::CRingBeamerUpper(const CVector& pos, const CVector& scale, const CVector& rot)
	: CObjectBase(ETag::eRingBeam, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mState(EState::eIdle)
	, mStateStep(0)
	, mAttackCount(0)
	, mElapsedTime(0.0f)
	, mStartPosition(0.0f)
	, mEndPosition(0.0f)
	, mAttackWait(0.0f)
	, mAttackEndWait(0.0f)
	, mIsAttackWave(false)
{
	// リングビーマ(上)モデル取得
	mpRingBeamerUpper = CResourceManager::Get<CModel>("RingBeamerUP");

	Position(pos);
	Scale(scale);
	Rotation(rot);

	mStartPos = Position();
}

// デストラクタ
CRingBeamerUpper::~CRingBeamerUpper()
{
	CStageManager::RemoveTask(this);
}

// 状態を切り替える
void CRingBeamerUpper::ChangeState(EState state)
{
	mState = state;
	mElapsedTime = 0.0f;
	mStateStep = 0;
}

// 待機状態の処理
void CRingBeamerUpper::UpdateIdle()
{
	if (IsFoundPlayer())
	{
		if (mAttackWait >= WAIT_TIME)
		{
			mStartPosition = 0.0f;
			mElapsedTime = 0.0f;
			mAttackWait = 0.0f;
			mAttackEndWait = 0.0f;
			mEndPosition = -4.0f;
			ChangeState(EState::eAttack);
		}
		mAttackWait += Time::DeltaTime();
	}
	else
	{
		mAttackCount = 0;
		mAttackWait = 0.0f;
	}
}

// 攻撃時の更新処理
void CRingBeamerUpper::UpdateAttack()
{
	if (!IsFoundPlayer())
	{
		mIsAttackWave = false;
		mStateStep = 0;
		mElapsedTime = 0.0f;
		mAttackEndWait = 0.0f;
		Position(mStartPos);
		ChangeState(EState::eIdle);
		return;
	}

	switch (mStateStep)
	{
		// 攻撃する
	case 0:
		if (mElapsedTime < ATTACK_WAIT_TIME)
		{
			float per = mElapsedTime / ATTACK_WAIT_TIME;
			float PositionY = Math::Lerp
			(
				mStartPosition,
				mEndPosition,
				per
			);
			mElapsedTime += Time::DeltaTime();

			Position(mStartPos + CVector(0.0f, PositionY, 0.0f));
		}
		else
		{
			if (!mIsAttackWave)
			{
				mIsAttackWave = true;
				// リングビームを発射
				CBiribiri* biribiri = new CBiribiri
				(
					this,
					Position() + CVector(0.0f, 2.0f, 0.0f)
				);
				// リングビームエフェクトの色設定
				biribiri->SetColor(CColor(1.0f, 1.0f, 0.0f));
				CStageManager::AddTask(biribiri);
			}

			Position(mStartPos + CVector(0.0f, mEndPosition, 0.0f));
			mAttackEndWait += Time::DeltaTime();
			if (mAttackEndWait >= ATTACK_WAIT_TIME)
			{
				mElapsedTime = 0.0f;
				mAttackEndWait = 0.0f;
				mStateStep++;
			}
		}
		break;
		// 元に戻す
	case 1:
		if (mElapsedTime < ATTACK_WAIT_TIME)
		{
			float per = mElapsedTime / ATTACK_WAIT_TIME;
			float PositionY = Math::Lerp
			(
				mEndPosition,
				mStartPosition,
				per
			);
			mElapsedTime += Time::DeltaTime();

			Position(mStartPos + CVector(0.0f, PositionY, 0.0f));
		}
		else
		{
			// カウントが小さかったら
			if (mAttackCount <= ATTACK_COUNTER)
			{
				// 繰り返す
				mAttackCount += 1;
				mIsAttackWave = false;
				mStateStep = 0;
				mAttackWait = 0.0f;
				mElapsedTime = 0.0f;
				Position(mStartPos + CVector(0.0f, mStartPosition, 0.0f));
			}
			else if (mAttackCount >= ATTACK_COUNTER)
			{
				mAttackCount = 0;
				mElapsedTime = 0.0f;
				mAttackWait = 0.0f;
				mIsAttackWave = false;
				Position(mStartPos + CVector(0.0f, mStartPosition, 0.0f));
				ChangeState(EState::eIdle);
			}
			break;
		}
		break;
	}
}

// 攻撃終了時の更新処理
void CRingBeamerUpper::UpdateAttackEnd()
{

}

 // 更新処理
void CRingBeamerUpper::Update()
{
	//CDebugPrint::Print("mAttackCount%d\n", mAttackCount);
	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// 攻撃状態
	case EState::eAttack:
		UpdateAttack();
		break;
		// 攻撃終了状態
	case EState::eAttackEnd:
		UpdateAttackEnd();
		break;
	}
	//CDebugPrint::Print("mAttackWait:%f\n", mAttackWait);
}

// 描画処理
void CRingBeamerUpper::Render()
{
	mpRingBeamerUpper->SetColor(mColor);
	mpRingBeamerUpper->Render(Matrix());
}

// プレイヤーを見つけたか
bool CRingBeamerUpper::IsFoundPlayer() const
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

	//CVector playerPos = CPlayer::Instance()->Position();
	//CVector beamer = Position();

	//CVector toPlayer = (playerPos - beamer).Normalized();
	//CVector forward = Matrix().VectorZ().Normalized();

	//float dot = forward.Dot(toPlayer);

	//// 視野角の半分を計算する
	//float halfFOV = FOV_ANGLE * 0.5f;

	//// 視野角の半分より小さいかつプレイヤーとの距離が一定範囲以内であれば、プレイヤーを認識する
	//if (dot >= cosf(halfFOV * M_PI / 180.0f))
	//{
	//	float distance = (playerPos - beamer).Length();
	//	const float chaseRange = 100.0f;

	//	if (distance <= chaseRange)
	//	{
	//		return true;
	//	}
	//}

	//return false;
}


CRingBeamerLower::CRingBeamerLower(const CVector& pos, const CVector& scale, const CVector& rot)
	: CObjectBase(ETag::eRingBeam, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
{
	// リングビーマ(下)モデル取得
	mpRingBeamerLower = CResourceManager::Get<CModel>("RingBeamerLO");


	Position(pos);
	Scale(scale);
	Rotation(rot);

	mStartPos = Position();
}

CRingBeamerLower::~CRingBeamerLower()
{
	CStageManager::RemoveTask(this);
}

void CRingBeamerLower::Update()
{

}

void CRingBeamerLower::Render()
{
	mpRingBeamerLower->SetColor(mColor);
	mpRingBeamerLower->Render(Matrix());
}