#include "CVanguard.h"
#include "Maths.h"
#include "CPlayer.h"
#include "CInput.h"
#include "CKick.h"
#include "CEnemyManager.h"
#include "CExclamationMark.h"
#include "CStageManager.h"
#include "CVanguardGauge.h"
#include "CMajicSwordEnemy.h"
#include "CScore.h"
#include "CGameManager.h"

#define _USE_MATH_DEFINES

// ヴァンガード関連
// ヴァンガードの頭上
#define VANGUARD_HEIGHT 8.0f
// 移動速度
#define MOVE_SPEED 0.8f
// 自動移動速度
#define MOVE_AUTOMATIC_SPEED 40.0f
// ジャンプ速度
#define JUMP_SPEED 1.5f
// 重力加速度
#define GRAVITY 0.0625f


// 追従時の移動速度
// 視野の角度
#define FOV_ANGLE 100.0f
// プレイヤーまでの距離
#define ATTACK_RANGE 70.0f
// プレイヤーまでの距離(キック)
#define ATTACK_RANGE_KICK 25.0f
// プレイヤーまでの距離(バックステップ)
#define BACKSTEP_RANGE 24.0f


// HP関連
#define HP 5
// レベル関連
#define LEVEL 1
// 攻撃力関連
#define ATTACK 10


// 敵を見失った後の時間
#define PLAYER_LOST 10.0f

// キックコライダーの時間
#define KICKCOL 10.0f

// プレイヤーを発見した後の時間
#define DISCOVERY 2.0f
// プレイヤーを発見した後の待ち時間
#define DISCOVERY_END 40.0f
// 回避の待ち時間
#define ROLLING_END 30.0f

// CVanguardのインスタンス
CVanguard* CVanguard::spInstance = nullptr;

int CVanguard::sScore = 0;

CVanguard* CVanguard::Instance()
{
	return spInstance;
}

void CVanguard::SetScore(int score)
{
	sScore = score;
}

int CVanguard::GetScore()
{
	return sScore;
}

//Vanguard_Walk_1_86
// CVanguardのアニメーションデータのテーブル
const CVanguard::AnimData CVanguard::ANIM_DATA[] =
{
	{ "",																	true,	  0.0f	},	// Tポーズ
	{"Character\\Vanguard\\anim\\Vanguard_Idle_1_111.x",				false,		111.0f	},	// 待機状態1
	{"Character\\Vanguard\\anim\\Vanguard_Idle_2_676.x",				false,		676.0f	},	// 待機状態2
	{"Character\\Vanguard\\anim\\Vanguard_Walk_1_82.x",						true,	 82.0f  },	// 移動状態1
	//{"Character\\Vanguard\\anim\\Vanguard_WalkBack_1_78.x",					true,    78.0f	},	// 後ろ移動1
	{"Character\\Vanguard\\anim\\Vanguard_Walk Mutant_1_86.x",				true,	 86.0f  },	// 怪物歩き
	{"Character\\Vanguard\\anim\\Vanguard_Walk Weapon_1_80.x",				true,	 80.0f  },	// 武器歩き
	{"Character\\Vanguard\\anim\\Vanguard_ShieldWalk_1_66.x",				true,    77.0f	},	// 盾歩き
	{"Character\\Vanguard\\anim\\Vanguard_ShieldBackWalk_1_76.x",			true,    76.0f	},	// 盾後ろ歩き1
	{"Character\\Vanguard\\anim\\Vanguard_Run Back Shield_1_17.x",			true,	 17.0f	},	// 盾後ろ歩き2
	{"Character\\Vanguard\\anim\\Vanguard_Run_1_43.x",						true,	 43.0f	},	// ダッシュ状態
	{"Character\\Vanguard\\anim\\Vanguard_Walk Brisk_1_45.x",				true,	 45.0f  },	// 小走り
	{"Character\\Vanguard\\anim\\Vanguard_Run Shield_1_22.x",				true,	 22.0f	},	// 盾走り
	{"Character\\Vanguard\\anim\\Vanguard_Jump_1_114.x",					true,	114.0f	},	// ジャンプ
	{"Character\\Vanguard\\anim\\Vanguard_RunDash_1_84.x",					true,	 84.0f	},	// 走りジャンプ
	{"Character\\Vanguard\\anim\\Vanguard_RunDash_1_26.x",					true,    26.0f	},	// ダッシュジャンプ
	{"Character\\Vanguard\\anim\\Vanguard_StandUp_1_38.x",				false,		 38.0f	},	// 立ち上がる
	{"Character\\Vanguard\\anim\\Vanguard_IdleWeapon_1_111.x",			false,		111.0f	},	// 武器持待機	
	{"Character\\Vanguard\\anim\\Vanguard_Attack Spin_1_105.x",			false,		105.0f	},	// スピン攻撃1
	{"Character\\Vanguard\\anim\\Vanguard_Spin Attack_2_191.x",			false,		191.0f	},	// スピン攻撃2
	{"Character\\Vanguard\\anim\\Vanguard_Attack Swing Up_1_191.x",		false,		191.0f	},	// 振り上げ攻撃1
	{"Character\\Vanguard\\anim\\Vanguard_Attacks 3_1_219.x",			false,		219.0f	},	// 3連攻撃
	{"Character\\Vanguard\\anim\\Vanguard_Attack Kick_1_112.x",			false,		112.0f	},	// 右足キック
	{"Character\\Vanguard\\anim\\Vanguard_Attack Jump Dash_1_221.x",	false,		221.0f	},	// ジャンプ攻撃1
	{"Character\\Vanguard\\anim\\Vanguard_Attack Run Jump_1_140.x",		false,		140.0f	},	// ジャンプ攻撃2
	{"Character\\Vanguard\\anim\\Vanguard_Sword Back Drawn_1_38.x",		false,		 38.0f	},	// 武器を後ろにしまう1
	{"Character\\Vanguard\\anim\\Vanguard_Sheathing of Sword_1_103.x",	false,		103.0f	},	// 武器を後ろにしまう2
	{"Character\\Vanguard\\anim\\Vanguard_Shield_1_84.x",					true,	 84.0f	},	// 盾構え
	{"Character\\Vanguard\\anim\\Vanguard_Sword Guard_1_111.x",				true,	111.0f  },	// 武器防御
	{"Character\\Vanguard\\anim\\Vanguard_Sword Draw_1_46.x",			false,		 46.0f  },	// 武器を取り出す1
	{"Character\\Vanguard\\anim\\Vanguard_Sword Quick Draw_1_75.x",		false,		 75.0f  },	// 武器を取り出す2
	{"Character\\Vanguard\\anim\\Vanguard_Sword Back Drawn_2_101.x",	false,		101.0f	},	// 武器後ろから取り出す
	{"Character\\Vanguard\\anim\\Vanguard_Rolling_1_86.x",				false,		86.0f	},	// 回避行動
	{"Character\\Vanguard\\anim\\Vanguard_Hit Lean Back_1_43.x",		false,		 43.0f	},	// 微ダメージ1
	{"Character\\Vanguard\\anim\\Vanguard_Hit Slight_1_63.x",			false,		 63.0f	},	// 微ダメージ2
	{"Character\\Vanguard\\anim\\Vanguard_Hit Slight_2_96.x",			false,		 96.0f	},	// 微ダメージ3
	{"Character\\Vanguard\\anim\\Vanguard_GutsPose_1_72.x",				false,		 72.0f	},	// ガッツポーズ1
	{"Character\\Vanguard\\anim\\Vanguard_GutsPose_2_171.x",			false,		171.0f	},	// ガッツポーズ2	
	{"Character\\Vanguard\\anim\\Vanguard_Lose Sight of_1_221.x",			true,	221.0f	},	// 見失い状態
	{"Character\\Vanguard\\anim\\Vanguard_Pointing_1_62.x",				false,		 62.0f	},	// 指さし
	{"Character\\Vanguard\\anim\\Vanguard_Death_2_138.x",				false,		138.0f	},	// 死亡1anim\Vanguard_WalkBack_1_78
};

