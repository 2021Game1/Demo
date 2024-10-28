#include "CHatenaBlock.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CRecoveryObject.h"
#include "CInvincible.h"
#include "CSound.h"
#include "CStageManager.h"

// ブロックが上に上昇する際の最大値
#define MAXHEIGHT 15.0f
// ブロックの上昇スピード
#define BLOCK_INCREASE_VALUE 120.0f
// ブロックの下降スピード
#define BLOCK_DESCENDING_VALUE 50.0f

// コンストラクタ
CHatenaBlock::CHatenaBlock(const CVector& pos, const CVector& scale,
	ETag reactionTag, ELayer reactionLayer)
	: CRideableObject(ETaskPriority::eHatenaOBJ)
	, mState(EState::Idle)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
	, mStateStep(0)
	, mFadeTime(0.0f)
	, mWaitTime(0.0f)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mIsCollision(false)
{
	// ハテナブロックモデル取得
	mpModel = CResourceManager::Get<CModel>("HatenaBlock");
	// ブロックを叩いた時のSE取得
	mpHitBlockSE = CResourceManager::Get<CSound>("8bitShot");

	// ハテナブロックの初期位置の保存
	mStartPos = Position();

	// ハテナブロックのコライダーを作成
	mpColliderSphere = new CColliderSphere
	(
		this, ELayer::eBlockCol,
		1.0f, true
	);
	// 衝突定用のコライダーと衝突判定を行う
	// タグ付け
	// レイヤー付け
	// コライダーの位置を調整
	mpColliderSphere->SetCollisionTags({ ETag::ePlayer, ETag::eItemRecover, ETag::eItemInvincible });
	mpColliderSphere->SetCollisionLayers({ ELayer::ePlayer, ELayer::eRecoverCol, ELayer::eInvincbleCol });
	mpColliderSphere->Position(0.0f, 5.0f, 0.0f);

	// 生成時に設定された触れた時に反応するオブジェクトタグと
	// コライダーのレイヤーを個別に設定
	mpColliderSphere->SetCollisionTag(mReactionTag, true);
	mpColliderSphere->SetCollisionLayer(mReactionLayer, true);

	Position(pos);
	Scale(scale);

	mStartPos = Position();

	mpHeart = nullptr;
	mpStar = nullptr;
}

// デストラクタ
CHatenaBlock::~CHatenaBlock()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderSphere);
}

// 衝突処理
void CHatenaBlock::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	// 衝突しているのが反応するオブジェクトであれば
	if (owner->Tag() == mReactionTag && other->Layer() == mReactionLayer)
	{
		CPlayer* player = dynamic_cast<CPlayer*>(owner);
		//// 反転した押し戻しベクトルと上方向のベクトルの内積(角度)を求める
		//float dot = CVector::Dot(-hit.adjust.Normalized(), CVector::down);
		//// 下側に当たったと判断するためのcos関数に渡した角度を求める
		//float cosAngle = cosf(Math::DegreeToRadian(10.0f)); && dot >= cosAngle

		// メッシュにするのならば上記の処理を実行
		// 下側に当たった時のみ処理

		// プレイヤーに当たったら
		if (player)
		{
			// 現在が待機状態であれば、当たった時の処理にする
			if (mState == EState::Idle)
			{
				// 状態遷移
				ChangeState(EState::Hit);
			}
		}
	}
}

// ステージ開始時の位置を設定
void CHatenaBlock::SetStartPosition(const CVector& pos)
{
	mStartPos = pos;
	Position(mStartPos);
}


// 状態を切り替える
void CHatenaBlock::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// 待機状態の処理
void CHatenaBlock::UpdateIdle()
{
	
}

// 当たった時の更新処理
void CHatenaBlock::UpdateHit()
{
	mpHitBlockSE->Play(1.0f, false, 0.0f);

	bool item = false;
	// ステップごとに処理を切り替え
	switch (mStateStep)
	{
		// ステップ0 オブジェクトを上に揺らす
	case 0:
		// 揺らす
		// 最大値まで
		if (Position().Y() < mStartPos.Y() + MAXHEIGHT)
		{
			// アイテムを出現
			// ランダムに
			int randomValue = Math::Rand(0, 5);

			item = false;

			bool obj = !mpHeart && !mpStar;

			// 0 かつ 何も出現していない かつ falseだった場合
			if ((randomValue >= 0 && randomValue <= 5 && obj && !item))
			{
				item = true;
				mpHeart = new CRecoveryObject();
				mpHeart->Scale(3.0f, 3.0f, 3.0f);
				CVector newPosition = Position() + CVector(0.0f, 45.0f, 0.0f);
				mpHeart->Position(newPosition);
				CStageManager::AddTask(mpHeart);
			}
			//// 1 かつ 何も出現していない かつ falseだった場合
			//else if ((randomValue >= 6 && randomValue <= 10 && obj && !item))
			//{
			//	item = true;
			//	mpStar = new CInvincible();
			//	mpStar->Scale(3.0f, 3.0f, 3.0f);
			//	CVector newPosition = Position() + CVector(0.0f, 45.0f, 0.0f);
			//	mpStar->Position(newPosition);
			//}

			// 上昇させる
			CVector mSpd = mMoveSpeed;
			mSpd = CVector(0.0f, BLOCK_INCREASE_VALUE * Time::DeltaTime(), 0.0f);
			Position(Position() + mSpd);
		}
		else
		{
			// 次のステップへ
			mStateStep++;
		}
		break;
		// ステップ1 元に戻す
	case 1:
		// 下降させる
		mMoveSpeed = CVector(0.0f, -BLOCK_DESCENDING_VALUE * Time::DeltaTime(), 0.0f);
		Position(Position() + mMoveSpeed);

		// オブジェクトの位置が0.5未満になったら
		// 元の位置に戻す
		if (CVector::Distance(Position(), mStartPos) < 1.0f)
		{
			Position(mStartPos);
			// 当たった後の状態に遷移
			ChangeState(EState::After);
			mStateStep = 0;
		}
		break;
	}
}

// 当たった後の更新処理
void CHatenaBlock::UpdateAfter()
{
	// ハテナブロック(当たった後)モデルに変更
	mpModel = CResourceManager::Get<CModel>("HatenaBlockAfter");
}

// 更新処理
void CHatenaBlock::Update()
{
	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::Idle:
		UpdateIdle();
		break;
		// 当たった状態
	case EState::Hit:
		UpdateHit();
		break;
		// 当たった後の状態
	case EState::After:
		UpdateAfter();
		break;
	}
}

// 描画
void CHatenaBlock::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());	
}