#include "CInvincible.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CPlayer.h"
#include "Maths.h"
#include "CSound.h"
#include "Easing.h"

// 重力
#define GRAVITY 0.0625f
// 無敵アイテムのスピード
#define INVINCIBLE_SPEED 25.0f
// 無敵アイテムの時間切り替え処理
#define TIMERETURN 2.0f
// 無敵アイテムの跳ねる速度
#define BOUNCE_FORCE 1.5f
// カウント処理
#define SWITCHCOUNTER 15

// アイテムの移動時間
#define GET_MOVE_TIME 0.75f
// アイテム取得時の上移動
#define GET_MOVE_UP 50.0f

CInvincible::CInvincible()
	: mSwitchCounter(0)
	, mState(EState::Idle)
	, mStateStep(0)
	, mElapsedTime(0.0f)
	, mGetCameraDist(0.0f)
	, mStartPos(CVector::zero)
	, mMoveSpeed(CVector::zero)
	, mMoveVector(CVector::zero)
	, mGetStartPos(CVector::zero)
	, mGetTargetPos(CVector::zero)
	, mTotalMovement(CVector::zero)
	, mTargetDir(CVector::forward)
	, mIsHeld(false)
	, mIsGround(false)
	, mInvincibleUsed(false)
{
	// 無敵アイテムモデル取得
	mpInvincibleModel = CResourceManager::Get<CModel>("Star");

	// 無敵アイテムを取った時SE取得
	mpInvincibleSE = CResourceManager::Get<CSound>("8bitMutekiTime");

	// 無敵アイテムコライダー作成
	mpInvincibleCol = new CColliderSphere
	(
		this, ELayer::eInvincbleCol,
		1.5f
	);
	// 衝突定用のコライダーと衝突判定を行う
	// タグ付け
	// レイヤー付け
	// コライダーの位置を調整
	mpInvincibleCol->SetCollisionTags({ ETag::ePlayer, ETag::eRideableObject, ETag::eField,});
	mpInvincibleCol->SetCollisionLayers({ ELayer::ePlayer, ELayer::eBlockCol, ELayer::eField,ELayer::eFieldWall });

	// 無敵アイテムコライダー作成
	mpFieldCol = new CColliderSphere
	(
		this, ELayer::eInvincbleCol,
		1.5f
	);
	mpFieldCol->SetCollisionTags({ ETag::eRideableObject, ETag::eField, });
	mpFieldCol->SetCollisionLayers({ ELayer::eField,ELayer::eFieldWall });

	// 最初はコライダーをオンにしておく
	mpInvincibleCol->SetEnable(true);
	mpFieldCol->SetEnable(true);

	mStartPos = Position();
}

CInvincible::~CInvincible()
{
	SAFE_DELETE(mpInvincibleCol);
	SAFE_DELETE(mpFieldCol);
}

void CInvincible::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// 衝突処理
void CInvincible::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 衝突した自分のコライダーが攻撃判定用のコライダーであれば
	if (self == mpInvincibleCol)
	{
		CPlayer* player = dynamic_cast<CPlayer*>(other->Owner());
		if (player)
		{
			// すでに無敵のキャラでなければ
			if (!IsAttachHitObjInvincible(player) && !mInvincibleUsed)
			{
				mMoveVector = CVector::zero;
				mMoveSpeed = CVector::zero;
				mInvincibleUsed = true;
				mpInvincibleCol->SetEnable(false);
				AddAttachHitObjInvincible(player);
				ChangeState(EState::Get);
			}
		}
		else if (other->Layer() == ELayer::eBlockCol)
		{
			mIsGround = true;
			mMoveSpeed.Y(0.0f);
			Position(Position() + hit.adjust);
		}
		else if (other->Layer() == ELayer::eFieldWall)
		{
			Position(Position() + hit.adjust);
		}
	}

	if (self == mpFieldCol)
	{
		if (other->Layer() == ELayer::eField)
		{
			mIsGround = true;
			mMoveSpeed.Y(0.0f);
			Position(Position() + hit.adjust);
		}
	}
}

// 移動処理
// 前に移動する
void CInvincible::MoveFront()
{
	// 速度を設定
	float moveSpeed = INVINCIBLE_SPEED;

	CVector moveDirection = (CVector::forward).Normalized();

	// mTargetDir に速度を掛けて移動ベクトルを得る
	mMoveVector = moveDirection * moveSpeed;

	// deltaTime を考慮して移動量を計算
	mMoveVector *= Time::DeltaTime();
}

// 後ろに移動する
void CInvincible::MoveBack()
{
	// 速度を設定
	float moveSpeed = INVINCIBLE_SPEED;

	CVector moveDirection = (CVector::back).Normalized();

	// mTargetDir に速度を掛けて移動ベクトルを得る
	mMoveVector = moveDirection * moveSpeed;

	// deltaTime を考慮して移動量を計算
	mMoveVector *= Time::DeltaTime();
}