// コンストラクタ
CVanguard::CVanguard()
	: CXCharacter(ETag::eEnemy, ETaskPriority::eEnemy)
	, mState(EState::eIdle)
	, mElapsedTime(0.0f)
	, mElapsedTime_End(0.0f)
	, mKickTime(0.0f)
	, mBackStepTime(0.0f)
	, mDiscoveryTime(0.0f)
	, mDiscoveryTime_End(0.0f)
	, mTimeRolling(0.0f)
	, mTargetDir(0.0f, 0.0f, 1.0f)
	, mMoveVector(0.0f, 0.0f, 0.0f)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mInitialPosition(0.0f, 0.0f, 0.0f)
	, mTimeToChange(Math::Rand(1.0f, 5.0f))
	, mIsGrounded(false)
	, mKickTimeEnd(false)
	, mDiscovery(false)
	, mDiscoveryEnd(false)
	, mRollingEnd(false)
	, mDamage(false)
	, mpRideObject(nullptr)
{
	// インスタンスの設定
	spInstance = this;

	sScore;

	// 初期位置の保存
	mInitialPosition = Position();

	// ソルジャーの数を取得
	CEnemyManager::IncrementVanguardCount();

	// モデルデータ取得
	CModelX* model = CResourceManager::Get<CModelX>("Vanguard");

	// HPゲージを作成
	mpGauge = new CVanguardGauge();
	mpGauge->SetShow(true);
	// ビックリマーク設定
	mpExclamationMark = new CExclamationMark();
	mpExclamationMark->SetCeneterRatio(CVector2(0.3f, 0.5f));

	// テーブル内のアニメーションデータを読み込み
	int size ARRAY_SIZE(ANIM_DATA);
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
	mpColliderLine = new CColliderLine
	(
		this, ELayer::eField,
		CVector(0.0f, 0.0f, 0.0f),
		CVector(0.0f, VANGUARD_HEIGHT, 0.0f)
	);
	mpColliderLine->SetCollisionLayers({ ELayer::eField });

	// 一時的な当たり判定を取るコライダー
	mpColliderSphere = new CColliderSphere
	(
		this, ELayer::eEnemy,
		7.0f
	);
	mpColliderSphere->SetCollisionLayers({ ELayer::eFieldWall ,ELayer::eField, ELayer::eFieldEnemyWall, ELayer::ePlayer });
	mpColliderSphere->Position(0.0f, 5.0f, 1.0f);

	// ダメージを受けるコライダー
	mpDamageCol = new CColliderSphere
	(
		this, ELayer::eDamageCol,
		0.5f
	);
	// ダメージを受けるコライダーと
	// 衝突判定を行うコライダーのレイヤーとタグを設定
	mpDamageCol->SetCollisionLayers({ ELayer::eAttackCol, ELayer::eDamageCol,ELayer::eEnemy });
	mpDamageCol->SetCollisionTags({ ETag::eWeapon, ETag::eEnemy, ETag::eSlash });
	// ダメージを受けるコライダーを少し下へずらす
	mpDamageCol->Position(0.0f, 0.0f, 0.0f);
	const CMatrix* spineMtx = GetFrameMtx("Armature_mixamorig_Spine1");
	mpDamageCol->SetAttachMtx(spineMtx);

	// ダメージを与えるコライダー
	mpAttackCol = new CColliderSphere
	(
		this, ELayer::eKickCol,
		0.3f
	);
	mpAttackCol->SetCollisionLayers({ ELayer::eDamageCol });
	mpAttackCol->SetCollisionTags({ ETag::ePlayer });
	mpAttackCol->SetEnable(false);
	// 右足
	const CMatrix* spineMtxK = GetFrameMtx("Armature_mixamorig_RightToeBase");
	mpAttackCol->SetAttachMtx(spineMtxK);

	mKickTimeEnd = false;

	// マジックソード作成
	mpSword = new CMajicSwordEnemy();
	mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_RightHandMiddle1"));
	mpSword->SetOwner(this);
	mpSword->SetAlpha(0.0f);


	// 最初に1レベルに設定
	ChangeLevel(1);
}

