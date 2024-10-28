#include "CRisingObject.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CInput.h"
#include "CStageManager.h"

// 消えるのにかかる時間
#define FADE_TIME 3.0f
// 消えた後の待ち時間
#define WAIT_TIME 3.0f
// 上昇する最大値
#define MAXHEIGHT 100.0f
// 下降するスピード
#define FALLSPEED 20.0f


// コンストラクタ
CRisingObject::CRisingObject(const CVector& pos, const CVector& scale,
	ETag reactionTag, ELayer reactionLayer)
	: CRideableObject(ETaskPriority::eRising)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
	, mState(EState::Idle)
	, mStateStep(0)
	, mFadeTime(0.0f)
	, mWaitTime(0.0f)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mIsCollision(false)
{
	// 上昇する床のモデルを取得
	mpModel = CResourceManager::Get<CModel>("FieldCube");

	// 上昇する床のコライダー作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpModel, true);
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer, ELayer::eEnemy });
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer, ETag::eEnemy });

	// 生成時に設定された触れた時に反応するオブジェクトタグと
	// コライダーのレイヤーを個別に設定
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);
	mpColliderMesh->SetCollisionTag(mReactionTag, true);

	Position(pos);
	Scale(scale);

	// 初期位置の保存
	mStartPos = Position();

	SetColor(CColor(0.0f, 1.0f, 0.0f, 1.0f));

}

// デストラクタ
CRisingObject::~CRisingObject()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderMesh);
}

// 衝突処理
void CRisingObject::Collision(CCollider* slef, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	// 衝突しているのが、反応するオブジェクトであれば
	if (owner->Tag() == mReactionTag && other->Layer() == mReactionLayer)
	{
		// 現在が待機状態であれば、フェード状態へ切り替える
		if (mState == EState::Idle)
		{
			CPlayer* player = dynamic_cast<CPlayer*>(owner);
			if (player)
			{
				if (CInput::PushKey('U'))
				{
					ChangeState(EState::Rising);
				}
			}
		}

		// 反応するオブジェクトが触れているので
		// 衝突フラグをオン
		mIsCollision = true;
	}
}

// ステージ開始時の位置を設定
void CRisingObject::SetStartPosition(const CVector& pos)
{
	mStartPos = pos;
	Position(mStartPos);
}

// 状態を切り替える
void CRisingObject::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// 待機状態の処理
void CRisingObject::UpdateIdle()
{

}

// 上昇状態の更新処理
void CRisingObject::UpdateRising()
{
	// ステップごとに処理を切り替え
	switch (mStateStep)
	{
		// ステップ0 フェード後の待ち時間
	case 0:
		// 最大値より少ない
		if (Position().Y() < MAXHEIGHT)
		{
			// 上昇
			mMoveSpeed = CVector(0.0f, FALLSPEED * Time::DeltaTime(), 0.0f);
			Position(Position() + mMoveSpeed);
		}// 最大値を越したら
		else
		{
			mStateStep++;
		}
		break;
		// ステップ1 消えた床をもとに戻す
	case 1:
		// 下降
		mMoveSpeed = CVector(0.0f, -FALLSPEED * Time::DeltaTime(), 0.0f);
		Position(Position() + mMoveSpeed);
		mFadeTime -= Time::DeltaTime();
		// 離れた位置に達したら初期位置に戻す
		if (CVector::Distance(Position(), mStartPos) < 1.0f)
		{
			Position(mStartPos);
			// 待機状態へ戻す
			ChangeState(EState::Idle);
			mStateStep = 0;
		}
		break;
	}
}

// 更新
void CRisingObject::Update()
{
	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::Idle:
		UpdateIdle();
		break;
		// 上昇状態
	case EState::Rising:
		UpdateRising();
		break;

	}

	// 衝突フラグを初期化
	mIsCollision = false;
}

// 描画
void CRisingObject::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}