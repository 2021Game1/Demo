#include "CMeat3.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CPlayer.h"
#include "Maths.h"
#include "Easing.h"
#include "CStageManager.h"
#include "CGameManager.h"
#include "CPlayer.h"

// アイテムの移動時間
#define GET_MOVE_TIME 1.75f
#define GET_MOVE_UP 10.0f

// 肉クラスのインスタンス
CMeat3* CMeat3::spInstance = nullptr;

int CMeat3::sScore = 0;

CMeat3* CMeat3::Instance()
{
	return spInstance;
}

// デストラクタ
CMeat3::CMeat3(const CVector& pos, const CVector& rot, const CVector& scale)
	: mState(EState::eIdle)
	, mStateStep(0)
	, mElapsedTime(0.0f)
	, mGetCameraDist(0.0f)
	, mStartPos(CVector::zero)
	, mGetStartPos(CVector::zero)
	, mGetTargetPos(CVector::zero)
	, mMeat3(false)
	, mIsGround(false)
{
	// インスタンスの設定
	spInstance = this;
	// スコア
	sScore;

	// 肉アイテムのモデル取得
	mpMeat = CResourceManager::Get<CModel>("Meat");

	// 肉アイテムのコライダー作成
	mpMeatSphere = new CColliderSphere
	(
		this, ELayer::eMeatCol,
		1.5f
	);
	// 衝突定用のコライダーと衝突判定を行う
	// タグ付け
	// レイヤー付け
	// コライダーの位置を調整
	mpMeatSphere->SetCollisionTags({ ETag::ePlayer, ETag::eRideableObject, ETag::eField, });
	mpMeatSphere->SetCollisionLayers({ ELayer::ePlayer, ELayer::eBlockCol, ELayer::eField,ELayer::eFieldWall });

	// 最初はコライダーをオンにしておく
	mpMeatSphere->SetEnable(true);

	Position(pos);
	Rotate(rot);
	Scale(scale);

	mStartPos = Position();
}

// デストラクタ
CMeat3::~CMeat3()
{
	//spInstance = nullptr;
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpMeatSphere);
}

// 状態変処理
void CMeat3::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
	mElapsedTime = 0.0f;
}

// 衝突処理
void CMeat3::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// コライダーに当たったら
	if (self == mpMeatSphere)
	{
		// プレイヤー情報
		CPlayer* player = dynamic_cast<CPlayer*>(other->Owner());
		if (player)
		{
			// 取得状態に変更
			ChangeState(EState::eGet);
		}
	}
	else if (other->Layer() == ELayer::eField)
	{
		mIsGround = true;
		Position(Position() + hit.adjust);
	}
}

// 肉が消えたかどうかの確認
bool CMeat3::IsMeat3() const
{
	return mMeat3;
}

// スコアを設定
void CMeat3::SetScore(int score)
{
	sScore = score;
}

// スコアを取得
int CMeat3::GetScore()
{
	return sScore;
}

// 待機状態
void CMeat3::UpdateIdle()
{
	float rot = 1.0f;
	Rotate(0.0f, rot, 0.0f);

	mIsGround = false;
}

// 取得状態
void CMeat3::UpdateGet()
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
		int meatNumber = GetMeatNumber();
		// 三つ目
		if (meatNumber == 3)
		{
			mGetTargetPos = cam->ScreenToWorldPos
			(
				CVector
				(
					WINDOW_WIDTH * 0.25f,
					WINDOW_HEIGHT * 0.1f,
					mGetCameraDist
				)
			);
		}

		// アイテム取得時の3D空間での座標をスクリーン座標から求める
		mGetStartPos.Z(mGetCameraDist);
		CVector startPos = cam->ScreenToWorldPos(mGetStartPos);

		// 移動時間を経過していない
		if (mElapsedTime < GET_MOVE_TIME)
		{
			float per = mElapsedTime / GET_MOVE_TIME;
			float per2 = Easing::QuintIn(mElapsedTime, GET_MOVE_TIME, 0.0f, 1.0f);
			CVector pos = CVector::Lerp(startPos, mGetTargetPos, per2);
			pos += CVector::up * sinf(M_PI * per) * GET_MOVE_UP;
			Position(pos);
			mElapsedTime += Time::DeltaTime();
		}
		// 移動時間を経過した
		else
		{
			if (!mMeat3)
			{
				sScore += 1000;
			}
			mMeat3 = true;
			// アイテムボックスの位置まで移動したら、削除
			Position(mGetTargetPos);
			SetShow(false);
			SetEnableCol(false);
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

// 更新処理
void CMeat3::Update()
{
	switch (mState)
	{
	case EState::eIdle:
		UpdateIdle();
		break;
	case EState::eGet:
		UpdateGet();
		break;
	}
}

// 描画処理
void CMeat3::Render()
{
	// 取得時の移動処理中のみ、デプステストをオフにして。
	// 床のオブジェクトより手前に表示
	if (mState == EState::eGet)
	{
		glDisable(GL_DEPTH_TEST);
	}
	mpMeat->SetColor(mColor);
	mpMeat->Render(Matrix());

	glEnable(GL_DEPTH_TEST);
}