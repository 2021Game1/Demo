#include "CRotateFloorTimeGimmick.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CModel.h"

// 待ち時間
#define WAIT_TIME 3.0f
// 回転床の回転に書かkる時間
#define ROTATE_TIME 0.6f

// コンストラクタ
CRotateFloorTimeGimmick::CRotateFloorTimeGimmick(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eField, ETaskPriority::eRotate, 0, ETaskPauseType::eGame)
	, mState(EState::Idle)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
	, mDefaultRot(rot)
	, mStateStep(0)
	, mWaitTime(0.0f)
	, mRotationAngle(0.0f)
	, mRotateStartAngle(0.0f)
	, mRotateEndAngle(0.0f)
	, mElapsedTime(0.0f)
	, mStartPos(0.0f, 0.0f, 0.0f)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mIsCollision(false)
	, mNextRotateIsRotate2(false)
{
	// 回転する床モデルを取得(コライダーも)
	mpRotateFloor = CResourceManager::Get<CModel>("RotateFloor");

	// 回転する床の表側のコライダーを作成
	CModel* frontCol = CResourceManager::Get<CModel>("RotateFloorFrontCol");
	mpFrontFloorCol = new CColliderMesh(this, ELayer::eField, frontCol, true);
	mpFrontFloorCol->SetCollisionLayers({ ELayer::ePlayer });
	mpFrontFloorCol->SetCollisionTags({ ETag::ePlayer });

	// 回転する床の裏側を作成
	CModel* backCol = CResourceManager::Get<CModel>("RotateFloorBackCol");
	mpBackFloorCol = new CColliderMesh(this, ELayer::eField, backCol, true);
	mpBackFloorCol->SetCollisionLayers({ ELayer::ePlayer });
	mpBackFloorCol->SetCollisionTags({ ETag::ePlayer });
	ChangeState(EState::Idle);

	// 最初は表側をオン、裏側はオフ
	mpFrontFloorCol->SetEnable(true);
	mpBackFloorCol->SetEnable(false);

	ChangeState(EState::Idle);

	Position(pos);
	Scale(scale);
	Rotation(mDefaultRot);

	// 初期位置を設定
	mStartPos = Position();

	SetColor(CColor(1.0f, 1.0f, 1.0f, 1.0f));
}

// デストラクタ
CRotateFloorTimeGimmick::~CRotateFloorTimeGimmick()
{
	SAFE_DELETE(mpFrontFloorCol);
	SAFE_DELETE(mpBackFloorCol);
}

// 衝突処理
void CRotateFloorTimeGimmick::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;
}

// 状態を切り替える
void CRotateFloorTimeGimmick::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
	mWaitTime = WAIT_TIME;
}

// 回転状態を切り替える
void CRotateFloorTimeGimmick::ChangeRotationState()
{
	mNextRotateIsRotate2 = !mNextRotateIsRotate2;
}

// 待機状態の処理
void CRotateFloorTimeGimmick::UpdateIdle()
{
	mWaitTime -= Time::DeltaTime();
	if (mWaitTime <= 0.0f)
	{
		ChangeRotationState();
		// 現在の回転状態に応じて適切な状態を設定
		if (mNextRotateIsRotate2) {
			mRotateStartAngle = 0.0f;
			mRotateEndAngle = 180.0f;
		}
		else {
			mRotateStartAngle = 180.0f;
			mRotateEndAngle = 0.0f;
		}
		mElapsedTime = 0.0f;
		ChangeState(EState::Rotate);
	}
	//CDebugPrint::Print("WaitTime:%f\n", mWaitTime);
}


// 回転状態の更新処理
void CRotateFloorTimeGimmick::UpdateRotate()
{
	// 回転にかかる時間を経過していない
	if (mElapsedTime < ROTATE_TIME)
	{
		// 回転開始時の角度から徐々に回転終了時の角度へ回転する
		float per = mElapsedTime / ROTATE_TIME;
		float angleZ = Math::Lerp
		(mRotateStartAngle,
			mRotateEndAngle,
			per
		);
		Rotation(mDefaultRot * CQuaternion(CVector(0.0f, 0.0f, angleZ)));
		mElapsedTime += Time::DeltaTime();

		// 回転する床の角度が90度以下であれば、
		if (fabsf(angleZ) <= 90.0f)
		{
			// 床のコライダーの表側をオンにして、裏側をオフにする
			mpFrontFloorCol->SetEnable(true);
			mpBackFloorCol->SetEnable(false);
		}
		// 回転する床の角度が90度を越えれば、
		else
		{
			// 床のコライダーの裏側をオンにして、表側をオフにする
			mpFrontFloorCol->SetEnable(false);
			mpBackFloorCol->SetEnable(true);
		}
	}
	// 回転にかかる時間を経過した
	else
	{
		mElapsedTime = 0.0f;
		mWaitTime = WAIT_TIME;
		Rotation(mDefaultRot * CQuaternion(CVector(0.0f, 0.0f, mRotateEndAngle)));
		ChangeState(EState::Idle);
	}
}

// 更新
void CRotateFloorTimeGimmick::Update()
{
	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::Idle:
		UpdateIdle();
		break;
		// 回転状態1
	case EState::Rotate:
		UpdateRotate();
		break;
	}

	// 衝突フラグを初期化
	mIsCollision = false;
}

// 描画
void CRotateFloorTimeGimmick::Render()
{
	mpRotateFloor->SetColor(mColor);
	mpRotateFloor->Render(Matrix());
}