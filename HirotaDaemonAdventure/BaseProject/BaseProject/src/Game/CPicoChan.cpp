#include "CPicoChan.h"
#include "CCamera.h"
#include "CBillBoard.h"
#include "CImage.h"
#include "CPlayer.h"
#include "Maths.h"
#include "CInput.h"
#include "CGameManager.h"
#include "CStageManager.h"
#include "CPicoSword.h"
#include "CPicoChanUI.h"

// ピコちゃんの頭上
#define PICO_HEIGHT 1.0f
// 移動速度
#define MOVE_SPEED 0.6f
// ダッシュ速度
#define DASH_SPEED 1.2f
// 自動移動速度
#define MOVE_AUTOMATIC_SPEED 30.0f
// ジャンプ速度
#define JUMP_SPEED 1.5f
// 重力加速度
#define GRAVITY 0.0625f

// 視野の角度
#define FOV_ANGLE 100.0f
// プレイヤーまでの距離
#define ATTACK_RANGE 70.0f
// プレイヤーまでの距離(キック)
#define ATTACK_RANGE_KICK 25.0f
// プレイヤーまでの距離(バックステップ)
#define BACKSTEP_RANGE 24.0f
// バックステップの待機時間
#define BACKSTEP_WEIT_TIME 5.0f

// 敵を見失った後の時間
#define PLAYER_LOST 10.0f

// キックコライダーの時間
#define KICKCOL 10.0f

// プレイヤーを発見した後の時間
#define DISCOVERY 1.0f
// プレイヤーを発見した後の待ち時間
#define DISCOVERY_END 40.0f

// ピコちゃんのインスタンス
CPicoChan* CPicoChan::spInstance = nullptr;

CPicoChan* CPicoChan::Instance()
{
	return spInstance;
}

// ピコちゃんのアニメーションデータのテーブル
const CPicoChan::AnimData CPicoChan::ANIM_DATA[] =
{
	{ "",													true,	  0.0f	},	// Tポーズ
	{ "Character\\PicoChan\\anim\\Idle_266_2.x",			true,   266.0f	},	// Idle1
	{ "Character\\PicoChan\\anim\\Idle_421_1.x",			true,   421.0f	},	// Idle2
	{ "Character\\PicoChan\\anim\\Walk_61_1.x",				true,   61.0f	},	// 歩く
	{ "Character\\PicoChan\\anim\\Walk_82_2.x",				true,   82.0f	},	// 武器持ち歩き
	{ "Character\\PicoChan\\anim\\Run_44_1.x",				true,   44.0f	},	// 走る
	{ "Character\\PicoChan\\anim\\Run_37_2.x",				true,   37.0f	},	// 武器持ち走り
	{ "Character\\PicoChan\\anim\\BackJump_52_1.x",		false,		52.0f	},	// バックジャンプ(false)
	{ "Character\\PicoChan\\anim\\DashJump_53_1.x",		false,		53.0f	},	// ダッシュジャンプ(false)
	{ "Character\\PicoChan\\anim\\Death_235_1.x",		false,		235.0f	},	// 死亡1(false)
	{ "Character\\PicoChan\\anim\\Death_145_2.x",		false,		145.0f	},	// 死亡2(false)
	{ "Character\\PicoChan\\anim\\Kick_105_1.x",		false,		105.0f	},	// キック(false)
	{ "Character\\PicoChan\\anim\\Putaway_45_1.x",		false,		45.0f	},	// 武器をしまう
	{ "Character\\PicoChan\\anim\\WeaponDraw_48_1.x",	false,		48.0f	},	// 武器取り出し(false)
	{ "Character\\PicoChan\\anim\\WeakAttack_77_1.x",	false,		77.0f	},	// 弱攻撃(false)
	{ "Character\\PicoChan\\anim\\SpinAttack_113_1.x",	false,		113.0f	},	// 回転攻撃(false)
	{ "Character\\PicoChan\\anim\\Turn180_134.x",		false,		134.0f	},	// 振り返る(false)
	{ "Character\\PicoChan\\anim\\Alert_223_1.x",			true,	223.0f	},	// 警戒1
	{ "Character\\PicoChan\\anim\\Alert_454_2.x",			true,	454.0f	},	// 警戒2
	{ "Character\\PicoChan\\anim\\Hit_72_1.x",			false,		72.0f	},	// 被弾(false)
};

