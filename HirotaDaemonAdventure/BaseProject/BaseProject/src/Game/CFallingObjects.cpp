#include "CFallingObjects.h"
#include "Maths.h"
#include "CPlayer.h"

// 消えるのにかかる時間
#define FADE_TIME 3.0f
// 消えた後の待ち時間
#define WAIT_TIME 3.0f
// 落ちた時の最低値
#define MINHEIGHT -30.0f

// コンストラクタ
CFallingObjects::CFallingObjects(const CVector& pos, const CVector& scale,
	ETag reactionTag, ELayer reactionLayer)
	: CRideableObject(ETaskPriority::eFalling)
	, mState(EState::Idle)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
	, mStateStep(0)
	, mFadeTime(0.0f)
	, mWaitTime(0.0f)
	, mStartPos(0.0f, 0.0f, 0.0f)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mIsCollision(false)
{
	// 初期位置を設定
	mStartPos = Position();

	// 落下する床モデルを取得
	mpModel = CResourceManager::Get<CModel>("FieldCube");

	// 落下する床のコライダー作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpModel, true);
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer, ELayer::eEnemy });
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer, ETag::eEnemy });

	// 生成時に設定された触れた時に反応するオブジェクトタグと
	// コライダーのレイヤーを個別に設定
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);
	mpColliderMesh->SetCollisionTag(mReactionTag, true);

	Position(pos);
	Scale(scale);

	SetColor(CColor(0.0f, 1.0f, 1.0f, 1.0f));

}

// デストラクタ
CFallingObjects::~CFallingObjects()
{
	SAFE_DELETE(mpColliderMesh);
}

// 衝突処理
void CFallingObjects::Collision(CCollider* slef, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	// 衝突しているのが、反応するオブジェクトであれば
	if (owner->Tag() == mReactionTag && other->Layer() == mReactionLayer)
	{
		// 現在が待機状態であれば、フェード状態へ切り替える
		if (mState == EState::Idle)
		{
			ChangeState(EState::Falling);
			mWaitTime = WAIT_TIME;
		}

		// 反応するオブジェクトが触れているので
		// 衝突フラグをオン
		mIsCollision = true;
	}
}

// ステージ開始時の位置を設定
void CFallingObjects::SetStartPosition(const CVector& pos)
{
	mStartPos = pos;
	Position(mStartPos);
}

// 状態を切り替える
void CFallingObjects::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// 待機状態の処理
void CFallingObjects::UpdateIdle()
{

}

// 落下状態の更新処理
void CFallingObjects::UpdateFalling()
{
	// ステップごとに処理を切り替え
	switch (mStateStep)
	{
		// ステップ0 フェード後の待ち時間
	case 0:
		// 待ち時間が経過していなければ、経過時間分減らす
		if (Position().Y() > MINHEIGHT)
		{
			// 下降
			float fallSpeed = 50.0f;

			mMoveSpeed = CVector(0.0f, -fallSpeed * Time::DeltaTime(), 0.0f);
			Position(Position() + mMoveSpeed);
		}
		// 最大値を越したら
		else
		{
			mpColliderMesh->SetEnable(false);
			SetAlpha(0.0f);
			mStateStep++;
		}
		break;
		// ステップ1 オブジェクトを疑似消去
	case 1:
	{
		// 最大値になったら当たり判定と
		// 描画を消す
		if (Position().Y() <= MINHEIGHT)
		{
			if (mWaitTime > 0.0f)
			{
				
				mWaitTime -= Time::DeltaTime();
				//CDebugPrint::Print("mWaitTime %f\n", mWaitTime);
			}
			// 待ち時間が経過したら、次のステップへ
			else
			{
				mStateStep++;
			}
		}
	}
		break;
	case 2:
	{
		// 位置を最初の位置に戻して
		// 描画を再開する
		Position(mStartPos);
		mpColliderMesh->SetEnable(true);
		SetAlpha(1.0f);
		mWaitTime = 0.0f;

		// 待機状態へ戻す
		ChangeState(EState::Idle);
	}
	}
}

// 更新
void CFallingObjects::Update()
{
	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::Idle:
		UpdateIdle();
		break;
		// 落下状態
	case EState::Falling:
		UpdateFalling();
		break;

	}

	// 衝突フラグを初期化
	mIsCollision = false;
}

// 描画
void CFallingObjects::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}