// デストラクタ
CVanguard::~CVanguard()
{
	spInstance = nullptr;
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);

	// コライダー関連の破棄
	SAFE_DELETE(mpColliderLine);
	SAFE_DELETE(mpColliderSphere);
	SAFE_DELETE(mpDamageCol);
	SAFE_DELETE(mpAttackCol);

	// ヴァンガードのカウントを破棄
	CEnemyManager::DecrementVanguardCount();

	// UI周りを破棄
	mpGauge->Kill();
	mpExclamationMark->Kill();

	// マジックソード破棄
	mpSword->Kill();
}

// 衝突処理
void CVanguard::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 乗れるコライダー
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
	// カプセルコライダができるまでのコライダー
	if (self == mpColliderSphere)
	{
		if (other->Layer() == ELayer::eFieldWall)
		{
			Position(Position() + hit.adjust); //+ hit.adjust * hit.weight

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
		else if (other->Layer() == ELayer::ePlayer)
		{
			Position(Position() + hit.adjust);
		}
	}

	// ダメージを受けるコライダー
	if (self == mpDamageCol)
	{
		if (other->Layer() == ELayer::eAttackCol)
		{
			bool hit = mState != EState::eAttacks3;
			bool hit1 = mState != EState::eAttackSpin1;
			bool hit2 = mState != EState::eAttackSpin2;
			bool hit3 = mState != EState::eAttackSwing;
			if (hit || hit1 || hit2 || hit3)
			{
				// プレイヤーのポインタが0以外の時
				CPlayer* player = CPlayer::Instance();

				// プレイヤーまでのベクトルを求める
				CVector vp = player->Position() - Position();
				float distancePlayer = vp.Length();
				vp.Y(0.0f);
				mTargetDir = vp.Normalized();

				int hitRand = Math::Rand(0, 100);
				//CDebugPrint::Print("hit1:%d\n", hitRand);
				if (hitRand >= 90)
				{
					int random = Math::Rand(0, 2);
					if (random == 0)
					{
						mpDamageCol->SetEnable(false);
						ChangeState(EState::eHitSlight1);
					}
					else if (random == 1)
					{
						mpDamageCol->SetEnable(false);
						ChangeState(EState::eHitSlight2);
					}
					else if (random == 2)
					{
						mpDamageCol->SetEnable(false);
						ChangeState(EState::eHitSlight3);
					}
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
void CVanguard::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// 被ダメージ処理
void CVanguard::TakeDamage(int damage)
{
	mCharaStatus.hp -= damage;

	// HPが0になったら
	if (mCharaStatus.hp <= 0)
	{
		ChangeState(EState::eDeath);
	}
}

// レベルアップ
void CVanguard::LevelUp()
{
	int level = mCharaStatus.level;
	ChangeLevel(level + 1);
}

// レベルを変更
void CVanguard::ChangeLevel(int level)
{
	// ステータスのテーブルのインデックス値に変更
	int index = Math::Clamp(level - 1, 0, VANGUARD_LEVEL_MAX);
	// 最大ステータスに設定
	mCharaMaxStatus = VANGUARD_STATUS[index];
	// 現在のステータスを最大値にすることで、HP回復
	mCharaStatus = mCharaMaxStatus;

	//最大HPと現在HPをHPゲージに反映
	mpGauge->SetMaxValue(mCharaMaxStatus.hp);
	mpGauge->SetValue(mCharaStatus.hp);
}

// ヴァンガードの方向をランダムに変更する処理
void CVanguard::ChangeDerection()
{
	// ランダムな方向に変更
	// ランダムな角度を求める
	float randomAngle = Math::Rand(0.0f, 1.0f) * 360.0f;
	// 方向の計算を角度に代入
	mTargetDir = CalculateDirection(randomAngle);
}

// フレームとHPゲージの表示の確認をする処理
void CVanguard::UpdateGaugeAndFrame()
{
	if (!mDiscovery && mpExclamationMark && IsFoundPlayer())
	{
		mpGauge->SetShow(true);
	}
	else
	{
		mpGauge->SetShow(false);
	}
}

// ビックリマークの表示の確認をする処理
void CVanguard::UpdateExclamation()
{
	if (mDiscovery)
	{
		// ビックリマーク画像の座標を更新
		CVector exclamationMardPos = Position() + CVector(0.0f, 35.0f, 0.0f);
		mpExclamationMark->SetWorldPos(exclamationMardPos);
	}
	else
	{
		mpExclamationMark->SetShow(false);
	}
}

// 待機状態遷移する条件
bool CVanguard::ShouldTransitionWander()
{
	float randomValue = Math::Rand(0.0f, 1.0f) * M_PI;
	return randomValue < 0.01f;
}

// 徘徊状態に遷移する条件
bool CVanguard::ShouldTransition()
{
	float randomValue = Math::Rand(0.0f, 1.0f) * M_PI;
	return randomValue < 0.1f;  // 0.1%の確率で徘徊状態に遷移
}

// 360度の角度を求めて、x軸とy軸から計算する
CVector CVanguard::CalculateDirection(float angleDegrees)
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
void CVanguard::Move()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	// mMoveSpeedは敵の速度ベクトル、mMoveSpeed.X()がX軸方向の速度
	// 適切な速度を設定し、mMoveSpeedをmTargetDirにスケーリングして移動。
	// 速度を設定
	float moveSpeed = MOVE_AUTOMATIC_SPEED;

	// mTargetDir に速度を掛けて移動ベクトルを得る
	CVector moveVector = mTargetDir * moveSpeed;

	// deltaTime を考慮して移動量を計算
	moveVector *= Time::DeltaTime();

	// 現在の座標を更新
	Position(Position() + moveVector + mMoveSpeed);
}

// アニメーション切り替え
void CVanguard::ChangeAnimation(EAnimType type)
{
	if (!(EAnimType::None < type && type < EAnimType::Num)) return;
	AnimData data = ANIM_DATA[(int)type];
	CXCharacter::ChangeAnimation((int)type, data.loop, data.frameLength);
}
// 準備中の状態
void CVanguard::UpdateReady()
{
	// ステップごとに処理を切り替える
	switch (mStateStep)
	{
		// ステップ0 初期化処理
	case 0:
		ChangeAnimation(EAnimType::eIdle1);
		// 全ての衝突判定をオフにする
		SetEnableCol(false);
		// ヴァンガードの移動速度を0にする
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
			// ヴァンガードの衝突判定をオンにする
			SetEnableCol(true);
			// 現在の状態を待機に切り替え
			mCharaStatus.hp = mCharaMaxStatus.hp;
			ChangeState(EState::eIdle);
		}
		break;
	}
}


// 待機
void CVanguard::UpdateIdle()
{
	mDiscovery = false;
	mDamage = false;
	mpAttackCol->SetEnable(false);
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	//プレイヤーを見つけたら、敵発見状態へ移行
	if (IsFoundPlayer())
	{
		if (mDiscoveryTime_End <= DISCOVERY_END)
		{
			ChangeState(EState::eDiscovery);
		}
		else
		{
			ChangeState(EState::eChase);
		}
	}
	//else
	//{
	//	int random = Math::Rand(0, 10);

	//	if (random >= 0 && random <= 5 && IsAnimationFinished())
	//	{
	//		ChangeAnimation(EAnimType::eIdle1);
	//		if (IsAnimationFinished())
	//		{
	//			// 確率で徘徊状態に移行
	//			if (ShouldTransition())
	//			{
	//				ChangeState(EState::eWander);
	//			}
	//		}
	//	}
	//	else if (random >= 6 && random <= 10 && IsAnimationFinished())
	//	{
	//		ChangeAnimation(EAnimType::eIdle2);
	//		if (IsAnimationFinished())
	//		{
	//			// 確率で徘徊状態に移行
	//			if (ShouldTransition())
	//			{
	//				ChangeState(EState::eWander);
	//			}
	//		}
	//	}
	//}
}

// 移動状態
void CVanguard::UpdateWalk()
{
}

// 怪物歩き状態
void CVanguard::UpdateWalkMutant()
{
}

// 移動状態(武器持ち)
void CVanguard::UpdateWalkWeapon()
{
}

// 移動状態(盾持ち)
void CVanguard::UpdateWalkShield()
{
}

// 移動状態(盾持ち後ろ歩き1)
void CVanguard::UpdateWalkBackShield1()
{
}

// 移動状態(盾持ち後ろ歩き2)
void CVanguard::UpdateWalkBackShield2()
{
}

// ダッシュ状態
void CVanguard::UpdateDash()
{
}

// 小走り状態
void CVanguard::UpdateDashBrisk()
{
}

// 盾走り状態
void CVanguard::UpdateDashShield()
{
}

// ダッシュ終了
void CVanguard::UpdateDashEnd()
{
}

// 回避行動
void CVanguard::UpdateRolling()
{
	mpDamageCol->SetEnable(false);
	mRollingEnd = true;
	/*CDebugPrint::Print("mMoveVector :%f\n", mMoveVector.Z());
	CDebugPrint::Print("mTargetDir :%f\n", mTargetDir.Z());*/
	ChangeAnimation(EAnimType::eRolling);

	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	// mMoveSpeedは敵の速度ベクトル、mMoveSpeed.X()がX軸方向の速度
	// 適切な速度を設定し、mMoveSpeedをmTargetDirにスケーリングして移動。
	// 速度を設定
	float moveSpeed = 20.0f;

	// mTargetDir に速度を掛けて移動ベクトルを得る
	CVector moveVector = -mTargetDir * moveSpeed;

	// deltaTime を考慮して移動量を計算
	moveVector *= Time::DeltaTime();

	// 現在の座標を更新
	Position(Position() + moveVector + mMoveSpeed);
	// 移動ベクトルを正規化して向きを取得
	CVector forward = moveVector.Normalized();

	// CSoldierを移動方向へ向ける
	Rotation(CQuaternion::LookRotation(forward));
	if (GetAnimationFrame() >= 50.0f)
	{
		if (IsAnimationFinished())
		{
			// プレイヤーのポインタが0以外の時
			CPlayer* player = CPlayer::Instance();

			// プレイヤーまでのベクトルを求める
			CVector vp = player->Position() - Position();
			float distancePlayer = vp.Length();
			vp.Y(0.0f);
			mTargetDir = vp.Normalized();

			ChangeState(EState::eChase);
		}
	}
}

// ジャンプ開始状態
void CVanguard::UpdateJumpStart()
{
}

// ジャンプ中
void CVanguard::UpdateJump()
{
}

// 走りジャンプ開始状態
void CVanguard::UpdateRunJumpStart()
{
}

// 走りジャンプ中状態
void CVanguard::UpdateRunJump()
{
}

// ダッシュジャンプ開始状態
void CVanguard::UpdateRunDashJumpStart()
{
}

// ダッシュジャンプ中状態
void CVanguard::UpdateRunDashJump()
{
}

// ジャンプ終了
void CVanguard::UpdateJumpEnd()
{
}

// 立ち上がり状態
void CVanguard::UpdateStandUp()
{
}

// 武器持ち待機状態
void CVanguard::UpdateIdleWeapon()
{
}

// 攻撃状態
void CVanguard::UpdateAttack()
{
	mDiscovery = false;
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

		CPlayer* player = CPlayer::Instance();
		CVector playerPos = player->Position();
		playerPos.Y(Position().Y());

		CVector toPlayer = (playerPos - Position()).Normalized();
		mMoveSpeed += toPlayer * 0.25;
		mTargetDir = toPlayer;


		if (distancePlayer <= BACKSTEP_RANGE && !mRollingEnd)
		{
			ChangeState(EState::eRolling);
			return;
		}
		else if (distancePlayer <= ATTACK_RANGE_KICK && !mKickTimeEnd)
		{
			ChangeState(EState::eAttackKick);
			mKickTimeEnd = true;
			return;
		}
		else if (distancePlayer <= 23.0f)
		{
			int random = Math::Rand(0, 4);
			if (random == 0)
			{
				ChangeState(EState::eAttacks3);
			}
			else if (random == 1)
			{
				ChangeState(EState::eAttackSpin1);
			}
			else if (random == 2)
			{
				ChangeState(EState::eAttackSpin2);
			}
			else if (random == 3)
			{
				ChangeState(EState::eAttackSwing);
			}
		}
	}
	else
	{
		ChangeState(EState::eChase);
		mElapsedTime_End = 0.0f;
		mDiscoveryTime = 0.0f;
		mDiscovery = false;
	}
}

// スピン攻撃1
void CVanguard::UpdateAttackSpin1()
{
	mDiscovery = false;
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	ChangeAnimation(EAnimType::eAttackSpin1);
	// プレイヤーのポインタが0以外の時
	CPlayer* player = CPlayer::Instance();

	// プレイヤーまでのベクトルを求める
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	if (GetAnimationFrame() >= 40.0f)
	{
		mpSword->AttackStart();
		if (IsAnimationFinished())
		{
			ChangeState(EState::eAttackEnd);
		}
	}
}

// スピン攻撃2
void CVanguard::UpdateAttackSpin2()
{
	mDiscovery = false;
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	ChangeAnimation(EAnimType::eAttackSpin2);
	// プレイヤーのポインタが0以外の時
	CPlayer* player = CPlayer::Instance();

	// プレイヤーまでのベクトルを求める
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	if (GetAnimationFrame() >= 40.0f)
	{
		mpSword->AttackStart();
		if (IsAnimationFinished())
		{
			ChangeState(EState::eAttackEnd);
		}
	}
}

// 振り上げ攻撃
void CVanguard::UpdateAttackSwing()
{
	mDiscovery = false;
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	ChangeAnimation(EAnimType::eAttackSwing);
	// プレイヤーのポインタが0以外の時
	CPlayer* player = CPlayer::Instance();

	// プレイヤーまでのベクトルを求める
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	if (GetAnimationFrame() >= 40.0f)
	{
		mpSword->AttackStart();
		if (IsAnimationFinished())
		{
			ChangeState(EState::eAttackEnd);
		}
	}
}

// 3連攻撃
void CVanguard::UpdateAttacks3()
{
	mDiscovery = false;
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	ChangeAnimation(EAnimType::eAttacks3);
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
			mpAttackCol->SetEnable(true);
			ChangeState(EState::eAttackEnd);
		}
	}
}