// コンストラクタ
CPicoChan::CPicoChan()
	: CXCharacter(ETag::eEnemy, ETaskPriority::eEnemy)
	, mState(EState::eReady)
	, mStateStep(0)
	, mElapsedTime(0.0f)
	, mElapsedTimeEnd(0.0f)
	, mKickTime(0.0f)
	, mBackStepTime(0.0f)
	, mDiscoveryTime(0.0f)
	, mDiscoveryTimeEnd(0.0f)
	, mMaxRadius(0.0f)
	, mTargetDir(0.0f, 0.0f, 1.0f)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mInitialPosition(0.0f, 0.0f, 0.0f)
	, mCenterPoint(CVector::zero)
	, mTimeToChange(Math::Rand(2.0f, 5.0f))
	, mIsGrounded(false)
	, mKickTimeEnd(false)
	, mDiscovery(false)
	, mDiscoveryEnd(false)
	, mBackStep(false)
	, mIsLerping(false)
	, mpRideObject(nullptr)
	, mDash(false)
	, mDashTime(0.0f)
	, mIsAttack(false)
{
	//インスタンスの設定
	spInstance = this;

	// 初期位置の保存
	//Position(mInitialPosition);
	mInitialPosition = Position();

	// モデルデータ取得
	CModelX* model = CResourceManager::Get<CModelX>("Pico");

	mpUI = new CPicoChanUI();
	mpUI->SetCenterRatio(CVector2(0.3f, 0.0f));

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
	ChangeAnimation(EAnimType::eIdle1);

	// フィールドとの当たり判定を取るコライダー
	mpLine = new CColliderLine
	(
		this, ELayer::eField,
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, PICO_HEIGHT, 0.0f)
	);
	mpLine->SetCollisionLayers({ ELayer::eField });

	// 一時的な当たり判定を取るコライダー
	mpCapsule = new CColliderCapsule
	(
		this, ELayer::ePlayer,
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, PICO_HEIGHT, 0.0f),
		3.0f,
		true,
		1.0f
	);
	mpCapsule->SetCollisionLayers({ ELayer::eFieldWall ,ELayer::eField, ELayer::eFieldEnemyWall });
	mpCapsule->Position(0.0f, 5.0f, 1.0f);

	// ダメージを受けるコライダー
	mpDamageCol = new CColliderSphere
	(
		this, ELayer::eDamageCol,
		0.35f
	);
	// ダメージを受けるコライダーと
	// 衝突判定を行うコライダーのレイヤーとタグを設定
	mpDamageCol->SetCollisionLayers({ ELayer::eAttackCol, ELayer::eDamageCol,ELayer::eEnemy });
	mpDamageCol->SetCollisionTags({ ETag::eWeapon, ETag::eEnemy });
	// ダメージを受けるコライダーを少し下へずらす
	mpDamageCol->Position(0.0f, 1.0f, 0.0f);
	//const CMatrix* spineMtx = GetFrameMtx("Armature_mixamorig_Spine1");
	//mpDamageCol->SetAttachMtx(spineMtx);

	// ダメージを与えるコライダー
	mpAttackCol = new CColliderSphere
	(
		this, ELayer::eKickCol,
		0.1f
	);
	mpAttackCol->SetCollisionLayers({ ELayer::eDamageCol });
	mpAttackCol->SetCollisionTags({ ETag::ePlayer });
	mpAttackCol->SetEnable(false);
	// 右足
	const CMatrix* spineMtxK = GetFrameMtx("root_LeftToe_end");
	mpAttackCol->SetAttachMtx(spineMtxK);

	// マジックソード作成
	mpSword = new CPicoSword();
	//mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	mpSword->AttachMtx(GetFrameMtx("root_HoodMain02"));
	mpSword->SetPicoChanInstance(this);
	mpSword->SetOwner(this);

	// 最初に1レベルに設定
	ChangeLevel(1);
}

// デストラクタ
CPicoChan::~CPicoChan()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);

	// コライダー関連の破棄
	SAFE_DELETE(mpLine);
	SAFE_DELETE(mpCapsule);
	SAFE_DELETE(mpDamageCol);
	SAFE_DELETE(mpAttackCol);

	// マジックソード破棄
	mpSword->Kill();

	mpUI->Kill();
}

