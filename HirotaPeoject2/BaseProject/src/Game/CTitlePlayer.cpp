#include "CTitlePlayer.h"
#include "CColliderLine.h"
#include "CCamera.h"
#include "CGameManager.h"
#include "CStageManager.h"

// 重力
#define GRAVITY 0.0625f
// プレイヤーの高さ
#define PLAYER_HEIGHT 16.0f

// タイトルプレイヤーのインスタンス
CTitlePlayer* CTitlePlayer::spInstance = nullptr;

CTitlePlayer* CTitlePlayer::Instance()
{
	return spInstance;
}

// プレイヤーのアニメーションデータのテーブル
const CTitlePlayer::AnimData CTitlePlayer::ANIM_DATA[] =
{
	{ "",															true,	0.0f	},	// Tポーズ
	{ "Character\\Monster1\\anim\\Warrok_Idle.x",					true,	854.0f	},	// 待機
};

// コンストラクタ
CTitlePlayer::CTitlePlayer()
	: CXCharacter(ETag::ePlayer, ETaskPriority::ePlayer, 0,
		ETaskPauseType::ePlayer)
	, mState(EState::eReady)
	, mStateStep(0)
	, mMoveSpeedY(0.0f)
	, mGroundNormal(CVector::zero)
	, mIsGrounded(false)
{
	// インスタンスの設定
	spInstance = this;

	Position(0.0f, 0.0f, 0.0f);

	// モデルデータ取得
	CModelX* model = CResourceManager::Get<CModelX>("Player");

	// テーブル内のアニメーションデータを読み込み
	int size = ARRAY_SIZE(ANIM_DATA);
	for (int i = 0; i < size; i++)
	{
		const AnimData& data = ANIM_DATA[i];
		if (data.path.empty()) continue;
		model->AddAnimationSet(data.path.c_str());
	}
	// CXCharacterの初期化
	Init(model);

	// 最初は待機アニメーションを再生
	ChangeAnimation(EAnimType::eIdle);

	// フィールドとの当たり判定を取るコライダー
	mpColliderLine = new CColliderLine
	(
		this, ELayer::ePlayer,
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, PLAYER_HEIGHT, 0.0f)
	);
	mpColliderLine->SetCollisionLayers({ ELayer::eField});
}

CTitlePlayer::~CTitlePlayer()
{
	CStageManager::RemoveTask(this);
	spInstance = nullptr;

	SAFE_DELETE(mpColliderLine);
}

// 衝突処理
void CTitlePlayer::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 乗れるコライダー
	if (self == mpColliderLine)
	{
		if (other->Layer() == ELayer::eField)
		{
			CVector adjust = hit.adjust;
			mMoveSpeedY = 0.0f;
			adjust.X(0.0f);
			adjust.Z(0.0f);
			Position(Position() + adjust * hit.weight);

			// 接地した
			mIsGrounded = true;
			// 接地した地面の法線を記憶しておく
			mGroundNormal = hit.adjust.Normalized();

			if (other->Tag() == ETag::eRideableObject)
			{
				mpRideObject = other->Owner();
			}
		}
	}
}

// 現在の状態を切り替え
void CTitlePlayer::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
	// アニメーションの再生速度をもとに戻す
	SetAnimationSpeed(1.0f);
}

// アニメーション切り替え
void CTitlePlayer::ChangeAnimation(EAnimType type)
{
	if (!(EAnimType::None < type && type < EAnimType::Num)) return;
	AnimData data = ANIM_DATA[(int)type];
	CXCharacter::ChangeAnimation((int)type, data.loop, data.frameLength);
}

// 準備中の状態
void CTitlePlayer::UpdateReady()
{
	// ステップごとに処理を切り替える
	switch (mStateStep)
	{
		// ステップ0 初期化処理
	case 0:
		ChangeAnimation(EAnimType::eIdle);
		// 全ての衝突判定をオフにする
		SetEnableCol(false);
		// プレイヤーの移動速度を0にする
		mMoveSpeedY = 0.0f;
		// 次のステップへ
		mStateStep++;
		break;
	}
}

// 待機
void CTitlePlayer::UpdateIdle()
{
	if (mIsGrounded)
	{
		mStateStep = 0;
		ChangeAnimation(EAnimType::eIdle);
	}
	// プレイヤーが接地していない
	else
	{
		// 空中に飛び出したときに待機モーションへ切り替えるのを
		// 数フレーム待つ
		if (mStateStep <= 5)
		{
			mStateStep++;
		}
		else
		{
			// 待機アニメーションに切り替え
			ChangeAnimation(EAnimType::eIdle);
		}
	}
}

// 更新
void CTitlePlayer::Update()
{
	SetColor(CColor(1.0, 1.0, 1.0, 1.0));
	mpRideObject = nullptr;
	
	// 状態に合わせて、更新処理を切り替える
	switch (mState)
	{
		// 準備中の状態
	case EState::eReady:
		UpdateReady();
		break;
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
	}

	// 準備中でなければ、移動処理などを行う
	if (mState != EState::eReady)
	{
		mMoveSpeedY -= GRAVITY;

		CVector moveSpeed = CVector(0.0f, mMoveSpeedY, 0.0f * Time::DeltaTime());

		// 移動
		Position(Position() + moveSpeed * 60.0f * Time::DeltaTime());
	}

	// キャラクターの更新
	CXCharacter::Update();
	mIsGrounded = false;
}

// 描画
void CTitlePlayer::Render()
{
	// キャラ描画
	CXCharacter::Render();
}