#include "CNumberFloorBase.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CStageManager.h"

// 消えるのにかかる時間
#define FADE_TIME 4.0f
// 消えた後の待ち時間
#define WAIT_TIME 4.0f

// コンストラクタ
CNumberFloorBase::CNumberFloorBase(const CVector& pos, const CVector& scale, const CVector& rot)
	: CObjectBase(ETag::eRideableObject, ETaskPriority::eNumberFalling)
	, mState(EState::Idle)
	, mpModel(nullptr)
	, mpCollider(nullptr)
	, mStateStep(0)
	, mSwitchCount(0)
	, mFallingSwitch(0)
	, mFadeTime(0.0f)
	, mWaitTime(0.0f)
	, mElapsedTime(0.0f)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mStartPos(CVector::zero)
	, mIsCollision(false)
	, mCase0End(false)
	, mCase1End(false)
{
	Position(pos);
	Scale(scale);
	Rotate(rot);
}

CNumberFloorBase::~CNumberFloorBase()
{
	SAFE_DELETE(mpCollider);
}

// 衝突処理
void CNumberFloorBase::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
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
		// 現在が待機状態であれば、フェード状態へ切り替える
		if (mState == EState::Idle)
		{
			ChangeState(EState::Waiting);
		}
		mIsCollision = true;
	}
}

// 状態を切り替える
void CNumberFloorBase::ChangeState(EState state)
{
	if (mState == state) return;
	mState = state;
	mStateStep = 0;
	//mFallingSwitch = 0;
}

// 元の位置に戻る際のモデルパス設定
void CNumberFloorBase::SetModelPath(const std::string& path)
{
	mModelPath = path;
}

// 待機状態の処理
void CNumberFloorBase::UpdateIdle()
{

}

// 待ち状態の処理
void CNumberFloorBase::UpdateWaiting()
{

}

// 落下状態の処理
void CNumberFloorBase::UpdateFalling()
{
	switch (mFallingSwitch)
	{
		// 赤色で点滅させる
	case 0:
	{
		static const float time = 2.0f;
		if (mElapsedTime < time)
		{
			mElapsedTime += Time::DeltaTime();
			float red = 0.5f + 0.5f * sin(2.0f * M_PI * mElapsedTime);
			CColor color = CColor(red, 0.0f, 0.0f, 1.0f);
			SetColor(color);
		}
		else
		{
			mSwitchCount++;
			mElapsedTime = 0.0f;
			if (mSwitchCount == 2)
			{
				mFallingSwitch++;
			}
		}
	}
	break;
	// 落下させる
	case 1:
	{
		static const float fall = 10.0f;
		mMoveSpeed = CVector(0.0f, -fall * Time::DeltaTime(), 0.0f);
		Position(Position() + mMoveSpeed);
		if (Position().Y() <= mStartPos.Y() - 40.0f)
		{
			mpCollider->SetEnable(false);
			SetColor(CColor(0.0f, 0.0f, 0.0f, 0.0f));
			mFallingSwitch++;
		}
	}
	break;
	// 元の状態に戻す
	case 2:
	{
		mElapsedTime += Time::DeltaTime();
		if (mElapsedTime >= 5.0f)
		{
			mSwitchCount = 0;
			mElapsedTime = 0;
			mFallingSwitch = 0;
			mCase0End = false;
			mCase1End = false;
			Position(mStartPos);
			mpCollider->SetEnable(true);
			SetColor(CColor(1.0f, 1.0f, 1.0f, 1.0f));
			mpModel = CResourceManager::Get<CModel>(mModelPath);
			ChangeState(EState::Idle);
		}
	}
	break;
	}
}

// 更新処理
void CNumberFloorBase::Update()
{
	// 床の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::Idle:
		UpdateIdle();
		break;
		// 待ち状態
	case EState::Waiting:
		UpdateWaiting();
		break;
		// 落下状態
	case EState::Falling:
		UpdateFalling();
		break;
	}
	// 衝突フラグを初期化
	mIsCollision = false;
}

// 描画処理
void CNumberFloorBase::Render()
{
	if (mpModel != nullptr)
	{
		mpModel->SetColor(mColor);
		mpModel->Render(Matrix());
	}
}