// 衝突処理
void CPicoChan::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 乗れるコライダー
	if (self == mpLine)
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

	// 主に壁との当たり判定を取るコライダー
	if (self == mpCapsule)
	{
		if (other->Layer() == ELayer::eFieldWall)
		{
			Position(Position() + hit.adjust); //+ hit.adjust * hit.weight

			// 移動方向を反転
			mTargetDir = -mTargetDir;

			// 反転した方向に向けて回転を設定
			CVector current = VectorZ();
			CVector target = mTargetDir;
			CVector forward = CVector::Slerp(current, target, 0.125f);
			Rotation(CQuaternion::LookRotation(forward));

			if (other->Tag() == ETag::eRideableObject)
			{
				mpRideObject = other->Owner();
			}
		}
		else if (other->Layer() == ELayer::eField)
		{
			Position(Position() + hit.adjust);
		}
		else if (other->Layer() == ELayer::eFieldEnemyWall)
		{
			Position(Position() + hit.adjust);
		}
	}

	// ダメージを受けるコライダー
	if (self == mpDamageCol)
	{
		if (other->Layer() == ELayer::eAttackCol)
		{
			bool canBeHit = (mState != EState::eWeakAttack && mState != EState::eSpinAttack);
			if (canBeHit)
			{
				CPlayer* player = CPlayer::Instance();
				CVector vp = player->Position() - Position();
				float distancePlayer = vp.Length();
				vp.Y(0.0f);
				mTargetDir = vp.Normalized();

				int hitRand = Math::Rand(0, 100);
				if (hitRand >= 90) // 10%の確率で下の処理を実行
				{
					int random = Math::Rand(0, 2);
					if (random == 0 || random == 1 || random == 2)
					{
						mpDamageCol->SetEnable(false);
						ChangeState(EState::eHit);
					}
					/*else if (random == 1)
					{
						ChangeState(EState::eHit2);
					}*/
				}
			}
		}

		// 敵と当たるコライダー
		if (other->Layer() == ELayer::eDamageCol)
		{
			(other->Tag() == ETag::eEnemy);
			{
				Position(Position() + hit.adjust);
			}
		}
	}
}

// 状態変更
void CPicoChan::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// 被ダメージ処理
void CPicoChan::TakeDamage(int damage)
{
	mCharaStatus.hp -= damage;

	// HPが0になったら
	if (mCharaStatus.hp <= 0)
	{
		ChangeState(EState::eDeath);
	}
}

// レベルアップ
void CPicoChan::LevelUp()
{
	int level = mCharaStatus.level;
	ChangeLevel(level + 1);
}

// レベルを変更
void CPicoChan::ChangeLevel(int level)
{
	// ステータスのテーブルのインデックス地に変換
	int index = Math::Clamp(level - 1, 0, PICOCHAN_LEVEL_MAX);
	// 最大ステータスに設定
	mCharaMaxStatus = ENEMY_STATUS[index];
	// 現在のステータスを最大値にすることで、HP回復
	mCharaStatus = mCharaMaxStatus;

	mpUI->SetMaxValue(mCharaMaxStatus.hp);
	mpUI->SetValue(mCharaStatus.hp);
}

// フレームとHPゲージの表示の確認をする処理
void CPicoChan::UpdateGaugeAndFrame()
{
	if (mDiscovery)
	{
		mpUI->SetShow(false);
	}
	else
	{
		// HPゲージの座標を更新 (敵の座標の少し上の座標)
		CVector gaugePos = Position() + CVector(0.0f, 45.0f, 0.0f);
		mpUI->SetWorldPos(gaugePos);
	}
}

// ピコちゃんの方向をランダムに変更する処理
void CPicoChan::ChangeDerection()
{
	// ランダムな方向に変更
	// ランダムな角度を求める
	float randomAngle = Math::Rand(0.0f, 1.0f) * 360.0f;
	// 方向の計算を角度に代入
	mTargetDir = CalculateDirection(randomAngle);
}

// 待機状態遷移する条件
bool CPicoChan::ShouldTransitionWander()
{
	// mIsLerpingがtrueの場合、処理をスキップ
	if (mIsLerping)
	{
		return false;
	}

	float randomValue = Math::Rand(0.0f, 1.0f) * M_PI;
	return randomValue < 0.05f;
}

// 徘徊状態に遷移する条件
bool CPicoChan::ShouldTransition()
{
	float randomValue = Math::Rand(0.0f, 1.0f) * M_PI;
	return randomValue < 0.01f;  // 0.1%の確率で徘徊状態に遷移
}

