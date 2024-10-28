#include "CSoldier.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CStageManager.h"
#include "CEnemyManager.h"
#include "CGameManager.h"
#include "CInput.h"
#include "CGun.h"
#include "CBullet.h"
#include "CKick.h"
#include "CSoldierFrame.h"
#include "CSoldierGauge.h"
#include "CExclamationMark.h"
#include "CEffect.h"

#define _USE_MATH_DEFINES

// ソルジャー関連
// HP
#define HP 5
// レベル
#define LEVEL 1
// 攻撃力
#define ATTACK 10
// ソルジャーの頭上
#define ENEMY_HEIGHT 8.0f
// 移動速度
#define MOVE_SPEED 0.7f
// 自動移動速度
#define MOVE_AUTOMATIC_SPEED 30.0f
// プレイヤーを発見した後の時間
#define DISCOVERY 2.0f
// プレイヤーを発見した後の待ち時間
#define DISCOVERY_END 40.0f
// 敵を見失った後の時間
#define PLAYER_LOST 10.0f
// キックコライダーの時間
#define KICKCOL 10.0f
// 重力加速度
#define GRAVITY 0.0625f

// 角度
// 視野の角度(ー角度+角度も出)
#define FOV_ANGLE 100.0f
// プレイヤーまでの距離
#define ATTACK_RANGE 70.0f
// プレイヤーまでの距離(キック)
#define ATTACK_RANGE_KICK 25.0f
// プレイヤーまでの距離(バックステップ)
#define BACKSTEP_RANGE 24.0f
// バックステップの待機時間
#define BACKSTEP_WEIT_TIME 5.0f

// 弾丸関連
// 弾丸の発射間隔
#define ATTACK 10
// 弾丸の発射間隔
#define SHOT_INTERVAL 2.0f

// プレイヤーのインスタンス
#define PLAYER_INSTANCE CPlayer::Instance()

// ソルジャーのインスタンス
CSoldier* CSoldier::spInstance = nullptr;
// インスタンス
CSoldier* CSoldier::Instance()
{
	return spInstance;
}

// CSoldierのアニメーションデータのテーブル
const CSoldier::AnimData CSoldier::ANIM_DATA[] =
{
	{ "",																			true,	  0.0f	},	// Tポーズ
	{ "Character\\Gas mask soldier\\anim\\Rifle_Idle1_515.x",						true,   515.0f	},	// Idle時
	{ "Character\\Gas mask soldier\\anim\\Rifle_Idle3_187.x",						true,   187.0f	},	// ライフルIdle時
	{ "Character\\Gas mask soldier\\anim\\Rifle_walk_79.x",							true,	 79.0f	},	// 移動
	{ "Character\\Gas mask soldier\\anim\\Alert_83.x",								true,	 83.0f	},	// 警戒
	{ "Character\\Gas mask soldier\\anim\\Rifle_1shot_71.x",						true,	 71.0f	},	// プレイヤー発見時攻撃
	{ "Character\\Gas mask soldier\\anim\\Right foot kick_121.x",				false,		121.0f	},	// 格闘
	{ "Character\\Gas mask soldier\\anim\\Reload_199.x",							true,	 99.0f	},	// リロード
	{ "Character\\Gas mask soldier\\anim\\Rilfle_Aim_to_Dwon._91.x",			false,		91.0f	},	// エイム解除
	{ "Character\\Gas mask soldier\\anim\\Hit_27.x",							false,		27.0f	},	// Hit
	{ "Character\\Gas mask soldier\\anim\\Death_Fall down1_157.x",				false,		157.0f	},	// 死亡
	{ "Character\\Gas mask soldier\\anim\\BackStep_101.x",						false,		101.0f	},	// バックステップ

};