// キック
void CVanguard::UpdateAttackKick()
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

	ChangeAnimation(EAnimType::eAttackKick);
	if (mAnimationFrame >= 45.0f)
	{
		mpAttackCol->SetEnable(true);
		ChangeState(EState::eAttackKickEnd);
	}
}

// キック終了
void CVanguard::UpdateAttackKickEnd()
{
	mpAttackCol->SetEnable(false);
	if (IsAnimationFinished())
	{
		ChangeState(EState::eChase);
	}
}

// ジャンプ攻撃1
void CVanguard::UpdateAttackJump1()
{
}

// ジャンプ攻撃2
void CVanguard::UpdateAttackJump2()
{
}

// 攻撃終了待ち
void CVanguard::UpdateAttackEnd()
{
	mpSword->AttackEnd();
	if (IsAnimationFinished())
	{
		ChangeState(EState::eChase);
	}
}

// 武器を後ろにしまう1
void CVanguard::UpdateSwordSheathing1()
{
	ChangeAnimation(EAnimType::eSwordSheathing1);
	if (IsAnimationFinished())
	{
		ChangeState(EState::eIdle);
	}
}

// 武器を後ろにしまう2
void CVanguard::UpdateSwordSheathing2()
{
	if (IsAnimationFinished())
	{
		ChangeState(EState::eIdle);
	}
}