// 360度の角度を求めて、x軸とy軸から計算する
CVector CPicoChan::CalculateDirection(float angleDegrees)
{
	// 初期角度にランダムなオフセットを追加
	float randomOffset = Math::Rand(0.0f, 1.0f);  // 0から1のランダムな値
	float randomAngle = angleDegrees + 2.0f * M_PI * randomOffset;

	// 角度からラジアンに変換
	float angleRadians = randomAngle * M_PI / 180.0f;

	// ベクトルの計算
	float x = cos(angleRadians);
	float y = 0.0f;					// Y軸方向に移動させる場合は必要に応じて変更
	float z = sin(angleRadians);

	return CVector(x, y, z);
}

// 移動処理
void CPicoChan::Move()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	mIsLerping = false;

	if (mIsAttack)
	{
		mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	}
	else
	{
		mpSword->AttachMtx(GetFrameMtx("root_HoodMain02"));
	}

	// 速度の設定
	float moveSpeed = MOVE_AUTOMATIC_SPEED;

	// 移動ベクトルの計算
	CVector moveVector = mTargetDir * moveSpeed;

	// deltaTime を考慮して移動量を計算
	moveVector *= Time::DeltaTime();

	// 新しい位置を計算
	CVector newPosition = Position() + moveVector + mMoveSpeed;

	// 中心点からの距離を計算
	CVector offset = newPosition - mCenterPoint;
	float distance = offset.Length();

	// 距離が半径を超えた場合の修正
	if (distance > mMaxRadius)
	{
		mIsLerping = true;

		// 目的地へのベクトルを計算
		CVector direction = mCenterPoint - Position();
		direction.Normalize(); // 方向ベクトルを正規化

		mTargetDir = -mTargetDir;

		// 中心点から半径までの距離
		CVector targetPosition = mCenterPoint + direction * mMaxRadius;

		// 一定速度で目的地に向かって移動
		if (mIsLerping)
		{
			// 移動速度
			float moveSpeed = 0.5f;
			newPosition = Position() + direction * moveSpeed;

			// 目的地に到達したら位置を更新
			if (CVector::Distance(Position(), targetPosition) < moveSpeed)
			{
				newPosition = targetPosition;
				mIsLerping = false;
			}
		}

		/*CDebugPrint::Print("Position:%f %f\n", Position().X(), Position().Z());
		CDebugPrint::Print("targetPosition:%f %f\n", targetPosition.X(), targetPosition.Z());*/

		// 敵の向きを調整
		mTargetDir = (mCenterPoint - Position()).Normalized();
		mTargetDir.Y(0.0f);

		// 敵を目標方向に回転させる
		CVector forward = CVector::Slerp(VectorZ(), mTargetDir, 0.125f);
		Rotation(CQuaternion::LookRotation(forward));
	}

	// 修正した位置を設定
	Position(newPosition);
}

bool CPicoChan::IsAttack()
{
	return mIsAttack;
}

// 中心座標と範囲を設定
void CPicoChan::SetCenterPoint(CVector& center, const float radius)
{
	mMaxRadius = radius;
	mCenterPoint = center;
}

// アニメーション切り替え
void CPicoChan::ChangeAnimation(EAnimType type)
{
	if (!(EAnimType::None < type && type < EAnimType::Num)) return;
	AnimData data = ANIM_DATA[(int)type];
	CXCharacter::ChangeAnimation((int)type, data.loop, data.frameLength);
}

// 準備中の状態
void CPicoChan::UpdateReady()
{
	// ステップごとに処理を切り替える
	switch (mStateStep)
	{
		// ステップ0 初期化処理
	case 0:
		ChangeAnimation(EAnimType::eIdle2);
		// 全ての衝突判定をオフにする
		SetEnableCol(false);
		// ピコちゃんの移動速度を0にする
		mMoveSpeed = CVector::zero;
		mCharaStatus.stamina = mCharaMaxStatus.stamina;
		mCharaStatus.hp = mCharaMaxStatus.hp;
		// 次のステップへ
		mStateStep++;
		break;
		// ステップ1 ステージの読み込みから
	case 1:
		// ゲームが開始したら
		if (CGameManager::GameState() == EGameState::eGame)
		{
			mElapsedTime = 0.0f;
			// ピコちゃんの衝突判定をオンにする
			SetEnableCol(true);
			// 現在の状態を待機に切り替え
			mCharaStatus.hp = mCharaMaxStatus.hp;
			ChangeState(EState::eIdle);
		}
		break;
	}
}