// コンストラクタ
CSoldier::CSoldier()
	: CXCharacter(ETag::eEnemy, ETaskPriority::eEnemy)
	, mState(EState::eReady)
	, mStateStep(0)
	, mTimeShot(0)
	, mTimeShotEnd(5)
	, mElapsedTime(0.0f)
	, mElapsedTime_End(0.0f)
	, mChangeTime(0.0f)
	, mRandomCalculationTime(Math::Rand(2.0f, 5.0f))
	, mKickTime(0.0f)
	, mBackStepTime(0.0f)
	, mDiscoveryTime(0.0f)
	, mDiscoveryTimeEnd(0.0f)
	, mMaxRadius(0.0f)
	, mIsGrounded(false)
	, mKickWaitingEnd(false)
	, mDiscovery(false)
	, mDiscoveryEnd(false)
	, mBackStep(false)
	, mEnteredTheRange(false)
	, mTargetDir(CVector::forward)
	, mMoveSpeed(CVector::zero)
	, mInitialPosition(CVector::zero)
	, mCenterPoint(CVector::zero)
	, mpRideObject(nullptr)
{
	//インスタンスの設定
	spInstance = this;

	// 初期位置の保存
	mInitialPosition = Position();

	// ソルジャーの数を取得
	CEnemyManager::IncrementSoldierCount();

	// ソルジャーのモデルデータ取得
	CModelX* model = CResourceManager::Get<CModelX>("Soldier");

	// 銃を作成
	mpGun = new CGun();
	// 右手に持たせる
	const CMatrix* gun = GetFrameMtx("Armature_mixamorig_RightHand");
	mpGun->AttachMtx(gun);

	// フレーム設定
	mpFrame = new CSoldierFrame();
	// 0~1の値を設定
	mpFrame->SetCenterRatio(CVector2(0.5f, 0.0f));
	// ゲージ設定
	mpGauge = new CSoldierGauge();
	mpGauge->SetCenterRatio(CVector2(0.3f, 0.0f));
	// ビックリマーク設定
	mpExclamationMark = new CExclamationMark();
	mpExclamationMark->SetCeneterRatio(CVector2(0.3f, 0.5f));

	// 縦の線分コライダー
	mpColliderLine = new CColliderLine
	(
		this, ELayer::eField,
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, ENEMY_HEIGHT, 0.0f)
	);
	mpColliderLine->SetCollisionLayers({ ELayer::eField });

	// 壁やオブジェクトとの当たり判定を取るコライダー
	mpColliderCapsule = new CColliderCapsule
	(
		this, ELayer::eEnemy,
		CVector(0.0f, 4.0f, 2.0f),
		CVector(0.0f, 12.0f, 2.0f),
		5.0f,
		true,
		1.0f
	);
	mpColliderCapsule->SetCollisionLayers({ ELayer::eFieldWall ,ELayer::eField, ELayer::eFieldEnemyWall });
	//mpColliderCapsule->Position(0.0f, 0.0f, 0.0f);

	// ダメージを与えるコライダー
	mpAttackCol = new CColliderSphere
	(
		this, ELayer::eKickCol,
		1.3f
	);
	// 衝突判定を行うコライダーのレイヤーとタグを設定
	mpAttackCol->SetCollisionLayers({ ELayer::eDamageCol });
	mpAttackCol->SetCollisionTags({ ETag::ePlayer });
	mpAttackCol->SetEnable(false);
	// 右足のボーンに設定
	const CMatrix* spineMtxK = GetFrameMtx("Armature_mixamorig_RightToeBase");
	mpAttackCol->SetAttachMtx(spineMtxK);

	// ダメージを受けるコライダー
	mpDamageCol = new CColliderSphere
	(
		this, ELayer::eDamageCol,
		5.0f
	);
	// 衝突判定を行うコライダーのレイヤーとタグを設定
	mpDamageCol->SetCollisionLayers({ ELayer::eAttackCol, ELayer::eDamageCol,ELayer::eEnemy });
	mpDamageCol->SetCollisionTags({ ETag::eWeapon, ETag::eEnemy });
	// ダメージを受けるコライダーを少し↑へずらす
	mpDamageCol->Position(0.0f, 8.0f, 0.0f);
	const CMatrix* spineMtx = GetFrameMtx("Armature_mixamorig_Spine1");
	mpDamageCol->SetAttachMtx(spineMtx);

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

	// フラグ設定
	mKickWaitingEnd = false;
	mBackStep = false;

	// 最初に1レベルに設定
	ChangeLevel(1);
}

