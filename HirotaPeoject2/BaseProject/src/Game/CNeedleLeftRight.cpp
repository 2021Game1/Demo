#include "CNeedleLeftRight.h"
#include "CCharaBase.h"
#include "Maths.h"

// 針の上昇する際の最大値
#define MAXHEIGHT 0.8f
// 針の上昇スピード
#define NEEDLE_INCREASE_VALUE 30.0f
// 針の下降スピード
#define NEEDLE_DESCENDING_VALUE 20.0f

// 攻撃待機時間
#define ATTACKWAIT_TIME 3.0f
// 待機時間
#define WAIT_TIME 4.0f
// 戻り状態
#define RETURN_TIME 5.0f
// 攻撃後の再起時間
#define WAIT_ATTACK_TIME 5.0f

// コンストラクタ
CNeedleLeftRight::CNeedleLeftRight(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eNeedleObject, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mState(EState::Idle)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
	, mStateStep(0)
	, mWait(0.0f)
	, mAttackWait(0.0f)
	, mElapsedTime(0.0f)
	, mWaitAttackTime(0.0f)
	, mStartPosition(0.0f)
	, mEndPosition(0.0f)
	, mIsCollision(false)
	, mIsAttack(false)
{
	// 針モデル取得
	mpNeedle = CResourceManager::Get<CModel>("NeedleLeftRight");

	// 針モデルのコライダーを作成
	CModel* Col = CResourceManager::Get<CModel>("NeedleColLeftRight");
	mpColliderMesh = new CColliderMesh(this, ELayer::eNeedleCol, Col, true);
	// 衝突定用のコライダーと衝突判定を行う
	// タグ付け
	// レイヤー付け
	// コライダーの位置を調整
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer, ETag::eItemRecover, ETag::eItemInvincible });
	mpColliderMesh->SetCollisionLayers({ ELayer::eDamageCol, ELayer::eRecoverCol, ELayer::eInvincbleCol });

	// 生成時に設定された触れた時に反応するオブジェクトタグと
	// コライダーのレイヤーを個別に設定
	mpColliderMesh->SetCollisionTag(mReactionTag, true);
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);

	Position(pos);
	Scale(scale);
	Rotation(rot);

	// 初期位置を設定
	mStartPos = Position();
}

// デストラクタ
CNeedleLeftRight::~CNeedleLeftRight()
{
	SAFE_DELETE(mpColliderMesh);
}

// 衝突処理
void CNeedleLeftRight::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 衝突した自分のコライダーが針コライダーであれば
	if (self == mpColliderMesh)
	{
		// キャラのポインタに変換
		CCharaBase* chara = dynamic_cast<CCharaBase*>(other->Owner());
		// 相手のコライダーの持ち主がキャラであれば
		if (chara != nullptr)
		{
			// すでに攻撃済みのキャラでなければ
			if (!IsAttackHitObj(chara))
			{
				// ダメージを与える
				chara->TakeDamage(1);

				// 攻撃済みリストに追加
				AddAttackHitObj(chara);

				mIsAttack = true;
			}
			mIsCollision = true;
		}
	}

}

// ステージ開始時の位置を設定
void CNeedleLeftRight::SetStartPosition(const CVector& pos)
{
	mStartPos = pos;
	Position(mStartPos);
}

// 攻撃開始
void CNeedleLeftRight::AttackStart()
{
	CObjectBase::AttackStart();
	// 攻撃が始まったら、攻撃判定用のコライダーをオフにする
	mpColliderMesh->SetEnable(true);
}

// 攻撃終了
void CNeedleLeftRight::AttackEnd()
{
	CObjectBase::AttackEnd();
	// 攻撃が終われば、攻撃判定用のコライダーをオフにする
	mpColliderMesh->SetEnable(false);
}

// 状態を切り替える
void CNeedleLeftRight::ChangeState(EState state)
{
	mState = state;
	mElapsedTime = 0.0f;
	mStateStep = 0;
}

// 待機状態の処理
void CNeedleLeftRight::UpdateIdle()
{
	if (mWait <= WAIT_TIME)
	{
		// 初期位置を設定
		mStartPosition = 0.0f;
		// 最後の位置を設定
		mEndPosition = 7.0f;
		mElapsedTime = 0.0f;
		// 攻撃状態へ移行
		ChangeState(EState::Attack);
	}
}
#define NEEDLE_TIME 0.05f