// 待機
void CPicoChan::UpdateIdle()
{
	mDiscovery = false;
	mDiscoveryEnd = false;
	mpAttackCol->SetEnable(false);
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	if (mIsAttack)
	{
		mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	}
	else
	{
		mpSword->AttachMtx(GetFrameMtx("root_HoodMain02"));
	}

	//プレイヤーを見つけたら、敵発見状態へ移行
	if (IsFoundPlayer())
	{
		if (mDiscoveryTimeEnd <= DISCOVERY_END && !mDiscovery)
		{
			ChangeState(EState::eDiscovery);
		}
		else
		{
			ChangeState(EState::eChase);
		}
	}
	else
	{
		// 現在のアニメーションが終了しているかどうかをチェック
		if (IsAnimationFinished())
		{	
			// ランダムに次のアニメーションを選択
			int random = Math::Rand(0, 1);
			if (random == 1)
			{
				ChangeAnimation(EAnimType::eIdle1);
			}
			else
			{
				ChangeAnimation(EAnimType::eIdle2);
			}
		}

		// 確率で徘徊状態に移行
		if (ShouldTransition())
		{
			ChangeState(EState::eWander);
		}
	}
}

// プレイヤー発見
void CPicoChan::UpdateDiscovery()
{
	mDiscovery = true;
	mMoveSpeed.Y(0.0f);
	mMoveSpeed.Z(0.0f);

	// プレイヤーまでのベクトルを求める
	CPlayer* player = CPlayer::Instance();
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	mIsAttack = true;
	mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	ChangeAnimation(EAnimType::eWeaponDraw);

	mDiscoveryTime += Time::DeltaTime();
	if (mDiscoveryTime >= DISCOVERY)
	{
		if (IsFoundPlayer())
		{
			mDiscoveryEnd = true;
			ChangeState(EState::eChase);
		}
		else
		{
			mDiscoveryTime = 0.0f;
			ChangeState(EState::ePutAway);
		}
	}
	//CDebugPrint::Print("discovery:%f\n", mDiscoveryTime);
}

// 追跡
void CPicoChan::UpdateChase()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	if (mIsAttack)
	{
		mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	}
	else
	{
		mpSword->AttachMtx(GetFrameMtx("root_HoodMain02"));
	}
	
	if (!IsFoundPlayer())
	{
		ChangeAnimation(EAnimType::eAlert1);
		mElapsedTimeEnd += Time::DeltaTime();
		if (mElapsedTimeEnd >= PLAYER_LOST)
		{
			ChangeState(EState::ePutAway);
			mElapsedTime = 0.0f;
			mElapsedTimeEnd = 0.0f; // プレイヤーが視界から消えたら経過時間をリセット
		}
	}
	else
	{
		mElapsedTimeEnd = 0.0f;
		CPlayer* player = CPlayer::Instance();
		CVector playerPos = player->Position();
		playerPos.Y(Position().Y());

		CVector toPlayer = (playerPos - Position()).Normalized();
		float distanceToPlayer = (player->Position() - Position()).Length();

		const float DASH_DISTANCE = 45.0f;
		const float WALK_DISTANCE = 44.0f;

		// プレイヤーとの距離に基づいて状態を変更
		if (distanceToPlayer > DASH_DISTANCE)
		{
			// Dash状態にする
			ChangeAnimation(EAnimType::eWeaponDash);
			mMoveSpeed = toPlayer * DASH_SPEED;
			//mMoveSpeed = toPlayer * 0.0f;
		}
		else if (distanceToPlayer <= WALK_DISTANCE)
		{
			// Walk状態にする
			ChangeAnimation(EAnimType::eWeaponWalk);
			mMoveSpeed = toPlayer * MOVE_SPEED;
			//mMoveSpeed = toPlayer * 0.0f;
		}
		//else if (DASH_DISTANCE >= distanceToPlayer <= WALK_DISTANCE)
		else if (DASH_DISTANCE >= distanceToPlayer|| distanceToPlayer <= WALK_DISTANCE)
		{
			mMoveSpeed = toPlayer * MOVE_SPEED;
			//mMoveSpeed = toPlayer * 0.0f;
		}
		
		mTargetDir = toPlayer;

		// 距離がさらに一定以内であれば攻撃モードに切り替える
		if (distanceToPlayer <= 35.0f)
		{
			mIsAttack = true;
			ChangeState(EState::eAttack);
		}
	}
}