// デストラクタ
CSoldier::~CSoldier()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);

	// コライダー関連の破棄
	SAFE_DELETE(mpColliderLine);
	SAFE_DELETE(mpColliderCapsule);
	SAFE_DELETE(mpAttackCol);
	SAFE_DELETE(mpDamageCol);
	
	// 銃の破棄
	mpGun->Kill();

	// UI周りを破棄
	mpGauge->Kill();
	mpFrame->Kill();
	mpExclamationMark->Kill();

	// ソルジャーのカウントを破棄
	CEnemyManager::DecrementSoldierCount();
}

// 衝突処理
void CSoldier::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 縦の線分コライダー
	if (self == mpColliderLine)
	{
		// 床
		if (other->Layer() == ELayer::eField)
		{
			mMoveSpeed.Y(0.0f);
			Position(Position() + hit.adjust); //+ hit.adjust * hit.weight
			mIsGrounded = true;

			// 乗れるオブジェクト
			if (other->Tag() == ETag::eRideableObject)
			{
				mpRideObject = other->Owner();
			}
		}
	}

	// 壁やオブジェクトとの当たり判定を取るコライダー
	if (self == mpColliderCapsule)
	{
		if (other->Layer() == ELayer::eFieldWall)
		{
			Position(Position() + hit.adjust);

			// 移動方向を反転
			mTargetDir = -mTargetDir;

			// 反転した方向に向けて回転を設定
			// 壁際に配置しない場合は必要ない処理
			CVector current = VectorZ();
			CVector target = mTargetDir;
			CVector forward = CVector::Slerp(current, target, 0.125f);
			Rotation(CQuaternion::LookRotation(forward));

			// 乗れるオブジェクト
			if (other->Tag() == ETag::eRideableObject)
			{
				mpRideObject = other->Owner();
			}
		}
		// 床
		else if (other->Layer() == ELayer::eField)
		{
			Position(Position() + hit.adjust);
		}
		// 敵用の壁
		else if (other->Layer() == ELayer::eFieldEnemyWall)
		{
			Position(Position() + hit.adjust);
		}
	}

	// ダメージを受けるコライダー
	if (self == mpDamageCol)
	{
		// ダメージを与えるコライダー
		if (other->Layer() == ELayer::eAttackCol)
		{
			if (mState != EState::eKick)
			{
				ChangeState(EState::eHit);
			}
		}

		// ダメージを受けるコライダー
		if (other->Layer() == ELayer::eDamageCol)
		{
			(other->Tag() == ETag::eEnemy);
			{
				Position(Position() + hit.adjust);
			}
		}
	}
}

// 被ダメージ処理
void CSoldier::TakeDamage(int damage)
{
	mCharaStatus.hp -= damage;

	// HPが0になったら
	if (mCharaStatus.hp <= 0)
	{
		ChangeState(EState::eDeth);
	}
}

// レベルアップ
void CSoldier::LevelUp()
{
	int level = mCharaStatus.level;
	ChangeLevel(level + 1);
}

// レベルを変更
void CSoldier::ChangeLevel(int level)
{
	// ステータスのテーブルのインデックス値に変換
	int index = Math::Clamp(level - 1, 0, ENEMY_LEVEL_MAX);
	// 最大ステータスに設定
	mCharaMaxStatus = ENEMY_STATUS[index];
	// 現在のステータスを最大値にすることで、HP回復
	mCharaStatus = mCharaMaxStatus;

	// 最大HPと現在HPをHPゲージに反映
	mpGauge->SetMaxValue(mCharaMaxStatus.hp);
	mpGauge->SetValue(mCharaStatus.hp);
}

// 開始時の中心座標と範囲を設定
void CSoldier::SetCenterPoint(CVector& center, const float radius)
{
	// 開始時の半径
	mMaxRadius = radius;
	// 開始時の中心点
	mCenterPoint = center;
}

