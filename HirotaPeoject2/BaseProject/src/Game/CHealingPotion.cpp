#include "CHealingPotion.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CPlayer.h"
#include "Maths.h"
#include "CSound.h"
#include "CStageManager.h"

// 重力
#define GRAVITY 0.0625f

CHealingPotion::CHealingPotion()
	: mHealingUsed(false)
	, mIsGround(false)
	, mIsHeld(false)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
{
	// 回復薬アイテムモデル取得
	mpHealingPotion = CResourceManager::Get<CModel>("Healing");

	// 回復したときのSE取得
	mpHealingSE = CResourceManager::Get<CSound>("8bitKaifuku");

	// 回復判定用のコライダー作成
	mpHealingCol = new CColliderSphere
	(
		this, ELayer::eRecoverCol,
		1.5f
	);
	// 衝突定用のコライダーと衝突判定を行う
	// タグ付け
	// レイヤー付け
	// コライダーの位置を調整
	mpHealingCol->SetCollisionTags({ ETag::ePlayer, ETag::eRideableObject, ETag::eField });
	mpHealingCol->SetCollisionLayers({ ELayer::ePlayer, ELayer::eBlockCol, ELayer::eField,ELayer::eFieldWall });
	mpHealingCol->Position(0.0f, 1.0f, 0.0f);

	// 最初はコライダーをオンにしておく
	mpHealingCol->SetEnable(true);
}

CHealingPotion::~CHealingPotion()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpHealingCol);
}


// 衝突処理
void CHealingPotion::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 衝突した自分のコライダーが攻撃判定用のコライダーであれば
	if (self == mpHealingCol)
	{
		// プレイヤーを派生クラスのポインタに変換
		CPlayer* player = dynamic_cast<CPlayer*>(other->Owner());
		if (player)
		{
			// すでに回復済みのキャラでなければ
			if (!IsAttachHitHealingObj(player) && !mHealingUsed)
			{
				//mpHealingSE->Play(1.0f, false, 0.0f);
				mHealingUsed = true;

				// 回復済みリストに追加
				AddAttachHitHealingObj(player);

				if (mHealingUsed)
				{
					Kill();
				}
			}
		}
		// フィールド関連の当たり判定
		else if (other->Layer() == ELayer::eField)
		{
			// 床についている
			mIsGround = true;
			mMoveSpeed.Y(0.0f);
			Position(Position() + hit.adjust * hit.weight);
		}
		// ブロック関連の当たり判定
		else if (other->Layer() == ELayer::eBlockCol)
		{
			// 床についている
			mIsGround = true;
			mMoveSpeed.Y(0.0f);
			Position(Position() + hit.adjust);
		}
		// 壁コライダー関連の当たり判定
		else if (other->Layer() == ELayer::eFieldWall)
		{
			Position(Position() + hit.adjust * hit.weight);
		}
	}
}
//
//void CHealingPotion::HealingStart()
//{
//	CItemObjectBase::HealingStart();
//	// 回復が始まったら、回復コライダーをオンにする
//	mpHealingCol->SetEnable(true);
//}
//
//// 回復終了
//void CHealingPotion::HealingEnd()
//{
//	CItemObjectBase::HealingEnd();
//	// 回復が終われば、回復コライダーをオフにするん
//	mpHealingCol->SetEnable(false);
//}

void CHealingPotion::OnTouch(CPlayer* player)
{
	if (mIsHeld)
	{
		player->AddItem(CPlayer::ItemType::HEALING);
		mIsHeld = true;
	}
}

// 更新処理
void CHealingPotion::Update()
{
	// 重力
	mMoveSpeed -= CVector(0.0f, GRAVITY, 0.0f);

	// 回転
	const float rot = 1.0f;
	Rotate(0.0f, rot, 0.0f);

	// 移動
	Position(Position() + mMoveSpeed * 60.0f * Time::DeltaTime());
}

// 描画
void CHealingPotion::Render()
{
	mpHealingPotion->SetColor(mColor);
	mpHealingPotion->Render(Matrix());
}