// 攻撃状態
void CNeedleLeftRight::UpdateAttack()
{
	// ステップごとに処理を切り替え
	switch (mStateStep)
	{
		// ステップ0 攻撃後の待ち時間
	case 0:
		if (mElapsedTime < NEEDLE_TIME)
		{
			mpColliderMesh->SetEnable(true);

			float per = mElapsedTime / NEEDLE_TIME;
			float positionX = Math::Lerp
			(
				mStartPosition,
				mEndPosition,
				per
			);
			mElapsedTime += Time::DeltaTime();

			Position(mStartPos + CVector(positionX, 0.0f, 0.0f));
		}
		else
		{
			Position(mStartPos + CVector(mEndPosition, 0.0f, 0.0f));
			mAttackWait += Time::DeltaTime();
			if (mAttackWait >= ATTACKWAIT_TIME)
			{
				mElapsedTime = 0.0f;
				mStateStep++;
			}
		}
		break;
		// ステップ1 針を戻す
	case 1:
		// 下降させる
		if (mElapsedTime < NEEDLE_TIME)
		{
			float per = mElapsedTime / NEEDLE_TIME;
			float positionX = Math::Lerp
			(
				mEndPosition,
				mStartPosition,
				per
			);
			mElapsedTime += Time::DeltaTime();

			Position(mStartPos + CVector(positionX, 0.0f, 0.0f));
		}
		else
		{
			// 当たった後の状態に遷移
			ChangeState(EState::AttackEnd);
			mStateStep = 0;
			mAttackWait = 0.0f;
			mElapsedTime = 0.0f;
			Position(mStartPos + CVector(mStartPosition, 0.0f, 0.0f));
			mpColliderMesh->SetEnable(false);
		}
		break;
	}
}

// 攻撃終了状態
void CNeedleLeftRight::UpdateAttackEnd()
{
	mWait += Time::DeltaTime();
	if (mWait >= WAIT_TIME)
	{
		mWait = 0.0f;
		ChangeState(EState::Idle);
	}
}

// 更新
void CNeedleLeftRight::Update()
{
	//CDebugPrint::Print("PositoinY:%f\n", Position().Y());
	if (mIsAttack)
	{
		mpColliderMesh->SetEnable(false);
		mWaitAttackTime += Time::DeltaTime();
		if (mWaitAttackTime >= WAIT_ATTACK_TIME)
		{
			// プレイヤーに当たった時間をリセット
			mWaitAttackTime = 0.0f;
			mIsAttack = false;
			mAttackHitObjects.clear();
		}
	}

	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::Idle:
		UpdateIdle();
		break;
		// 攻撃状態
	case EState::Attack:
		UpdateAttack();
		break;
		// 攻撃終了状態
	case EState::AttackEnd:
		UpdateAttackEnd();
		break;
	}
	//CDebugPrint::Print("wait%f\n", mWait);
	//CDebugPrint::Print("attackwait%f\n", mAttackWait);
	//CDebugPrint::Print("waitAttackTime%f\n", mWaitAttackTime);
}

// 描画
void CNeedleLeftRight::Render()
{
	mpNeedle->SetColor(mColor);
	mpNeedle->Render(Matrix());
}


// 針モデルの土台
CNeedleLeftRightBase::CNeedleLeftRightBase(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eNeedleObject, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
{
	// 針ベースモデル
	mpNeedleBase = CResourceManager::Get<CModel>("NeedleBaseLeftRight");	

	// 針モデルのコライダーを作成
	CModel* Col1 = CResourceManager::Get<CModel>("NeedleBaseColLeftRight");
	mpColliderBaseMesh = new CColliderMesh(this, ELayer::eFieldWall, Col1, true);
	// 衝突定用のコライダーと衝突判定を行う
	// タグ付け
	// レイヤー付け
	// コライダーの位置を調整
	mpColliderBaseMesh->SetCollisionTags({ ETag::ePlayer, ETag::eItemRecover, ETag::eItemInvincible });
	mpColliderBaseMesh->SetCollisionLayers({ ELayer::ePlayer, ELayer::eRecoverCol, ELayer::eInvincbleCol });

	// 生成時に設定された触れた時に反応するオブジェクトタグと
	// コライダーのレイヤーを個別に設定
	mpColliderBaseMesh->SetCollisionTag(mReactionTag, true);
	mpColliderBaseMesh->SetCollisionLayer(mReactionLayer, true);
	mpColliderBaseMesh->SetEnable(true);

	Position(pos);
	Scale(scale);
	Rotation(rot);

	// 初期位置を設定
	mStartPos = Position();
}

// デストラクタ
CNeedleLeftRightBase::~CNeedleLeftRightBase()
{
	SAFE_DELETE(mpColliderBaseMesh)
}

void CNeedleLeftRightBase::SetStartPosition(const CVector& pos)
{
	mStartPos = pos;
	Position(mStartPos);
}

void CNeedleLeftRightBase::Update()
{
	mpColliderBaseMesh->SetEnable(true);
}

void CNeedleLeftRightBase::Render()
{
	mpNeedleBase->SetColor(mColor);
	mpNeedleBase->Render(Matrix());
}