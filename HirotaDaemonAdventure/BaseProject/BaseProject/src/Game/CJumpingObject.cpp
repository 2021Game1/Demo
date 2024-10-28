#include "CJumpingObject.h"
#include "CPlayer.h"
#include "CInput.h"
#include "Maths.h"
#include "Easing.h"

#define SHRINK_SCALE 0.8f
#define SHRINK_TIME 0.15f
#define RETURN_TIME 0.8f

// コンストラクタ
CJumpingObject::CJumpingObject(const CVector& pos, const CVector& scale, const CVector& rot)
	: CObjectBase(ETag::eJumpingObject, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mpModel(nullptr)
	, mpCollider(nullptr)
	, mState(EState::eIdle)
	, mStartScale(scale)
	, mStateStep(0)
	, mElapsedTime(0.0f)
	, mJumpedElapsedTime(0.0f)
	, mIsCollisionPlayer(false)
{
	Position(pos);
	Scale(mStartScale);
	Rotate(rot);
}

// デストラクタ
CJumpingObject::~CJumpingObject()
{
	SAFE_DELETE(mpCollider);
}

// 衝突処理
void CJumpingObject::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	// 反転した押し戻しベクトルと上方向のベクトルの内積(角度)を求める
	float dot = CVector::Dot(-hit.adjust.Normalized(), CVector::up);
	// 上に乗ったと判断するためのcos関数に渡した角度を求める
	float cosAngle = cosf(Math::DegreeToRadian(10.0f));
	// 求めた角度が指定した角度の範囲内であれば、
	if (dot >= cosAngle)
	{
		if (mJumpedElapsedTime <= 0.2f)
		{
			CPlayer* player = dynamic_cast<CPlayer*>(owner);
			if (player)
			{
				player->UpdateHighJumpingStart();
				BounceStart();
			}
		}
		else
		{
			CPlayer* player = dynamic_cast<CPlayer*>(owner);
			if (player)
			{
				player->UpdateJumpingStart();
				BounceStart();
			}
		}
		mIsCollisionPlayer = true;
	}

	// 反転した押し戻しベクトルと上方向のベクトルの内積(角度)を求める
	float dotdown = CVector::Dot(-hit.adjust.Normalized(), CVector::down);
	// 下に乗ったと判断するためのcos関数に渡した角度を求める
	float cosAngleDown = cosf(Math::DegreeToRadian(10.0f));
	if (dotdown >= cosAngleDown)
	{
		ChangeState(EState::eIdle);
	}
}

// 状態を切り替える
void CJumpingObject::ChangeState(EState state)
{
	if (mState == state) return;
	mState = state;
	mStateStep = 0;
	mElapsedTime = 0.0f;
}

// 跳ねさせる状態の開始処理
void CJumpingObject::BounceStart()
{
	// 跳ねさせる状態へ切り替え
	ChangeState(EState::eBounce);
	mStateStep = 0;
	mElapsedTime = 0.0f;

	// スケール値を開始時のスケール値に戻す
	Scale(mStartScale);
}

// 待機状態の処理
void CJumpingObject::UpdateIdle()
{
	if (mIsCollisionPlayer)
	{
		BounceStart();
	}
}

// 跳ねている状態の更新処理
void CJumpingObject::UpdateBounce()
{
	switch (mStateStep)
	{
	case 0:
		mStartScale = Scale();
		mShrinkScale = mStartScale;
		mShrinkScale.X(mShrinkScale.X() * SHRINK_SCALE);
		mShrinkScale.Y(mShrinkScale.Y() * SHRINK_SCALE);
		mShrinkScale.Z(mShrinkScale.Z() * SHRINK_SCALE);
		Scale(mShrinkScale);
		mStateStep++;
		break;

	case 1:
		if (mElapsedTime < SHRINK_TIME)
		{
			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			mStateStep++;
			mElapsedTime = 0.0f;
		}
		break;
	case 2:
		if (mElapsedTime < RETURN_TIME)
		{
			float percent = Easing::BounceOut
			(
				mElapsedTime,	// 現在の時間
				RETURN_TIME,	// 目的の時間
				0.0f,			// 最小値
				1.0f			// 最大値
			);

			// 線形補間
			CVector scale = CVector::LerpUnclamped(
				mShrinkScale,
				mStartScale,
				percent
			);
			Scale(scale);

			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			Scale(mStartScale);
			mElapsedTime = 0.0f;
			mStateStep++;
		}
		break;
	case 3:
		if (!mIsCollisionPlayer)
		{
			ChangeState(EState::eIdle);
		}
		break;
	}
}

// 更新処理
void CJumpingObject::Update()
{
	if (CInput::PushKey(VK_SPACE))
	{
		mJumpedElapsedTime = 0.0f;
	}
	else
	{
		mJumpedElapsedTime += Time::DeltaTime();
	}

	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// 現れている状態
	case EState::eBounce:
		UpdateBounce();
		break;

	}
	// 衝突フラグを初期化
	mIsCollisionPlayer = false;
}

// 描画処理
void CJumpingObject::Render()
{
	if (mpModel != nullptr)
	{
		mpModel->SetColor(mColor);
		mpModel->Render(Matrix());
	}
}