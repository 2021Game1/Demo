#include "CSeesawObject.h"
#include "CPlayer.h"
#include "Maths.h"
#include "CModel.h"

// コンストラクタ
CSeesawObject::CSeesawObject(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer, const float right, const float left,
	const float rotateRSpeed, const float rotateLSpeed)
	: CObjectBase(ETag::eSeesaw, ETaskPriority::eSeesaw, 0, ETaskPauseType::eGame)
	, mState(EState::eIdle)
	, mpModel(nullptr)
	, mpCollider(nullptr)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
	, mDeafaultRot(rot)
	, mRight(right)
	, mLeft(left)
	, mRotateRSpeed(rotateRSpeed)
	, mRotateLSpeed(rotateLSpeed)
	, mStateStep(0)
	, mRotationAngle(0.0f)
	, mRotateStartAngle(0.0f)
	, mRotateEndAngle(0.0f)
	, mElapsedTime(0.0f)
	, mStartPos(0.0f, 0.0f, 0.0f)
{
	Position(pos);
	Scale(scale);
	Rotation(mDeafaultRot);

	// 初期位置
	mStartPos = Position();
}

// デストラクタ
CSeesawObject::~CSeesawObject()
{
	SAFE_DELETE(mpCollider);
}

// 衝突処理
void CSeesawObject::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	// プレイヤーが触れた
	mIsHitCol = true;

	// プレイヤーの座標からシーソーの左右どちらに位置するか計算
	CVector playerPos = owner->Position();
	// シーソーの座標
	CVector seesawPos = Position();
	// シーソーからプレイヤーまでのベクトルを求める
	CVector vec = playerPos - seesawPos;
	// シーソーの横方向のベクトルを求める
	CVector side = VectorX();
	side.Y(0.0f);
	side.Normalize();
	// 2つのベクトルの内積から、
	// プレイヤーがシーソー上のどこに位置するか求める
	mHitDir = CVector::Dot(vec, side);
}

bool CSeesawObject::CollisionRay(const CVector& start, const CVector& end, CHitInfo* hit)
{
	bool isHit = CCollider::CollisionRay(mpCollider, start, end, hit);
	// シーソーのコライダーに当たったら
	if (isHit)
	{
		return true;
	}

	return false;
}

// 状態を切り替える
void CSeesawObject::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
	mElapsedTime = 0.0f;
}

// 待機状態の更新処理
void CSeesawObject::UpdateIdle()
{
	// プレイヤーがシーソーに触れている
	if (mIsHitCol)
	{
		// センターコライダーがtrueだったらそのまま
		if (abs(mHitDir) <= 10.0f)
		{
			// 元の角度を目的の角度(0度に)設定
			mRotateEndAngle = 0.0f;
			mElapsedTime = 0.0f;
		}
		// ライトコライダーに当たったら右に傾ける
		else if (mHitDir < 0.0f)
		{
			// 右に傾ける(目的の角度をright度に設定)
			mRotateEndAngle = mRight;
			mElapsedTime = 0.0f;
		}
		// レフトコライダーに当たったら左に傾ける
		else if (mHitDir > 0.0f)
		{
			// 左に傾ける(目的の角度を-left度に設定)
			mRotateEndAngle = -mLeft;
			mElapsedTime = 0.0f;
		}
	}
	// シーソーに一定時間触れていなかったら、
	// 元の角度(0度に戻す)
	else
	{
		if (mElapsedTime < 0.1f)
		{
			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			mRotateEndAngle = 0.0f;
		}
	}

	// 現在の角度が目的の角度より小さいのであれば、
	if (mRotationAngle < mRotateEndAngle)
	{
		// 角度を加算(右に傾ける)
		mRotationAngle += mRotateRSpeed * Time::DeltaTime();
		if (mRotationAngle > mRotateEndAngle)
		{
			mRotationAngle = mRotateEndAngle;
		}
	}
	// 現在の角度が目的の角度より小さいのであれば、
	else if (mRotationAngle > mRotateEndAngle)
	{
		// 角度を減算(左に傾ける)
		mRotationAngle -= mRotateLSpeed * Time::DeltaTime();
		if (mRotationAngle < mRotateEndAngle)
		{
			mRotationAngle = mRotateEndAngle;
		}
	}

	// 現在の角度を反映
	Rotation(mDeafaultRot * CQuaternion(0.0f, 0.0f, mRotationAngle));
}

// 更新処理
void CSeesawObject::Update()
{
	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
	case EState::eIdle:		// 待機状態
		UpdateIdle();
		break;
	}

	mIsHitCol = false;
}

// 描画処理
void CSeesawObject::Render()
{
	if (mpModel != nullptr)
	{
		mpModel->SetColor(mColor);
		mpModel->Render(Matrix());
	}
}