// 攻撃状態
void CPicoChan::UpdateAttack()
{
	mDiscovery = false;
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	if (mIsAttack)
	{
		mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	}
	else
	{
		mpSword->AttachMtx(GetFrameMtx("root_HoodMain02"));
	}

	// プレイヤーのポインタが0以外の時
	CPlayer* player = CPlayer::Instance();

	// プレイヤーまでのベクトルを求める
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	if (distancePlayer <= ATTACK_RANGE)
	{
		CPlayer* player = CPlayer::Instance();
		CVector playerPos = player->Position();
		playerPos.Y(Position().Y());

		CVector toPlayer = (playerPos - Position()).Normalized();
		mMoveSpeed += toPlayer * 0.25;
		mTargetDir = toPlayer;

		if (distancePlayer <= 24.0f)
		{
			int random = Math::Rand(0, 2);
			if (random == 0)
			{
				ChangeState(EState::eWeakAttack);
			}
			else if (random == 1)
			{
				ChangeState(EState::eSpinAttack);
			}
			else if (random == 2)
			{
				ChangeState(EState::eKick);
			}
		}

		//if (distancePlayer <= BACKSTEP_RANGE/* && !mRollingEnd*/)
		//{
		//	//ChangeState(EState::eRolling);
		//	return;
		//}
		//else if (distancePlayer <= ATTACK_RANGE_KICK && !mKickTimeEnd)
		//{
		//	/*ChangeState(EState::eAttackKick);
		//	mKickTimeEnd = true;*/
		//	return;
		//}
		//else if (distancePlayer <= 23.0f)
		//{
		//	int random = Math::Rand(0, 1);
		//	if (random == 0)
		//	{
		//		ChangeState(EState::eWeakAttack);
		//	}
		//	else if (random == 1)
		//	{
		//		ChangeState(EState::eSpinAttack);
		//	}
		//}
	}
	else
	{
		ChangeState(EState::eChase);
		mElapsedTimeEnd = 0.0f;
		mDiscoveryTime = 0.0f;
		mDiscovery = false;
	}
}

// 弱攻撃
void CPicoChan::UpdateWeakAttack()
{
	mDiscovery = false;
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	if (mIsAttack)
	{
		mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	}
	else
	{
		mpSword->AttachMtx(GetFrameMtx("root_HoodMain02"));
	}

	ChangeAnimation(EAnimType::eWeakAttack);
	// プレイヤーのポインタが0以外の時
	CPlayer* player = CPlayer::Instance();

	// プレイヤーまでのベクトルを求める
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	if (GetAnimationFrame() >= 20.0f)
	{
		mpSword->AttackStart();
		if (IsAnimationFinished())
		{
			//mpAttackCol->SetEnable(true);
			ChangeState(EState::eAttackEnd);
		}
	}
}

// 回転攻撃
void CPicoChan::UpdateSpinAttack()
{
	mDiscovery = false;
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	if (mIsAttack)
	{
		mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	}
	else
	{
		mpSword->AttachMtx(GetFrameMtx("root_HoodMain02"));
	}
	
	ChangeAnimation(EAnimType::eSpinAttack);
	// プレイヤーのポインタが0以外の時
	CPlayer* player = CPlayer::Instance();

	// プレイヤーまでのベクトルを求める
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	// プレイヤーの方向に少しだけ移動
	float moveAmount = 0.1f;
	mMoveSpeed = mTargetDir * moveAmount;

	if (GetAnimationFrame() >= 70.0f)
	{
		mpSword->AttackStart();
		if (IsAnimationFinished())
		{
			ChangeState(EState::eAttackEnd);
		}
	}
}


// キック
void CPicoChan::UpdateKick()
{
	// 攻撃するときは移動を停止
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	if (mIsAttack)
	{
		mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	}
	else
	{
		mpSword->AttachMtx(GetFrameMtx("root_HoodMain02"));
	}

	// プレイヤーのポインタが0以外の時
	CPlayer* player = CPlayer::Instance();

	// プレイヤーまでのベクトルを求める
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	ChangeAnimation(EAnimType::eKick);
	if (mAnimationFrame >= 45.0f)
	{
		mpAttackCol->SetEnable(true);
		ChangeState(EState::eKickEnd);
	}
}