// 盾構え
void CVanguard::UpdateShield()
{
}

// 武器防御
void CVanguard::UpdateSwordGuard()
{
}

// 武器を取り出す1
void CVanguard::UpdateSwordDrawn1()
{
	ChangeAnimation(EAnimType::eSwordDrawn1);
	if (GetAnimationFrame() >= 20.0f)
	{
		// マジックソード作成
		mpSword->SetAlpha(1.0f);
	}

	if (IsAnimationFinished())
	{
		ChangeState(EState::eChase);
	}
}

// 武器を取り出す2
void CVanguard::UpdateSwordDrawn2()
{
	ChangeAnimation(EAnimType::eSwordDrawn2);
	if (GetAnimationFrame() >= 60.0f)
	{
		// マジックソード作成
		mpSword->SetAlpha(1.0f);
	}

	if (IsAnimationFinished())
	{
		ChangeState(EState::eChase);
	}
}

// 武器を後ろから取り出す
void CVanguard::UpdateSwordBackDrawn()
{
	ChangeAnimation(EAnimType::eSwordBackDrawn);
	if (GetAnimationFrame() >= 90.0f)
	{
		// マジックソード作成
		mpSword->SetAlpha(1.0f);
	}

	if (IsAnimationFinished())
	{
		ChangeState(EState::eChase);
	}
}