// 移動処理
void CSoldier::Move()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

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
		// 開始時の範囲内から出た
		mEnteredTheRange = true;

		// 目的地へのベクトルを計算
		CVector direction = mCenterPoint - Position();
		// 方向ベクトルを正規化
		direction.Normalize();
		// 反転
		mTargetDir = -mTargetDir;

		// 中心点から半径までの距離
		CVector targetPosition = mCenterPoint + direction * mMaxRadius;

		// 一定速度で目的地に向かって移動
		if (mEnteredTheRange)
		{
			// 移動速度
			float moveSpeed = 0.5f;
			newPosition = Position() + direction * moveSpeed;

			// 目的地に到達したら位置を更新
			if (CVector::Distance(Position(), targetPosition) < moveSpeed)
			{
				newPosition = targetPosition;
				// 開始時の範囲内に入った
				mEnteredTheRange = false;
			}
		}

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

// 360度の角度を求めて、x軸とy軸から計算する
CVector CSoldier::CalculateDirection(float angleDegrees)
{
	// 初期角度にランダムなオフセットを追加
	// 0から1のランダムな値
	float randomOffset = Math::Rand(0.0f, 1.0f);
	float randomAngle = angleDegrees + 2.0f * M_PI * randomOffset;

	// 角度からラジアンに変換
	float angleRadians = randomAngle * M_PI / 180.0f;

	// ベクトルの計算
	float x = cos(angleRadians);
	float y = 0.0f;				// 必要に応じて変更
	float z = sin(angleRadians);

	return CVector(x, y, z);
}

// ソルジャーの方向をランダムに変更する処理
void CSoldier::ChangeDerection()
{
	// ランダムな方向に変更
	// ランダムな角度を求める
	float randomAngle = Math::Rand(0.0f, 1.0f) * 360.0f;
	// 方向の計算を角度に代入
	mTargetDir = CalculateDirection(randomAngle);
}

// 待機状態に遷移する条件
bool CSoldier::WaitingCondition()
{
	// mEnteredTheRangeがtrueの場合、処理をスキップ
	if (mEnteredTheRange)
	{
		return false;
	}

	float randomValue = Math::Rand(0.0f, 1.0f) * M_PI;
	// 30%
	return randomValue < (0.3f * M_PI);
}

// 徘徊状態に遷移する条件
bool CSoldier::WanderingConditions()
{
	float randomValue = Math::Rand(0.0f, 1.0f) * M_PI;
	// 50%
	return randomValue < (0.5f * M_PI);
}

// プレイヤー追跡処理
bool CSoldier::IsFoundPlayer() const
{
	CVector playerPos = PLAYER_INSTANCE->Position();
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

// フレームとHPゲージの表示の確認をする処理
void CSoldier::UpdateGaugeAndFrame()
{
	// プレイヤーを発見して一定時間経ったかどうか
	if (mDiscovery)
	{
		mpGauge->SetShow(false);
		mpFrame->SetShow(false);
	}
	else
	{
		// HPゲージの座標を更新 (敵の座標の少し上の座標)
		CVector gaugePos = Position() + CVector(0.0f, 45.0f, 0.0f);
		mpGauge->SetWorldPos(gaugePos);
		CVector framePos = Position() + CVector(0.0f, 45.0f, 0.0f);
		mpFrame->SetWorldPos(framePos);
	}
}

// ビックリマークの表示の確認をする処理
void CSoldier::UpdateExclamation()
{
	// プレイヤーを発見して一定時間経ったかどうか
	if (mDiscovery)
	{
		// ビックリマーク画像の座標を更新
		CVector exclamationMardPos = Position() + CVector(0.0f, 45.0f, 0.0f);
		mpExclamationMark->SetWorldPos(exclamationMardPos);
	}
	else
	{
		mpExclamationMark->SetShow(false);
	}
}

// キックの待ち時間
void CSoldier::KickWaitTime()
{
	if (mKickWaitingEnd)
	{
		mKickTime += Time::DeltaTime();
		if (mKickTime >= KICKCOL)
		{
			mKickWaitingEnd = false;
			mKickTime = 0.0f;
		}
	}
}

// バックステップの待ち時間
void CSoldier::BackStepWaitTime()
{
	if (mBackStep)
	{
		mBackStepTime += Time::DeltaTime();
		if (mBackStepTime >= BACKSTEP_WEIT_TIME)
		{
			mBackStep = false;
			mBackStepTime = 0.0f;
		}
	}
}

// プレイヤーを発見した後の待ち時間
void CSoldier::DiscoveryWaitTime()
{
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
}

// 状態変更
void CSoldier::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// アニメーション切り替え
void CSoldier::ChangeAnimation(EAnimType type)
{
	if (!(EAnimType::None < type && type < EAnimType::Num)) return;
	AnimData data = ANIM_DATA[(int)type];
	CXCharacter::ChangeAnimation((int)type, data.loop, data.frameLength);
}

// 準備中の状態
void CSoldier::UpdateReady()
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
			// プレイヤーの衝突判定をオンにする
			SetEnableCol(true);
			// 現在の状態を待機に切り替え
			mCharaStatus.hp = mCharaMaxStatus.hp;
			ChangeState(EState::eIdle);
		}
		break;
	}
}

