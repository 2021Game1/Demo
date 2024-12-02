#include "CUnityChan.h"
#include "CCamera.h"

// プレイヤーのインスタンス
CUnityChan* CUnityChan::spInstance = nullptr;

//// プレイヤーのモデルデータのパス
//#define MODEL_PATH "Character\\UnityChan\\unitychan.x"

// プレイヤーのアニメーションデータのテーブル
const CUnityChan::AnimData CUnityChan::ANIM_DATA[] =
{
	//{ "",										true,	0.0f	},	// Tポーズ
	{ "Character\\UnityChan\\anim1\\UnityChan_Animation_Pose1.x",		true,	25.0f	},	// ポーズ
};

#define PLAYER_HEIGHT 16.0f
#define MOVE_SPEED 1.0f
#define JUMP_SPEED 1.5f
#define GRAVITY 0.0625f
#define JUMP_END_Y 1.0f

// コンストラクタ
CUnityChan::CUnityChan()
	: CXCharacter(ETag::ePlayer, ETaskPriority::ePlayer)
	, mState(EState::eIdle)
	, mpRideObject(nullptr)
{
	//インスタンスの設定
	spInstance = this;

	// モデルデータ取得
	CModelX* model = CResourceManager::Get<CModelX>("UnityChan");

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

	mpColliderLine = new CColliderLine
	(
		this, ELayer::eField,
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, PLAYER_HEIGHT, 0.0f)
	);
	mpColliderLine->SetCollisionLayers({ ELayer::eField });
}

CUnityChan::~CUnityChan()
{
	if (mpColliderLine != nullptr)
	{
		delete mpColliderLine;
		mpColliderLine = nullptr;
	}
}

CUnityChan* CUnityChan::Instance()
{
	return spInstance;
}

// アニメーション切り替え
void CUnityChan::ChangeAnimation(EAnimType type)
{
	if (!(EAnimType::None < type && type < EAnimType::Num)) return;
	AnimData data = ANIM_DATA[(int)type];
	CXCharacter::ChangeAnimation((int)type, data.loop, data.frameLength);
}

// 待機
void CUnityChan::UpdateIdle()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	//if (mIsGrounded)
	//{
	//	// 移動処理
	//	// キーの入力ベクトルを取得
	//	CVector input;
	//	if (CInput::Key('W'))		input.Z(1.0f);
	//	else if (CInput::Key('S'))	input.Z(-1.0f);
	//	if (CInput::Key('A'))		input.X(-1.0f);
	//	else if (CInput::Key('D'))	input.X(1.0f);

	//	// 入力ベクトルの長さで入力されているか判定
	//	if (input.LengthSqr() > 0.0f)
	//	{
	//		// カメラの向きに合わせた移動ベクトルに変換
	//		CVector move = CCamera::MainCamera()->Rotation() * input;
	//		move.Y(0.0f);
	//		move.Normalize();

	//		mMoveSpeed += move * MOVE_SPEED;

	//		// 歩行アニメーションに切り替え
	//		ChangeAnimation(EAnimType::eWalk);
	//	}
	//	// 移動キーを入力していない
	//	else
	//	{
	//		// 待機アニメーションに切り替え
	//		ChangeAnimation(EAnimType::eIdle);
	//	}

	//	// 左クリックで攻撃状態へ移行
	//	if (CInput::PushKey(VK_LBUTTON))
	//	{
	//		mMoveSpeed.X(0.0f);
	//		mMoveSpeed.Z(0.0f);
	//		mState = EState::eAttack;
	//	}
	//	// SPACEキーでジャンプ開始へ移行
	//	else if (CInput::PushKey(VK_SPACE))
	//	{
	//		mState = EState::eJumpStart;
	//	}
	//}
	//else
	{
		// 待機アニメーションに切り替え
		ChangeAnimation(EAnimType::eIdle);
	}
}

// 攻撃
void CUnityChan::UpdateAttack()
{
	// 攻撃アニメーションを開始
	ChangeAnimation(EAnimType::eAttack);
	// 攻撃終了待ち状態へ移行
	mState = EState::eAttackWait;
}

// 攻撃終了待ち
void CUnityChan::UpdateAttackWait()
{
	// 攻撃アニメーションが終了したら、
	if (IsAnimationFinished())
	{
		// 待機状態へ移行
		mState = EState::eIdle;
		ChangeAnimation(EAnimType::eIdle);
	}
}

// ジャンプ開始
void CUnityChan::UpdateJumpStart()
{
	ChangeAnimation(EAnimType::eJumpStart);
	mState = EState::eJump;

	mMoveSpeed += CVector(0.0f, JUMP_SPEED, 0.0f);
	mIsGrounded = false;
}

// ジャンプ中
void CUnityChan::UpdateJump()
{
	if (mMoveSpeed.Y() <= 0.0f)
	{
		ChangeAnimation(EAnimType::eJumpEnd);
		mState = EState::eJumpEnd;
	}
}

// ジャンプ終了
void CUnityChan::UpdateJumpEnd()
{
	if (IsAnimationFinished())
	{
		mState = EState::eIdle;
	}
}

// 更新
void CUnityChan::Update()
{
	SetParent(mpRideObject);
	mpRideObject = nullptr;

	// 状態に合わせて、更新処理を切り替える
	switch (mState)
	{
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// 攻撃
	case EState::eAttack:
		UpdateAttack();
		break;
		// 攻撃終了待ち
	case EState::eAttackWait:
		UpdateAttackWait();
		break;
		// ジャンプ開始
	case EState::eJumpStart:
		UpdateJumpStart();
		break;
		// ジャンプ中
	case EState::eJump:
		UpdateJump();
		break;
		// ジャンプ終了
	case EState::eJumpEnd:
		UpdateJumpEnd();
		break;
	}

	mMoveSpeed -= CVector(0.0f, GRAVITY, 0.0f);

	// 移動
	Position(Position() + mMoveSpeed);

	// プレイヤーを移動方向へ向ける
	CVector current = VectorZ();
	CVector target = mMoveSpeed;
	target.Y(0.0f);
	target.Normalize();
	CVector forward = CVector::Slerp(current, target, 0.125f);
	Rotation(CQuaternion::LookRotation(forward));

	// キャラクターの更新
	CXCharacter::Update();

	mIsGrounded = false;
}

// 衝突処理
void CUnityChan::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	if (self == mpColliderLine)
	{
		if (other->Layer() == ELayer::eField)
		{
			mMoveSpeed.Y(0.0f);
			Position(Position() + hit.adjust);
			mIsGrounded = true;

			if (other->Tag() == ETag::eRideableObject)
			{
				mpRideObject = other->Owner();
			}
		}
	}
}

// 描画
void CUnityChan::Render()
{
	CXCharacter::Render();
}