// 微ダメージ1
void CVanguard::UpdateHitSlight1()
{
	// ダメージを受けた時は移動を停止
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	mpSword->AttackEnd();

	ChangeAnimation(EAnimType::eHitSlight1);

	if (IsAnimationFinished())
	{
		mpSword->SetAlpha(1.0f);
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
			mDamage = false;
			ChangeState(EState::eChase);
		}
		else if (mCharaStatus.hp <= 0)
		{
			mpDamageCol->SetEnable(false);
			ChangeState(EState::eDeath);
		}
	}
}

// 微ダメージ2
void CVanguard::UpdateHitSlight2()
{
	// ダメージを受けた時は移動を停止
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	mpSword->AttackEnd();

	ChangeAnimation(EAnimType::eHitSlight2);

	if (IsAnimationFinished())
	{
		mpSword->SetAlpha(1.0f);
		// プレイヤーのポインタが0以外の時
		CPlayer* player = CPlayer::Instance();

		// プレイヤーまでのベクトルを求める
		CVector vp = player->Position() - Position();
		float distancePlayer = vp.Length();
		vp.Y(0.0f);
		mTargetDir = vp.Normalized();

		if (mCharaStatus.hp >= 1)
		{
			if (IsAnimationFinished())
			{
				mpDamageCol->SetEnable(true);
				mDamage = false;
				ChangeState(EState::eChase);
			}
		}
		else if (mCharaStatus.hp <= 0)
		{
			mpDamageCol->SetEnable(false);
			ChangeState(EState::eDeath);
		}
	}
}

// 微ダメージ3
void CVanguard::UpdateHitSlight3()
{
	// ダメージを受けた時は移動を停止
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	mpSword->AttackEnd();

	ChangeAnimation(EAnimType::eHitSlight3);

	if (IsAnimationFinished())
	{
		mpSword->SetAlpha(1.0f);
		// プレイヤーのポインタが0以外の時
		CPlayer* player = CPlayer::Instance();

		// プレイヤーまでのベクトルを求める
		CVector vp = player->Position() - Position();
		float distancePlayer = vp.Length();
		vp.Y(0.0f);
		mTargetDir = vp.Normalized();

		if (mCharaStatus.hp >= 1)
		{
			if (IsAnimationFinished())
			{
				mpDamageCol->SetEnable(true);
				mDamage = false;
				ChangeState(EState::eChase);
			}
		}
		else if (mCharaStatus.hp <= 0)
		{
			mpDamageCol->SetEnable(false);
			ChangeState(EState::eDeath);
		}
	}
}

// ガッツポーズ1
void CVanguard::UpdateGutsPose1()
{
}

