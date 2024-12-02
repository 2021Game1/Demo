#include "CYukari.h"
#include "CCamera.h"
#include "CBillBoard.h"
#include "CImage.h"
#include "CPlayer.h"
#include <algorithm>
#include "Maths.h"
#include <BaseSystem/CInput.h>
#include "CGun.h"
#include "CBullet.h"
#include "CYukariFrame.h"
#include "CYukariGauge.h"
#include "CStageManager.h"

#define _USE_MATH_DEFINES


// Yukariのインスタンス
CYukari* CYukari::spInstance = nullptr;


#define EFFECT	 "Effect\\exp.tga"

// Yukariのアニメーションデータのテーブル
const CYukari::AnimData CYukari::ANIM_DATA[] =
{
	//{ "",													true,	0.0f	},	// Tポーズ
	{ "Character\\Yukari\\anim\\Yukari_GunIdle463.x",		true,	463.0f	},	// Idle時
	{ "Character\\Yukari\\anim\\Yukari_GunWorlk79.x",		true,	79.0f	},	// 移動
	{ "Character\\Yukari\\anim\\Yukari_GunPlay13.x",		true,	13.0f	},	// プレイヤー発見時攻撃
	{ "Character\\Yukari\\anim\\Yukari1_Reload199.x",		true,	199.0f	},	// リロード
};

#define ENEMY_HEIGHT 8.0f
#define ENEMY_HEIGHT2 20.0f
#define MOVE_SPEED 0.5f
#define JUMP_SPEED 1.5f
#define GRAVITY 0.0625f
#define JUMP_END_Y 1.0f

//移動速度
#define FOV_ANGLE 90.0f		// 視野の角度(ー角度+角度も出)
#define ATTACK_RANGE 50.0f	// プレイヤーまでの距離

// HP関連
#define HP 5

// レベル関連
#define LEVEL 1

// 攻撃力関連
#define ATTACK 10

// 弾丸の発射間隔
#define ATTACK 10

// 弾丸の発射間隔
#define SHOT_INTERVAL 0.5f

// コンストラクタ
CYukari::CYukari()
	: CXCharacter(ETag::eEnemy, ETaskPriority::eEnemy)
	, mState(EState::eIdle)
	, mTargetDir(0.0f,0.0f,1.0f)
	, mpRideObject(nullptr)
	, mTimeShot(0)
	, mTimeShotEnd(10)
	, mElapsedTime(0.0f)
{
	mpFrame = new CYukariFrame();
	mpFrame->SetCenterRatio(CVector2(0.5f, 0.0f));
	mpGauge = new CYukariGauge();
	mpGauge->SetCenterRatio(CVector2(0.3f, 0.0f));

	//インスタンスの設定
	spInstance = this;

	// モデルデータ取得
	CModelX* model = CResourceManager::Get<CModelX>("Yukari");

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
		CVector(0.0f, ENEMY_HEIGHT, 0.0f)
	);
	mpColliderLine->SetCollisionLayers({ ELayer::eField });


	// ダメージを受けるコライダーを作成
	mpDamageCol = new CColliderSphere
	(
		this, ELayer::eDamageCol,
		0.5f //後で変更
	);
	// ダメージを受けるコライダーと
	// 衝突判定を行うコライダーのレイヤーとタグを設定
	mpDamageCol->SetCollisionLayers({ ELayer::eAttackCol, ELayer::eDamageCol,ELayer::eEnemy, ELayer::eFieldWall });
	mpDamageCol->SetCollisionTags({ ETag::eWeapon, ETag::eEnemy });
	// ダメージを受けるコライダーを少し上へずらす
	mpDamageCol->Position(0.0f, 0.0f, 0.0f);
	const CMatrix* spineMtx = GetFrameMtx("Armature_mixamorig_Spine1");
	mpDamageCol->SetAttachMtx(spineMtx);

	// 銃を作成して持たせる
	mpGun = new CGun();
	const CMatrix* gun = GetFrameMtx("Armature_mixamorig_RightHand");
	mpGun->AttachMtx(gun);


	// 最初に1レベルに設定
	ChangeLevel(1);

}

CYukari::~CYukari()
{
	if (mpColliderLine != nullptr)
	{
		delete mpColliderLine;
		mpColliderLine = nullptr;
	}

	// ダメージを受けるコライダーを削除
	if (mpDamageCol != nullptr)
	{
		delete mpDamageCol;
		mpDamageCol = nullptr;
	}
	mpGun->Kill();

	mpGauge->Kill();
	mpFrame->Kill();
}

CYukari* CYukari::Instance()
{
	return spInstance;
}