// キック終了
void CPicoChan::UpdateKickEnd()
{
	if (IsAnimationFinished())
	{
		mpAttackCol->SetEnable(false);
		ChangeState(EState::eChase);
	}
}


// 武器を取り出す
void CPicoChan::UpdateDrawn()
{
	if (IsAnimationFinished())
	{
		ChangeState(EState::eChase);
	}
}

// 武器をしまう
void CPicoChan::UpdatePutAway()
{
	ChangeAnimation(EAnimType::ePutAway);
	if (GetAnimationFrame() >= 40.0f)
	{
		mIsAttack = false;
		ChangeState(EState::eIdle);
	}

	if (mIsAttack)
	{
		mpSword->AttachMtx(GetFrameMtx("root_RightHand"));
	}
	else
	{
		mpSword->AttachMtx(GetFrameMtx("root_HoodMain02"));
	}

	if (IsAnimationFinished())
	{
		if (mElapsedTime >= 0.1f)
		{
			mElapsedTime = 0.0f;
			ChangeState(EState::eIdle);
		}
		else
		{
			mElapsedTime += Time::DeltaTime();
		}
	}
	//CDebugPrint::Print("elapsed:%f\n", mElapsedTime);
}

// 攻撃終了待ち
void CPicoChan::UpdateAttackEnd()
{
	mpSword->AttackEnd();
	if (IsAnimationFinished())
	{
		ChangeState(EState::eChase);
	}
}

// プレイヤーの攻撃を受けた時
void CPicoChan::UpdateHit()
{
	// ダメージを受けた時は移動を停止
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	mpSword->AttackEnd();

	ChangeAnimation(EAnimType::eHit);
	if (IsAnimationFinished())
	{
		// プレイヤーのポインタが0以外の時
		CPlayer* player = CPlayer::Instance();

		// プレイヤーまでのベクトルを求める
		CVector vp = player->Position() - Position();
		float distancePlayer = vp.Length();
		vp.Y(0.0f);
		mTargetDir = vp.Normalized();

		if (mCharaStatus.hp >= 1)
		{
			mpDamageCol->SetEnable(true);
			ChangeState(EState::eChase);
		}
		else if (mCharaStatus.hp <= 0)
		{
			mpDamageCol->SetEnable(false);
			ChangeState(EState::eDeath);
		}
	}
}

// 死亡
void CPicoChan::UpdateDeath()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	ChangeAnimation(EAnimType::eDeath1);
	if (IsAnimationFinished())
	{
		ChangeState(EState::eDeathEnd);
	}
}

// 死亡処理終了
void CPicoChan::UpdateDeathEnd()
{
	if (IsAnimationFinished())
	{
		Kill();
	}
}

// 徘徊処理
void CPicoChan::UpdateWander()
{
	mpAttackCol->SetEnable(false);
	ChangeAnimation(EAnimType::eWalk);

	// 一定時間ごとに方向転換
	mElapsedTime += Time::DeltaTime();
	if (mElapsedTime >= mTimeToChange)
	{
		ChangeDerection();
		mElapsedTime = 0.0f;
	}

	Move();

	if (IsFoundPlayer())
	{
		if (mDiscoveryTimeEnd <= DISCOVERY_END)
		{
			ChangeState(EState::eDiscovery);
		}
		else
		{
			ChangeState(EState::eChase);
		}
	}
	else
	{
		if (ShouldTransitionWander())
		{
			ChangeAnimation(EAnimType::eIdle1);
			ChangeState(EState::eIdle);
		}
	}
}

// プレイヤー追跡
bool CPicoChan::IsFoundPlayer() const
{
	CVector playerPos = CPlayer::Instance()->Position();
	CVector enemyPos = Position();

	CVector toPlayer = (playerPos - enemyPos).Normalized();
	CVector forward = Matrix().VectorZ().Normalized();

	float dot = forward.Dot(toPlayer);

	// 視野角の半分を計算する
	float halfFOV = FOV_ANGLE * 0.5f;

	// 視野角の半分より小さいかつプレイヤーとの距離が一定範囲以内であれば、プレイヤーを認識する
	if (dot >= cosf(halfFOV * M_PI / 180.0f))
	{
		float distance = (playerPos - enemyPos).Length();
		const float chaseRange = 100.0f;

		if (distance <= chaseRange)
			return true;
	}

	return false;
}