// 待機状態
void CSoldier::UpdateIdle()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	mDiscovery = false;
	mDiscoveryEnd = false;
	mpAttackCol->SetEnable(false);

	// プレイヤーを見つけたら、敵発見状態へ遷移
	if (IsFoundPlayer())
	{
		// 発見後の待ち時間より少なく
		// プレイヤーを発見して一定時間経ったかどうか
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
		ChangeAnimation(EAnimType::eIdle);

		// 確率で徘徊状態に遷移
		if (WanderingConditions())
		{
			ChangeState(EState::eWander);
		}
	}
}

// 攻撃状態
void CSoldier::UpdateAttack()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	mDiscovery = false;
	
	// プレイヤーまでのベクトルを求める
	CVector vp = PLAYER_INSTANCE->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	// 攻撃レンジに入ったかどうか
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
				Position() + CVector(0.0f, 15.5f, 0.0f) + VectorZ() * 20.0f,
				VectorZ(),	// 発射方向
				1000.0f,	// 移動距離
				1000.0f		// 飛距離
			);

			// 全弾発射したら、攻撃終了
			mTimeShot++;
			if (mTimeShot >= mTimeShotEnd)
			{
				mTimeShot = 0;
				mElapsedTime = 0.0f;
				mDiscoveryTime = 0.0f;
				// 攻撃終了後の待機状態に遷移
				ChangeState(EState::eAttackWait);
			}
		}

		// バックステップレンジに入ったかどうか
		// バックステップを行えるかどうか
		if (distancePlayer <= BACKSTEP_RANGE && !mBackStep)
		{
			mBackStep = true;
			ChangeState(EState::eBackStep);
			return;
		}
		// キックレンジに入ったかどうか
		// // キックの待ち時間が終わっているかどうか
		else if (distancePlayer <= ATTACK_RANGE_KICK && !mKickWaitingEnd)
		{
			mKickWaitingEnd = true;
			ChangeState(EState::eKick);
			return;
		}
	}
	else
	{
		mDiscoveryTime = 0.0f;
		mElapsedTime_End = 0.0f;
		ChangeState(EState::eChase);
	}
}

// 攻撃終了待ち状態
void CSoldier::UpdateAttackWait()
{
	ChangeAnimation(EAnimType::eReload);
	if (IsAnimationFinished())
	{
		// プレイヤーまでのベクトルを求める
		CVector vp = PLAYER_INSTANCE->Position() - Position();
		float distancePlayer = vp.Length();
		vp.Y(0.0f);
		mTargetDir = vp.Normalized();

		// プレイヤーまでの距離が攻撃レンジ内であれば
		if (distancePlayer <= ATTACK_RANGE)
		{
			ChangeState(EState::eAttack);
		}
		// 範囲外
		else
		{
			mDiscoveryTime = 0.0f;
			mElapsedTime_End = 0.0f;
			ChangeState(EState::eAimDwon);
		}
	}
}

// キック状態
void CSoldier::UpdateKick()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	ChangeAnimation(EAnimType::eKick);

	// プレイヤーまでのベクトルを求める
	CVector vp = PLAYER_INSTANCE->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	// アニメーションのフレームが45f以上
	if (mAnimationFrame >= 45.0f)
	{
		// コライダーをオン
		mpAttackCol->SetEnable(true);
		ChangeState(EState::eKickWait);
	}
}