// レベルアップ
void CYukari::LevelUp()
{
	int level = mCharaStatus.level;
	ChangeLevel(level + 1);
}

// レベルを変更
void CYukari::ChangeLevel(int level)
{
	// ステータスのテーブルのインデックス地に変換
	int index = Math::Clamp(level - 1, 0, ENEMY_LEVEL_MAX);
	// 最大ステータスに設定
	mCharaMaxStatus = ENEMY_STATUS[index];
	// 現在のステータスを最大値にすることで、HP回復
	mCharaStatus = mCharaMaxStatus;

	// 最大HPと現在HPをHPゲージに反映
	mpGauge->SetMaxValue(mCharaMaxStatus.hp);
	mpGauge->SetValue(mCharaStatus.hp);

}

// アニメーション切り替え
void CYukari::ChangeAnimation(EAnimType type)
{
	if (!(EAnimType::None < type && type < EAnimType::Num)) return;
	AnimData data = ANIM_DATA[(int)type];
	CXCharacter::ChangeAnimation((int)type, data.loop, data.frameLength);
}

// 待機
void CYukari::UpdateIdle()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	ChangeAnimation(EAnimType::eIdle);
	//プレイヤーを見つけたら、追跡状態へ移行
	if (IsFoundPlayer())
	{
		mState = EState::eChase;
	}
	else
	{
		ChangeAnimation(EAnimType::eIdle);
	}
}

void CYukari::UpdateChase()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	if (!IsFoundPlayer())
	{
		ChangeAnimation(EAnimType::eIdle);
	}
	else
	{
		CPlayer* player = CPlayer::Instance();
		CVector playerPos = player->Position();
		playerPos.Y(Position().Y());
		
		CVector toPlayer = (playerPos - Position()).Normalized();
		mMoveSpeed += toPlayer * MOVE_SPEED;
		mTargetDir = toPlayer;

		// プレイヤーとの距離が一定範囲以内であれば攻撃モードに切り替える
		float distanceToPlayer = (player->Position() - Position()).Length();
		ChangeAnimation(EAnimType::eWalk);

		if (distanceToPlayer <= ATTACK_RANGE)
		{
			mState = EState::eAttack;
		}
	}
}


// 攻撃
void CYukari::UpdateAttack()
{
	// 攻撃するときは移動を停止
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	// プレイヤーのポインタが0以外の時
	CPlayer* player = CPlayer::Instance();

	// プレイヤーまでのベクトルを求める
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	if (distancePlayer <= ATTACK_RANGE)
	{
		ChangeAnimation(EAnimType::eAttack);
		// 弾丸発射間隔時間が経過するのを待つ
		if (mElapsedTime < SHOT_INTERVAL)
		{
			mElapsedTime += Time::DeltaTime();
		}
		// 弾丸発射間隔が経過した
		else
		{
			mElapsedTime -= SHOT_INTERVAL;
			
			// 弾丸を生成
			new CBullet
			(
				// 発射位置
				Position() + CVector(0.0f, 10.0f, 0.0f) + VectorZ() * 20.0f,
				VectorZ(),	// 発射方向
				1000.0f,	// 移動距離
				1000.0f		// 飛距離
			);


			// 全弾発射したら、攻撃終了
			mTimeShot++;
			if (mTimeShot >= mTimeShotEnd)
			{
				// 攻撃終了後の待機状態に遷移
				mState = EState::eAttackWait;
				mTimeShot = 0;
				mElapsedTime = 0.0f;
			}
		}
	}
	else
	{
		mState = EState::eChase;
		mTimeShot = 0;
		mElapsedTime = 0.0f;
	}
}

// 攻撃終了待ち
void CYukari::UpdateAttackWait()
{
	ChangeAnimation(EAnimType::eReload);
	if (IsAnimationFinished())
	{
		CPlayer* player = CPlayer::Instance();
		float distanceToPlayer = (player->Position() - Position()).Length();

		if (distanceToPlayer <= ATTACK_RANGE)
		{
			mState = EState::eAttack;
		}
		else
		{
			mState = EState::eChase;
		}
	}
}

// ジャンプ開始
void CYukari::UpdateJumpStart()
{
	ChangeAnimation(EAnimType::eJumpStart);
	mState = EState::eJump;

	mMoveSpeed += CVector(0.0f, JUMP_SPEED, 0.0f);
	mIsGrounded = false;
}

// ジャンプ中
void CYukari::UpdateJump()
{
	if (mMoveSpeed.Y() <= 0.0f)
	{
		ChangeAnimation(EAnimType::eJumpEnd);
		mState = EState::eJumpEnd;
	}
}