// 更新
void CPicoChan::Update()
{
	//CDebugPrint::Print("mIsAttack:%s\n", mIsAttack ? "true" : "false");
	SetParent(mpRideObject);
	mpRideObject = nullptr;

	// キックの待ち時間
	if (mKickTimeEnd)
	{
		mKickTime += Time::DeltaTime();
		if (mKickTime >= KICKCOL)
		{
			mKickTimeEnd = false;
			mKickTime = 0.0f;
		}
	}

	// バックステップの待ち時間
	if (mBackStep)
	{
		mBackStepTime += Time::DeltaTime();
		if (mBackStepTime >= BACKSTEP_WEIT_TIME)
		{
			mBackStep = false;
			mBackStepTime = 0.0f;
		}
	}

	// プレイヤーを発見した後の時間の計測
	if (mDiscoveryTimeEnd <= DISCOVERY_END && mDiscoveryEnd)
	{
		mDiscoveryTimeEnd += Time::DeltaTime();
		if (mDiscoveryTimeEnd >= DISCOVERY_END)
		{
			mDiscovery = false;
			mDiscoveryEnd = false;
			mDiscoveryTimeEnd = 0.0f;
		}
	}

	// 状態に合わせて、更新処理を切り替える
	switch (mState)
	{
		// 準備状態
	case EState::eReady:
		UpdateReady();
		break;
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// 攻撃
	case EState::eAttack:
		UpdateAttack();
		break;
		// 攻撃
	case EState::eAttackEnd:
		UpdateAttackEnd();
		break;
		// 攻撃終了待ち
	case EState::eAttackWait:
		UpdateAttackEnd();
		break;
		// 弱攻撃
	case EState::eWeakAttack:
		UpdateWeakAttack();
		break;
		// 回転攻撃
	case EState::eSpinAttack:
		UpdateSpinAttack();
		break;
		// 武器を取り出す状態
	case EState::eDrawn:
		UpdateDrawn();
		break;
		// 武器をしまう状態
	case EState::ePutAway:
		UpdatePutAway();
		break;
		// キック
	case EState::eKick:
		UpdateKick();
		break;
		// キック終了
	case EState::eKickEnd:
		UpdateKickEnd();
		break;
		// プレイヤー発見
	case EState::eDiscovery:
		UpdateDiscovery();
		break;
		// 追跡状態
	case EState::eChase:
		UpdateChase();
		break;
		// プレイヤーの攻撃Hit
	case EState::eHit:
		UpdateHit();
		break;
		// 死亡
	case EState::eDeath:
		UpdateDeath();
		break;
		// 死亡処理終了
	case EState::eDeathEnd:
		UpdateDeathEnd();
		break;
		// 徘徊処理
	case EState::eWander:
		UpdateWander();
		break;
	//	// バックステップ
	//case EState::eBackStep:
	//	UpdateBackStep();
	//	break;
	//	// ジャンプ開始
	//case EState::eJumpStart:
	//	UpdateJumpStart();
	//	break;
	//	// ジャンプ中
	//case EState::eJump:
	//	UpdateJump();
	//	break;
	//	// ジャンプ終了
	//case EState::eJumpEnd:
	//	UpdateJumpEnd();
	//	break;
	}

	if (mState != EState::eReady)
	{
		mMoveSpeed -= CVector(0.0f, GRAVITY, 0.0f);

		// 移動
		Position(Position() + mMoveSpeed * 60.0f * Time::DeltaTime());

		CVector PlayerPosition;

		// CSoldierを移動方向へ向ける
		CVector current = VectorZ();
		CVector target = mTargetDir;
		CVector forward = CVector::Slerp(current, target, 0.125f);
		Rotation(CQuaternion::LookRotation(forward));
	}

	mpUI->SetValue(mCharaStatus.hp);

	// CSoldierの更新
	CXCharacter::Update();
	mpDamageCol->Update();
	mpSword->UpdateAttachMtx();
	mpAttackCol->Update();

	UpdateGaugeAndFrame();

	mIsGrounded = false;
}

// 描画
void CPicoChan::Render()
{
	CXCharacter::Render();
}