// ガッツポーズ2
void CVanguard::UpdateGutsPose2()
{
}

// プレイヤー発見
void CVanguard::UpdateDiscovery()
{
	mDiscovery = true;
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	ChangeState(EState::ePointing);
}

// 追跡
void CVanguard::UpdateChase()
{
	mpSword->SetAlpha(1.0f);
	mDiscovery = false;
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	if (!IsFoundPlayer())
	{
		ChangeState(EState::eLoseSight);
	}
	else
	{
		ChangeAnimation(EAnimType::eDashBrisk);
		mElapsedTime_End = 0.0f;
		CPlayer* player = CPlayer::Instance();
		CVector playerPos = player->Position();
		playerPos.Y(Position().Y());

		CVector toPlayer = (playerPos - Position()).Normalized();
		mMoveSpeed += toPlayer * MOVE_SPEED;
		mTargetDir = toPlayer;

		// プレイヤーとの距離が一定範囲以内であれば攻撃モードに切り替える
		float distanceToPlayer = (player->Position() - Position()).Length();

		if (distanceToPlayer <= 35.0f)
		{
			ChangeState(EState::eAttack);
		}
	}
}

// 徘徊処理
void CVanguard::UpdateWander()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);

	mDiscovery = false;
	mpAttackCol->SetEnable(false);
	ChangeAnimation(EAnimType::eWalkMutant);

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
		if (mDiscoveryTime_End <= DISCOVERY_END)
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
			ChangeState(EState::eIdle);
		}
	}
}

// 見失い状態
void CVanguard::UpdateLoseSight()
{
	ChangeAnimation(EAnimType::eLoseSight);
	mElapsedTime_End += Time::DeltaTime();
	//CDebugPrint::Print("TimeEnd%f\n", mElapsedTime_End);

	if (IsFoundPlayer())
	{
		ChangeState(EState::eChase);
	}

	if (!IsFoundPlayer() && IsAnimationFinished())
	{
		if (mElapsedTime_End >= PLAYER_LOST)
		{
			ChangeState(EState::eSwordSheathing1);
			mpSword->SetAlpha(0.0f);
			mElapsedTime_End = 0.0f; // プレイヤーが視界から消えたら経過時間をリセット
		}
	}
	//CDebugPrint::Print("ElapsedTIme:%f\n", mElapsedTime_End);
}

// 指さし
void CVanguard::UpdatePointing()
{
	// プレイヤーまでのベクトルを求める
	CPlayer* player = CPlayer::Instance();
	CVector vp = player->Position() - Position();
	float distancePlayer = vp.Length();
	vp.Y(0.0f);
	mTargetDir = vp.Normalized();

	ChangeAnimation(EAnimType::ePointing);
	if (IsAnimationFinished())
	{
		ChangeState(EState::eSwordBackDrawn);
	}

	mDiscoveryTime += Time::DeltaTime();
	if (mDiscoveryTime >= DISCOVERY)
	{
		if (IsFoundPlayer() && GetAnimationFrame() >= 50.0f)
		{
			mDiscovery = false;
			mDiscoveryEnd = true;
			ChangeState(EState::eChase);
		}
		else
		{
			mDiscovery = false;
			mDiscoveryTime = 0.0f;
			ChangeState(EState::eIdleWeapon);
		}
	}
	//CDebugPrint::Print("discovery:%f\n", mDiscoveryTime);
}

// 死亡
void CVanguard::UpdateDeath()
{
	mpDamageCol->SetEnable(false);
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	ChangeAnimation(EAnimType::eDeath);
	if (IsAnimationFinished())
	{
		ChangeState(EState::eDeathEnd);
	}
}

// 死亡処理終了
void CVanguard::UpdateDeathEnd()
{
	if (IsAnimationFinished())
	{
		sScore += 100;
		Kill();
	}
}