// 右に移動する
void CInvincible::MoveRight()
{
	// 速度を設定
	float moveSpeed = INVINCIBLE_SPEED;

	CVector moveDirection = (CVector::right).Normalized();

	// mTargetDir に速度を掛けて移動ベクトルを得る
	mMoveVector = moveDirection * moveSpeed;

	// deltaTime を考慮して移動量を計算
	mMoveVector *= Time::DeltaTime();
}

// 左に移動する
void CInvincible::MoveLeft()
{
	// 速度を設定
	float moveSpeed = INVINCIBLE_SPEED;

	CVector moveDirection = (CVector::left).Normalized();

	// mTargetDir に速度を掛けて移動ベクトルを得る
	mMoveVector = moveDirection * moveSpeed;

	// deltaTime を考慮して移動量を計算
	mMoveVector *= Time::DeltaTime();
}

void CInvincible::UpdateIdle()
{
	// 新しいポジションからX軸に50.0f移動したかどうか
	//CDebugPrint::Print("mTotalMovement:%f\n", mTotalMovement.X());
	// 重力
	mMoveSpeed -= CVector(0.0f, GRAVITY, 0.0f);

	// タイム加算
	mElapsedTime += Time::DeltaTime();

	if (!mInvincibleUsed)
	{
		if (mIsGround)
		{
			mMoveSpeed += CVector(0.0f, BOUNCE_FORCE, 0.0f);
			mIsGround = false;
		}

		// 回転
		float rot = 1.0f;
		Rotate(0.0f, rot, 0.0f);

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
	}

	// 移動
	Position(Position() + mMoveVector + mMoveSpeed * 60.0f * Time::DeltaTime());

	// 確認
	//CDebugPrint::Print("TIme:%f\n", mElapsedTime);

	mIsGround = false;
}

// アイテムを取った後の処理
void CInvincible::UpdateGet()
{
	// 現在のカメラを取得
	CCamera* cam = CCamera::CurrentCamera();
	if (cam == nullptr) return;

	// ステップごとに処理を分ける
	switch (mStateStep)
	{
		// ステップ0 : アイテムを移動開始
	case 0:
		// カメラまでの距離を記録しておく
		mGetCameraDist = (Position() - cam->Position()).Length();
		// 移動開始時の座標を記憶しておく
		mGetStartPos = cam->WorldToScreenPos(Position());

		mElapsedTime = 0.0f;
		SetEnableCol(false);

		// 更新タイミングをカメラより後に変更
		SetPriority(ETaskPriority::eLeteCamera);

		mStateStep++;
		break;
		// ステップ1 : アイテムを目的地まで移動
	case 1:
		// UIのアイテムボックスの2D座標を
		// 3D空間の座標に変換
		mGetTargetPos = cam->ScreenToWorldPos
		(
			CVector
			(
				WINDOW_WIDTH * 0.71f,
				WINDOW_HEIGHT * 0.9f,
				mGetCameraDist
			)
		);

		// アイテム取得時の3D空間での座標をスクリーン座標から求める
		mGetStartPos.Z(mGetCameraDist);
		CVector startPos = cam->ScreenToWorldPos(mGetStartPos);

		// 移動時間を経過していない
		if (mElapsedTime < GET_MOVE_TIME)
		{
			float per = mElapsedTime / GET_MOVE_TIME;
			float per2 = Easing::SineIn(mElapsedTime, GET_MOVE_TIME, 0.0f, 1.0f);
			CVector pos = CVector::Lerp(startPos, mGetTargetPos, per2);
			pos += CVector::up * sinf(M_PI * per) * GET_MOVE_UP;
			Position(pos);
			mElapsedTime += Time::DeltaTime();
		}
		// 移動時間を経過した
		else
		{
			CPlayer* player = CPlayer::Instance();
			player->AddItem(CPlayer::ItemType::INVINCIBLE);
			// アイテムボックスの位置まで移動したら、削除
			Position(mGetTargetPos);
			Kill();
		}

		// カメラの方向へ向ける
		Rotation
		(
			CQuaternion::LookRotation
			(
				(cam->Position() - Position()).Normalized(),
				CVector::up
			)
		);
		break;
	}
}

// いらないかも
void CInvincible::OnTouch(CPlayer* player)
{
	if (mIsHeld)
	{
		player->AddItem(CPlayer::ItemType::INVINCIBLE);
		mIsHeld = true;
	}
}

// 更新処理
void CInvincible::Update()
{
	switch (mState)
	{
	case EState::Idle:
		UpdateIdle();
		break;
	case EState::Get:
		UpdateGet();
		break;
	}
}

// 描画
void CInvincible::Render()
{
	// 取得時の移動処理中のみ、デプステストをオフにして。
	// 床のオブジェクトより手前に表示
	if (mState == EState::Get)
	{
		glDisable(GL_DEPTH_TEST);
	}
	mpInvincibleModel->SetColor(mColor);
	mpInvincibleModel->Render(Matrix());
	
	glEnable(GL_DEPTH_TEST);
}