// キック終了状態
void CSoldier::UpdateKickWait()
{
	// アニメーションのフレームが75f以上
	if (mAnimationFrame >= 70.0f)
	{
		// コライダーをオフ
		mpAttackCol->SetEnable(false);
		if (IsAnimationFinished())
		{
			ChangeAnimation(EAnimType::eIdle);
			ChangeState(EState::eChase);
		}
	}
}

// エイム解除状態
void CSoldier::UpdateAimDwon()
{
	ChangeAnimation(EAnimType::eAimDwou);
	if (IsAnimationFinished())
	{
		mElapsedTime_End = 0.0f;
		ChangeState(EState::eIdle);
	}
}

// プレイヤー発見状態
void CSoldier::UpdateDiscovery()
{
	mMoveSpeed.Y(0.0f);
	mMoveSpeed.Z(0.0f);
	mDiscovery = true;

	// プレイヤー発見時の時間を増加
	mDiscoveryTime += Time::DeltaTime();

	ChangeAnimation(EAnimType::eRifleIdle);

	// プレイヤーまでのベクトルを求める
	CVector vp = PLAYER_INSTANCE->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();
	
	// プレイヤー発見時間がDISCOVERYより大きかどうか
	if (mDiscoveryTime >= DISCOVERY)
	{
		// プレイヤーを見つけたかどうか
		if (IsFoundPlayer())
		{
			mDiscoveryEnd = true;
			ChangeState(EState::eChase);
		}
		// プレイヤーを見失っているかどうか
		else
		{
			mDiscoveryTime = 0.0f;
			ChangeState(EState::eAimDwon);
		}
	}
}

// 追跡状態
void CSoldier::UpdateChase()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	// プレイヤーを見失っているかどうか
	if (!IsFoundPlayer())
	{
		ChangeAnimation(EAnimType::eRifleIdle);

		mElapsedTime_End += Time::DeltaTime();
		// 解除時間がPLAYER_LOSTより大きいかどうか
		if (mElapsedTime_End >= PLAYER_LOST)
		{
			mElapsedTime_End = 0.0f;
			ChangeState(EState::eAimDwon);
		}
	}
	// プレイヤーを見つけた
	else
	{
		ChangeAnimation(EAnimType::eAlert);

		mElapsedTime_End = 0.0f;

		// Y座標を現在のオブジェクトのY座標に変更す
		CVector playerPos = PLAYER_INSTANCE->Position();
		playerPos.Y(Position().Y());

		// プレイヤーに向かって移動するための方向と速度を計算
		CVector toPlayer = (playerPos - Position()).Normalized();
		mMoveSpeed += toPlayer * MOVE_SPEED;
		mTargetDir = toPlayer;

		// プレイヤーとの距離が一定範囲以内であれば攻撃モードに切り替える
		CVector vp = PLAYER_INSTANCE->Position() - Position();
		float distancePlayer = vp.Length();
		vp.Y(0.0f);
		
		// 攻撃レンジに入ったかどうか
		if (distancePlayer <= ATTACK_RANGE)
		{
			ChangeState(EState::eAttack);
		}
	}
}

// 徘徊状態
void CSoldier::UpdateWander()
{
	// コライダーオフ
	mpAttackCol->SetEnable(false);
	ChangeAnimation(EAnimType::eWalk);

	// 移動処理
	Move();

	// 一定時間ごとに方向転換
	mChangeTime += Time::DeltaTime();
	if (mChangeTime >= mRandomCalculationTime)
	{
		ChangeDerection();
		mChangeTime = 0.0f;
	}

	// プレイヤーを見つけたかどうか
	if (IsFoundPlayer())
	{
		// プレイヤー発見時後の時間が経過していない
		if (mDiscoveryTimeEnd <= DISCOVERY_END)
		{
			ChangeState(EState::eDiscovery);
		}
		// プレイヤー発見時後の時間が経過している
		else
		{
			ChangeState(EState::eChase);
		}
	}
	// プレイヤーを見失っているかどうか
	else
	{
		// 確率で待機状態に遷移
		if (WaitingCondition())
		{
			ChangeState(EState::eIdle);
		}
	}
}