// プレイヤー追跡
bool CVanguard::IsFoundPlayer() const
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
void CVanguard::Update()
{
	mpDamageCol->SetEnable(true);
	mpAttackCol->SetEnable(false);
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
	//CDebugPrint::Print("kickTime%f\n", mKickTime);

	// プレイヤーを発見した後の時間の計測
	if (mDiscoveryTime_End <= DISCOVERY_END && mDiscoveryEnd)
	{
		mDiscoveryTime_End += Time::DeltaTime();
		if (mDiscoveryTime_End >= DISCOVERY_END)
		{
			mDiscoveryEnd = false;
			mDiscoveryTime_End = 0.0f;
		}
	}
	//CDebugPrint::Print("discoveryTimeEnd:%f\n", mDiscoveryTime_End);

	// 回避の時間の計測
	if (mTimeRolling <= ROLLING_END && mRollingEnd)
	{
		mTimeRolling += Time::DeltaTime();
		if (mTimeRolling >= ROLLING_END)
		{
			mRollingEnd = false;
			mTimeRolling = 0.0f;
		}
	}

	// 状態に合わせて、更新処理を切り替える
	switch (mState)
	{
		// 待機状態
	case EState::eReady:
		UpdateReady();
		break;
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// 移動状態
	case EState::eWalk:
		UpdateWalk();
		break;
		// 怪物歩き状態
	case EState::eWalkMutant:
		UpdateWalkMutant();
		break;
		// 武器歩き状態
	case EState::eWalkWeapon:
		UpdateWalkWeapon();
		break;
		// 盾歩き
	case EState::eWalkShield1:
		UpdateWalkShield();
		break;
		// 盾後ろ歩き1
	case EState::eWalkBackShield1:
		UpdateWalkBackShield1();
		break;
		// 盾後ろ歩き2
	case EState::eWalkBackShield2:
		UpdateWalkBackShield2();
		break;
		// 走る
	case EState::eDash:
		UpdateDash();
		break;
		// 小走り
	case EState::eDashBrisk:
		UpdateDashBrisk();
		break;
		// 盾走り
	case EState::eDashShield:
		UpdateDashShield();
		break;
		// 走り止め
	case EState::eDashEnd:
		UpdateDashEnd();
		break;
		// 回避行動
	case EState::eRolling:
		UpdateRolling();
		break;
		// ジャンプ開始
	case EState::eJumpStart:
		UpdateJumpStart();
		break;
		// ジャンプ中
	case EState::eJump:
		UpdateJump();
		break;
		// 走りジャンプ開始
	case EState::eRunDashJumpStart:
		UpdateRunJumpStart();
		break;
		// 走りジャンプ中
	case EState::eRunDashJump:
		UpdateRunJump();
		break;
		// ダッシュジャンプ開始
	case EState::eDashJumpStart:
		UpdateRunDashJumpStart();
		break;
		// ダッシュジャンプ中
	case EState::eDashJump:
		UpdateRunDashJump();
		break;
		// ジャンプ終了
	case EState::eJumpEnd:
		UpdateJumpEnd();
		break;
		// 立ち上がる
	case EState::eStandUp:
		UpdateStandUp();
		break;
		// 武器持ち待機
	case EState::eIdleWeapon:
		UpdateIdleWeapon();
		break;
	case EState::eAttack:
		UpdateAttack();
		break;
		// スピン攻撃1
	case EState::eAttackSpin1:
		UpdateAttackSpin1();
		break;
		// スピン攻撃2
	case EState::eAttackSpin2:
		UpdateAttackSpin2();
		break;
		// 振り上げ攻撃
	case EState::eAttackSwing:
		UpdateAttackSwing();
		break;
		// 3連攻撃
	case EState::eAttacks3:
		UpdateAttacks3();
		break;
		// 右足キック
	case EState::eAttackKick:
		UpdateAttackKick();
		break;
		// 右足キック終了
	case EState::eAttackKickEnd:
		UpdateAttackKickEnd();
		break;
		// ジャンプ攻撃1
	case EState::eAttackJump1:
		UpdateAttackJump1();
		break;
		// ジャンプ攻撃2
	case EState::eAttackJump2:
		UpdateAttackJump2();
		break;
		// 攻撃終了待ち
	case EState::eAttackEnd:
		UpdateAttackEnd();
		break;
		// 武器を後ろにしまう1
	case EState::eSwordSheathing1:
		UpdateSwordSheathing1();
		break;
		// 武器を後ろにしまう2
	case EState::eSwordSheathing2:
		UpdateSwordSheathing2();
		break;
		// 盾構え
	case EState::eShield:
		UpdateShield();
		break;
		// 武器防御
	case EState::eSwordGuard:
		UpdateSwordGuard();
		break;
		// 武器を取り出す1
	case EState::eSwordDrawn1:
		UpdateSwordDrawn1();
		break;
		// 武器を取り出す2
	case EState::eSwordDrawn2:
		UpdateSwordDrawn2();
		break;
		// 武器を後ろから取り出す
	case EState::eSwordBackDrawn:
		UpdateSwordBackDrawn();
		break;
		// 微ダメージ1
	case EState::eHitSlight1:
		UpdateHitSlight1();
		break;
		// 微ダメージ2
	case EState::eHitSlight2:
		UpdateHitSlight2();
		break;
		// 微ダメージ3
	case EState::eHitSlight3:
		UpdateHitSlight3();
		break;
		// ガッツポーズ1
	case EState::eGutsPose1:
		UpdateGutsPose1();
		break;
		// ガッツポーズ2
	case EState::eGutsPose2:
		UpdateGutsPose2();
		break;
		// プレイヤー発見
	case EState::eDiscovery:
		UpdateDiscovery();
		break;
		// 追跡状態
	case EState::eChase:
		UpdateChase();
		break;
		// 徘徊処理
	case EState::eWander:
		UpdateWander();
		break;
		// 見失い状態
	case EState::eLoseSight:
		UpdateLoseSight();
		break;
		// 指さし
	case EState::ePointing:
		UpdatePointing();
		break;
		// 死亡
	case EState::eDeath:
		UpdateDeath();
		break;
		// 死亡終了
	case EState::eDeathEnd:
		UpdateDeathEnd();
		break;
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

	// フレームとゲージの表示処理
	UpdateGaugeAndFrame();
	// ビックリマークの表示処理
	UpdateExclamation();

	// 現在のHpを設定
	mpGauge->SetValue(mCharaStatus.hp);


	// CSoldierの更新
	CXCharacter::Update();
	mpDamageCol->Update();
	mpAttackCol->Update();
	mpSword->UpdateAttachMtx();

	mIsGrounded = false;

	// 前フレームのFPSを監視
	//CDebugPrint::Print("FPS:%f\n", Time::FPS());

}

// 描画
void CVanguard::Render()
{
	CXCharacter::Render();
}