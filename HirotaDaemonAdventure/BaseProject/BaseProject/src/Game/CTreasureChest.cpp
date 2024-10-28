#include "CTreasureChest.h"
#include "CCollisionManager.h"
#include "CPlayer.h"
#include "CInput.h"
#include "Maths.h"
#include "CModel.h"
#include "CStageManager.h"
#include "COperationUI.h"

#define WAIT_TIME 5.0f
#define FOV_ANGLE 100.0f
#define ROTATE_TIME 0.5f

CTreasureChest::CTreasureChest(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
{
	// 宝箱モデル
	mpChest =  CResourceManager::Get<CModel>("TreasureChest");
	// 宝箱モデルのコライダー
	CModel* col = CResourceManager::Get<CModel>("TreasureChestWallCol");
	mpChestCol = new CColliderMesh(this, ELayer::eFieldWall, col, true);
	// 衝突定用のコライダーと衝突判定を行う
	// タグ付け
	// レイヤー付け
	// コライダーの位置を調整
	mpChestCol->SetCollisionTags({ ETag::ePlayer});
	mpChestCol->SetCollisionLayers({ ELayer::ePlayer});

	Position(pos);
	Scale(scale);
	Rotation(rot);

	mpChestCol->SetEnable(true);

	// 初期位置を設定
	mStartPos = Position();
}

CTreasureChest::~CTreasureChest()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpChestCol);
}

void CTreasureChest::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
}

void CTreasureChest::Update()
{
}

void CTreasureChest::Render()
{
	mpChest->SetColor(mColor);
	mpChest->Render(Matrix());
}

CTreasureChestTwo::CTreasureChestTwo(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: mStateStep(0)
	, mState(EState::Idle)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
	, mDefaultRot(rot)
	, mWaitTime(0.0f)
	, mRotateEndAngle(0.0f)
	, mRotateStartAngle(0.0f)
	, mStartPos(CVector::zero)
{
	// Tキーの画像表示
	mpKey = new COperationUI("TUI");
	mpKey->SetShow(false);

	// 宝箱蓋モデル
	mpChestTwo =  CResourceManager::Get<CModel>("TreasureChestTwo");

	ChangeState(EState::Idle);

	Position(pos);
	Scale(scale);
	Rotation(mDefaultRot);

	mStartPos = Position();
}

CTreasureChestTwo::~CTreasureChestTwo()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);
}

void CTreasureChestTwo::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// 待機状態
void CTreasureChestTwo::UpdateIdle()
{
	CPlayer* player = CPlayer::Instance();
	// プレイヤーを見つけた状態
	// Rキーを押すとアイテムを入手して宝箱の蓋を開ける処理
	if (IsFoundPlayer())
	{
		if (CInput::PushKey('T'))
		{
			int Rondom = Math::Rand(1, 2);
			// 回復アイテム
			if (Rondom == 1)
			{
				player->AddItem(CPlayer::ItemType::HEALING);
			}
			// 無敵アイテム
			else if (Rondom == 2)
			{
				player->AddItem(CPlayer::ItemType::ATTACK_UP);
			}
			mWaitTime = 0.0f;
			mRotateStartAngle = 0.0f;
			mRotateEndAngle = 85.0f;
			ChangeState(EState::Two);
		}

		mpKey->SetShow(true);
	}
	else
	{
		mpKey->SetShow(false);
	}
}

// 宝箱の蓋を開く処理
void CTreasureChestTwo::UpdateTwo()
{
	if (mWaitTime < ROTATE_TIME)
	{
		// 回転開始時の角度から徐々に回転終了時の角度へ回転する
		float per = mWaitTime / ROTATE_TIME;
		float angleZ = Math::Lerp
		(
			mRotateStartAngle,
			mRotateEndAngle,
			per
		);
		Rotation(mDefaultRot * CQuaternion(CVector(0.0f, 0.0f, angleZ)));
		mWaitTime += Time::DeltaTime();
	}
	else
	{
		mWaitTime = 0.0f;
		Rotation(mDefaultRot * CQuaternion(CVector(0.0f, 0.0f, mRotateEndAngle)));
		ChangeState(EState::End);
	}
}

void CTreasureChestTwo::UpdateEnd()
{
	mpKey->SetShow(false);
}

// 更新
void CTreasureChestTwo::Update()
{
	switch (mState)
	{
	case EState::Idle:
		UpdateIdle();
		break;
	case EState::Two:
		UpdateTwo();
		break;
	case EState::End:
		UpdateEnd();
		break;
	}

	CVector object = Position();
	CVector chestPos = object + CVector(0.0f, 25.0f, 0.0f) + VectorX() * 3.0f;
	mpKey->SetWorldPos(chestPos);
	/*CDebugPrint::Print("chestPos: %f %f %f\n", chestPos.X(), chestPos.Y(), chestPos.Z());*/
}

// プレイヤー追跡
bool CTreasureChestTwo::IsFoundPlayer() const
{
	CVector playerPos = CPlayer::Instance()->Position();
	CVector object = Position();

	// プレイヤーとの距離を計算する
	float distance = (playerPos - object).Length();
	const float detectionRadius = 20.0f;

	// プレイヤーとの距離が検出半径以内であれば、プレイヤーを認識する
	if (distance <= detectionRadius)
	{
		return true;
	}

	return false;
}

// 描画
void CTreasureChestTwo::Render()
{
	mpChestTwo->SetColor(mColor);
	mpChestTwo->Render(Matrix());
}