// バックステップ状態
void CSoldier::UpdateBackStep()
{
	mMoveSpeed.X(0.0f);

	ChangeAnimation(EAnimType::eBackStep);

	// プレイヤーまでのベクトルを求める
	CVector vp = PLAYER_INSTANCE->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	// バックステップする距離
	const float backStepDistance = 15.0f;

	CVector playerPos = PLAYER_INSTANCE->Position();
	CVector soldierPos = Position();
	CVector toPlayer = (playerPos - soldierPos).Normalized();

	Position(Position() - toPlayer * backStepDistance * Time::DeltaTime());
	if (IsAnimationFinished())
	{
		ChangeState(EState::eChase);
	}
}

// プレイヤーの攻撃Hit状態
void CSoldier::UpdateHit()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	ChangeAnimation(EAnimType::eHit);
	if (IsAnimationFinished())
	{
		// プレイヤーまでのベクトルを求める
		CVector vp = PLAYER_INSTANCE->Position() - Position();
		float distancePlayer = vp.Length();
		vp.Y(0.0f);
		mTargetDir = vp.Normalized();

		// HPが1より大きければ生存
		if (mCharaStatus.hp >= 1)
		{
			ChangeState(EState::eChase);
		}
		// 死亡
		else if (mCharaStatus.hp <= 0)
		{
			// コライダーオフ
			mpDamageCol->SetEnable(false);
			ChangeState(EState::eDeth);
		}
	}
}

// 死亡状態
void CSoldier::UpdateDeth()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	ChangeAnimation(EAnimType::eDeth);
	if (IsAnimationFinished())
	{
		ChangeState(EState::eDethEnd);
	}
}

// 死亡処理終了状態
void CSoldier::UpdateDethEnd()
{
	if (IsAnimationFinished())
	{
		Kill();
	}
}

// 更新処理
void CSoldier::Update()
{
	SetParent(mpRideObject);
	mpRideObject = nullptr;

	// キックの待ち時間
	KickWaitTime();
	// バックステップの待ち時間
	BackStepWaitTime();
	// プレイヤーを発見した後の待ち時間
	DiscoveryWaitTime();
	
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
		// 攻撃状態
	case EState::eAttack:
		UpdateAttack();
		break;
		// 攻撃終了待ち状態
	case EState::eAttackWait:
		UpdateAttackWait();
		break;
		// キック状態
	case EState::eKick:
		UpdateKick();
		break;
		// キック終了状態
	case EState::eKickWait:
		UpdateKickWait();
		break;
		// エイム解除状態
	case EState::eAimDwon:
		UpdateAimDwon();
		break;
		// プレイヤー発見状態
	case EState::eDiscovery:
		UpdateDiscovery();
		break;
		// 追跡状態
	case EState::eChase:
		UpdateChase();
		break;
		// 徘徊処理状態
	case EState::eWander:
		UpdateWander();
		break;
		// バックステップ状態
	case EState::eBackStep:
		UpdateBackStep();
		break;
		// プレイヤーの攻撃Hit状態
	case EState::eHit:
		UpdateHit();
		break;
		// 死亡状態
	case EState::eDeth:
		UpdateDeth();
		break;
		// 死亡処理終了状態
	case EState::eDethEnd:
		UpdateDethEnd();
		break;
	}

	// 準備状態ではないときの処理
	if (mState != EState::eReady)
	{
		mMoveSpeed -= CVector(0.0f, GRAVITY, 0.0f);

		// 移動
		Position(Position() + mMoveSpeed * 60.0f * Time::DeltaTime());

		// ソルジャーを移動方向へ向ける
		CVector current = VectorZ();
		CVector target = mTargetDir;
		CVector forward = CVector::Slerp(current, target, 0.125f);
		Rotation(CQuaternion::LookRotation(forward));
	}

	// フレームとゲージの表示処理
	UpdateGaugeAndFrame();
	// ビックリマークの表示処理
	UpdateExclamation();

	// 現在のHpを設定
	mpGauge->SetValue(mCharaStatus.hp);

	// ソルジャーの更新
	CXCharacter::Update();
	mpDamageCol->Update();
	mpAttackCol->Update();
	mpGun->UpdateAttachMtx();

	mIsGrounded = false;
}

// 描画処理
void CSoldier::Render()
{
	CXCharacter::Render();
}