// ジャンプ終了
void CYukari::UpdateJumpEnd()
{
	if (IsAnimationFinished())
	{
		mState = EState::eIdle;
	}
}

// 更新
void CYukari::Update()
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
	case EState::eChase:
		UpdateChase();
		break;
	}

	mMoveSpeed -= CVector(0.0f, GRAVITY, 0.0f);

	//// Yukariのデバッグ表示
	//static bool debug = false;
	//if (CInput::PushKey('F'))
	//{
	//	debug = !debug;
	//}
	//if (debug)
	//{
	//	//CDebugPrint::Print(" レベル %d\n", mCharaMaxStatus.level);
	//	CDebugPrint::Print(" HP%d / %d\n", mCharaStatus.hp, mCharaMaxStatus.hp);
	//	CDebugPrint::Print(" 攻撃値%d\n", mCharaStatus.power);
	//	CDebugPrint::Print(" ST%d / %d\n", mCharaStatus.stamina, mCharaMaxStatus.stamina);
	//}
	//// 1キーを押しながら、↑ ↓ でHP増減
	//if (CInput::Key('3'))
	//{
	//	if (CInput::PushKey(VK_UP)) mCharaStatus.hp++;
	//	else if (CInput::PushKey(VK_DOWN)) mCharaStatus.hp--;
	//}
	//else if (CInput::Key('2'))
	//{
	//	LevelUp();
	//}

	// 移動
	Position(Position() + mMoveSpeed);

	CVector PlayerPosition;

	// Yukariを移動方向へ向ける
	CVector current = VectorZ();
	CVector target = mTargetDir;
	CVector forward = CVector::Slerp(current, target, 0.125f);
	Rotation(CQuaternion::LookRotation(forward));


	//CDebugPrint::Print("Shot%d\n", mTimeShot);
	//CDebugPrint::Print("Shotend%d\n", mTimeShotEnd);
	//CDebugPrint::Print("FPS:%f\n", Time::FPS());


	// HPゲージの座標を更新 (敵の座標の少し上の座標)
	CVector gaugePos = Position() + CVector(0.0f, 25.0f, 0.0f);
	mpGauge->SetWorldPos(gaugePos);
	CVector framePos = Position() + CVector(0.0f, 25.0f, 0.0f);
	mpFrame->SetWorldPos(framePos);


	// 現在のHPを設定
	mpGauge->SetValue(mCharaStatus.hp);

	mIsGrounded = false;

	// Yukariの更新
	CXCharacter::Update();
	mpDamageCol->Update();
	mpGun->UpdateAttachMtx();
}

bool CYukari::IsFoundPlayer() const
{
	CVector playerPos = CPlayer::Instance()->Position();
	CVector enemyPos = Position();

	CVector toPlayer = (playerPos - enemyPos).Normalized();
	CVector forward = Matrix().VectorZ().Normalized();

	float dot = forward.Dot(toPlayer);

	// 視野角の半分を計算する
	float halfFOV = FOV_ANGLE * 0.5f;

	//// acos関数を使用して実際の角度を計算する
	//float angle = acos(dot) * (180.0f / M_PI);

	// 視野角の半分より小さいかつプレイヤーとの距離が一定範囲以内であれば、プレイヤーを認識する
	if (dot >= cosf(halfFOV * M_PI / 180.0f))
	{
		float distance = (playerPos - enemyPos).Length();
		const float chaseRange = 100.0f;

		if (distance <= chaseRange)
			return true;
	}

	return false;

	/*CVector playerPos = CPlayer::Instance()->Position();
	CVector enemyPos = Position();

	CVector EP = (playerPos - enemyPos).Normalized();

	CVector forwrd = Matrix().VectorZ().Normalized();

	float dot = forwrd.Dot(EP);

	if (dot < cosf(FOV_ANGLE * M_PI / 180.0f)) return false;

	float distance = (playerPos - enemyPos).Length();

	const float chaseRenge = 100.0f;

	if (distance > chaseRenge)
		return false;

	return true;*/

}


// 衝突処理
void CYukari::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
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
void CYukari::Render()
{
	CXCharacter::Render();
}

// 被ダメージ処理
void CYukari::TakeDamage(int damage)
{
	// 死亡していたらダメージは受けない
	//if (mCharaStatus.hp <= 0) return;

	// HPからダメージを引く
	//mCharaStatus.hp = std::max(mCharaStatus.hp - damage, 0);
	mCharaStatus.hp -= damage;
	// HPが0になったら
	if (mCharaStatus.hp == 0)
	{
		//死亡処理 後で
	}
}