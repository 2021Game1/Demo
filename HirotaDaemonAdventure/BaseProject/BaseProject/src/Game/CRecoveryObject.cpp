#include "CRecoveryObject.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CPlayer.h"
#include "Maths.h"
#include "CSound.h"
#include "CStageManager.h"

// 重力
#define GRAVITY 0.0625f
// 回復アイテムのスピード
#define ITEM_SPEED 20.0f
// 回復アイテムの時間切り替え処理
#define TIMERETURN 0.5f
// カウント処理
#define SWITCHCOUNTER 15

CRecoveryObject::CRecoveryObject()
	: mSwitchCounter(0)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mTargetDir(0.0f, 0.0f, 1.0f)
	, mMoveVector(0.0f, 0.0f, 0.0f)
	, mElapsedTime(0.0f)
	, mRecoveryUsed(false)
	, mIsGround(false)
{
	// 回復アイテムモデル取得
	mpRecoverModel = CResourceManager::Get<CModel>("Heart");

	// 回復したときのSE取得
	mpRecoberSE = CResourceManager::Get<CSound>("8bitKaifuku");

	// 回復判定用のコライダー作成
	mpRecoverCol = new CColliderSphere
	(
		this, ELayer::eRecoverCol,
		1.5f
	);
	// 衝突定用のコライダーと衝突判定を行う
	// タグ付け
	// レイヤー付け
	// コライダーの位置を調整
	mpRecoverCol->SetCollisionTags({ ETag::ePlayer, ETag::eRideableObject, ETag::eField });
	mpRecoverCol->SetCollisionLayers({ ELayer::ePlayer, ELayer::eBlockCol, ELayer::eField,ELayer::eFieldWall });
	mpRecoverCol->Position(0.0f, 1.0f, 0.0f);

	// 最初はコライダーをオンにしておく
	mpRecoverCol->SetEnable(true);

}

CRecoveryObject::~CRecoveryObject()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpRecoverCol);
}

// 衝突処理
void CRecoveryObject::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 衝突した自分のコライダーが攻撃判定用のコライダーであれば
	if (self == mpRecoverCol)
	{
		// プレイヤーを派生クラスのポインタに変換
		CPlayer* player = dynamic_cast<CPlayer*>(other->Owner());
		if (player)
		{
			// すでに回復済みのキャラでなければ
			if (!IsAttachHitObj(player) && !mRecoveryUsed)
			{
				//CPlayer* player = CPlayer::Instance();
				mpRecoberSE->Play(1.0f, false, 0.0f);
				mRecoveryUsed = true;
				// 回復させる
				//player->TakeRecovery(1);

				// 回復済みリストに追加
				AddAttachHitObj(player);

				if (mRecoveryUsed)
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

// 回復スタート
void CRecoveryObject::RecoverStart()
{
	CItemObjectBase::RecoverStart();
	// 回復が始まったら、回復コライダーをオンにする
	mpRecoverCol->SetEnable(true);
}

// 回復終了
void CRecoveryObject::RecoverEnd()
{
	CItemObjectBase::RecoverEnd();
	// 回復が終われば、回復コライダーをオフにするん
	mpRecoverCol->SetEnable(false);
}

// 移動処理
void CRecoveryObject::MoveFront()
{
	// 速度を設定
	float moveSpeed = ITEM_SPEED;

	// mTargetDir に速度を掛けて移動ベクトルを得る
	mMoveVector = mTargetDir * moveSpeed;

	// deltaTime を考慮して移動量を計算
	mMoveVector *= Time::DeltaTime();
}

void CRecoveryObject::MoveBack()
{
	// 速度を設定
	float moveSpeed = ITEM_SPEED;

	// mMoveVector に速度を掛けて移動ベクトルを得る
	mMoveVector = mTargetDir * -moveSpeed;

	// deltaTime を考慮して移動量を計算
	mMoveVector *= Time::DeltaTime();
}

void CRecoveryObject::MoveRight()
{
	// 速度を設定
	float moveSpeed = ITEM_SPEED;

	// mTargetDir を横方向に変更（左右に動く）
	CVector moveDirection(mTargetDir.Z(), 0.0f, mTargetDir.X());
	moveDirection.Normalize();

	// mTargetDir に速度を掛けて移動ベクトルを得る
	mMoveVector = moveDirection * moveSpeed;

	// deltaTime を考慮して移動量を計算
	mMoveVector *= Time::DeltaTime();
}

void CRecoveryObject::MoveLeft()
{
	// 速度を設定
	float moveSpeed = ITEM_SPEED;

	// mTargetDir を横方向に変更（左右に動く）
	CVector moveDirection(-mTargetDir.Z(), 0.0f, mTargetDir.X());
	moveDirection.Normalize();

	// mTargetDir に速度を掛けて移動ベクトルを得る
	mMoveVector = moveDirection * moveSpeed;

	// deltaTime を考慮して移動量を計算
	mMoveVector *= Time::DeltaTime();
}

// 更新処理
void CRecoveryObject::Update()
{
	// 重力
	mMoveSpeed -= CVector(0.0f, GRAVITY, 0.0f);

	// 回転
	const float rot = 1.0f;
	Rotate(0.0f, rot, 0.0f);


	// タイム加算
	mElapsedTime += Time::DeltaTime();

	// タイムが2秒以下だったら
	if (mElapsedTime >= TIMERETURN)
	{
		// カウントを増加
		mSwitchCounter++;
		// カウントが15回になるとKill処理を実行
		if (mSwitchCounter == SWITCHCOUNTER)
		{
			Kill();
		}
		// ランダムに移動させる処理
		int random = Math::Rand(0, 3);
		switch (random)
		{
		case 0:
			// 手前に移動
			MoveFront();
			break;
		case 1:
			// 奥に移動
			MoveBack();
			break;
		case 2:
			// 右に移動
			MoveRight();
			break;
		case 3:
			// 左に移動
			MoveLeft();
			break;
		default:
			break;
		}

		// 処理が一つ終わるとタイムを初期化
		mElapsedTime = 0.0f;
	}

	// 移動
	Position(Position() + mMoveVector + mMoveSpeed * 60.0f * Time::DeltaTime());

	// 計測時間監視
	//CDebugPrint::Print("TIme:%f\n", mElapsedTime);
}


// 描画
void CRecoveryObject::Render()
{
	mpRecoverModel->Render(Matrix());
}