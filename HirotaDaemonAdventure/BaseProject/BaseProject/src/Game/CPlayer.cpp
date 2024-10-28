//プレイヤークラスのインクルード
#include "CPlayer.h"
#include "CInput.h"
#include "CColliderCapsule.h"
#include "CCamera.h"
#include "CFade.h"
#include "CUiGauge.h"
#include "CStaminaGauge.h"
#include "Maths.h"
#include "CSceneManager.h"
#include "CMajicSword.h"
#include "CBullet.h"
#include "CGameManager.h"
#include "CRecoveryObject.h"
#include "CClimbWall.h"
#include "CWireMeshClimbWall.h"
#include "CWireMeshMoveClimbWall.h"
#include "CMetalLadder.h"
#include "CVanguard.h"
#include "CFlamethrower.h"
#include "CSlash.h"
#include "CSound.h"
#include "CImage.h"
#include "CStageManager.h"
#include "CCutInResult.h"
#include "CCutInClear.h"
#include "CCutInDeath.h"
#include "CCutInResult.h"
#include "CCutInDeathJump.h"
#include "CResultAnnouncement.h"
#include "CScreenItem.h"
#include "CSpikyBallUI.h"
#include "Easing.h"
#include "CStageMenu.h"
#include "CStage1Button.h"
#include "CStage3Button.h"
#include "CBiribiri.h"
#include "CSmoke.h"
#include "CHealingUpBuffs.h"
#include "CInvincibleBuffs.h"
#include "CAttackUpBuffs.h"
#include "CTrailEffect.h"
#include "CMeatUI.h"
#include "CInsideCircleEffect.h"
#include "COutsideCircleEffect.h"
#include "COperationUI.h"
#include "CBullet.h"
#include "CSpikyBall.h"

// プレイヤー関連
// 高さ
#define PLAYER_HEIGHT 16.0f
// スピード
#define MOVE_SPEED 1.1f
// ダッシュジャンプスピード
#define DASH_JUMP_SPEED 2.0f
// 移動スピード
#define RUN_SPEED 1.4f
// ダッシュスピード
#define DASH_SPEED 2.1f
// ジャンプ
#define JUMP_SPEED 1.5f
// 大ジャンプ
#define JUMP_BOUNCE 2.0f
// 超大ジャンプ
#define JUMP_HIGH_BOUNCE 2.5f
// ダッシュジャンプ
#define JUMP_DASH 1.7f
// クリアジャンプ
#define JUMP_CLEAR 2.0f;
// 死亡ジャンプ
#define JUMP_DEATH 2.0f
// スタートジャンプ
#define JUMP_START_STAGE 2.0f
// 目的位置までジャンプ
#define JUMP_TARGET 15.0f
// 重力
#define GRAVITY 0.0625f
// ジャンプ終了時
#define JUMP_END_Y 1.0f

// 指定位置までの移動時間
#define MOVE_TO_TIME 1.0f

// 壁を登る速度
#define CLIMB_SPEED 0.5f
// 壁の頂上へ上るのにかかる時間
#define CLIMBED_TOP_TIME 1.0f
// 金網の頂上へ上るのにかかる時間
#define WIREMESH_TOP_TIEM 0.2f


//視野の角度(ー角度+角度も出)
#define FOV_ANGLE 45.0f
//視野の角度
#define FOV_LENGTH 5.0f


// HP関連
#define HP 100
// レベル関連
#define LEVEL 1
// スタミナ関連
#define STAMINA 150


// その他
// 色を描画する時間
#define COLORSET 0.5f
// ダメージコライダーの計測時間
#define DAMAGECOL 3.0f

// プレイヤーのインスタンス
CPlayer* CPlayer::spInstance = nullptr;

CPlayer* CPlayer::Instance()
{
	return spInstance;
}

// プレイヤーのアニメーションデータのテーブル
const CPlayer::AnimData CPlayer::ANIM_DATA[] =
{
	{ "",															true,	0.0f	},	// Tポーズ
	{ "Character\\Monster1\\anim\\Warrok_Idle.x",					true,	854.0f	},	// 待機
	{ "Character\\Monster1\\anim\\Warrok_Walking.x",				true,	86.0f	},	// 歩行
	{ "Character\\Monster1\\anim\\Warrok_Punchi.x",				false,	50.0f	},		// 攻撃
	{ "Character\\Monster1\\anim\\Warrok_StrongAttack.x",		false,	161.0f	},		// 強攻撃
	{ "Character\\Monster1\\anim\\Warrok_SpinAttack(1)_79.x",	false,	79.0f	},		// ダッシュアタック
	{ "Character\\Monster1\\anim\\jump_start1.x",				false,	25.0f	},		// ジャンプ開始
	{ "Character\\Monster1\\anim\\jump1.x",							true,	1.0f	},	// ジャンプ中
	{ "Character\\Monster1\\anim\\jump_end1.x",					false,	26.0f	},		// ジャンプ終了
	{ "Character\\Monster1\\anim\\Warrok_DashJumpStart_54.x",	false,	54.0f	},		// ダッシュジャンプ開始
	{ "Character\\Monster1\\anim\\Warrok_DashJump_1.x",				true,	1.0f	},	// ダッシュジャンプ
	{ "Character\\Monster1\\anim\\Warrok_DashJumpLoop_22.x",		true,	22.0f	},	// ダッシュジャンプループ
	{ "Character\\Monster1\\anim\\Warrok_DashJumpEnd_13.x",		false,	13.0f	},		// ダッシュジャンプ終了
	{ "Character\\Monster1\\anim\\Dash1_53.x",						true,	53.0f	},	// ダッシュ
	{ "Character\\Monster1\\anim\\Warrok_RunStop.x",			false,	40.0f	},		// ダッシュ終了
	{ "Character\\Monster1\\anim\\Rotate.x",					false,	50.0f	},		// 回避
	{ "Character\\Monster1\\anim\\Guts pose_325.x",				false,	325.0f	},		// ガッツポーズ
	{ "Character\\Monster1\\anim\\Hit_63.x",					false,	63.0f	},		// 敵の攻撃Hit
	{ "Character\\Monster1\\anim\\Hit_107.x",					false,	107.0f	},		// 敵の弱攻撃Hit
	{ "Character\\Monster1\\anim\\Death_276.x",					false,	276.0f	},		// 死亡
	{ "Character\\Monster1\\anim\\Climb_121.x",						true,	121.0f	},	// 壁を登る
	{ "Character\\Monster1\\anim\\Climb_to Top_241.x",				true,	241.0f	},	// 頂上へ登った
	{ "Character\\Monster1\\anim\\Warrok_Falling_643.x",			true,	643.0f	},	// 落下状態
	{ "Character\\Monster1\\anim\\Warrok_Falling Flat_93.x",	false,	93.0f	},		// 落下状態から着地した
	{ "Character\\Monster1\\anim\\Warrok_Stand Up_141.x",		false,	141.0f	},		// 立ち上がる

};

// コンストラクタ
CPlayer::CPlayer()
	: CXCharacter(ETag::ePlayer, ETaskPriority::ePlayer, 0,
		ETaskPauseType::ePlayer)
	, mState(EState::eReady)
	, mInventory(std::map<ItemType, int>())
	, mStateStep(0)
	, mClimbTime(0.0f)
	, mScaleTime(0.0f)
	, mAttackTime(0.0f)
	, mWeaponTime(0.0f)
	, mMoveSpeedY(0.0f)
	, mElapsedTime(0.0f)
	, mSpikTime(0.0f)
	, mHealingTime(0.0f)
	, mReflectTime(0.0f)
	, mMoveDistance(0.0f)
	, mStartDashTime(0.0f)
	, mElapsedTimeEnd(0.0f)
	, mColElapsedTime(0.0f)
	, mInvincibleTime(0.0f)
	, mBlinkElapsedTime(0.0f)
	, mClimbStaminaTime(0.0f)
	, mStageElapsedTime(0.0f)
	, mResultElapsedTime(0.0f)
	, mInvincibleStartTime(10.0f)
	, mSpikRechargeTime(0.0f)
	, mLastPos(CVector::zero)
	, mStartPos(CVector::zero)
	, mMoveSpeed(CVector::zero)
	, mGroundNormal(CVector::up)
	, mClimbNormal(CVector::zero)
	, mReflectionNormal(CVector::zero)
	, mMoveStartPos(CVector::zero)
	, mMoveTargetPos(CVector::zero)
	, mClimbedStartPos(CVector::zero)
	, mClimbedMovedPos(CVector::zero)
	, mClimbedMovedUpPos(CVector::zero)
	, mAttackStrongPos(CVector::zero)
	, mDash(false)
	, mClimb(false)
	, mHpHit(false)
	, mDeath(false)
	, mDamaged(false)
	, mIsDeath(false)
	, mIsAttack(false)
	, mIsJumping(false)
	, mClimbWall(false)
	, mIsDashJump(false)
	, mInvincible(false)
	, mFallDamage(false)
	, mSavePoint1(false)
	, mSavePoint2(false)
	, mStage1Clear(false)
	, mStage2Clear(false)
	, mStage3Clear(false)
	, mStage4Clear(false)
	, mDamageEnemy(false)
	, mStartStage1(false)
	, mStartStage2(false)
	, mStartStage3(false)
	, mStartStage4(false)
	, mClimbWallTop(false)
	, mDamageObject(false)
	, mIsStageClear(false)
	, mIsAttackItem(false)
	, mIsHealingItem(false)
	, mIsStage1Clear(false)
	, mIsStage2Clear(false)
	, mIsStage3Clear(false)
	, mIsStage4Clear(false)
	, mIsStartStage2(false)
	, mIsStartStage3(false)
	, mIsStartStage4(false)
	, mStaminaDepleted(false)
	, mIsPlayedSlashSE(false)
	, mStaminaLowerLimit(false)
	, mIsPlayedHitDamageSE(false)
	, mIsSpawnedSlashEffect(false)
	, mSpikyBall(false)
	, mSpik1(false)
	, mSpik2(false)
	, mpRideObject(nullptr)
	, mpUnderFootObject(nullptr)
	, mpScreenItem(nullptr)
	, mpSpikyBallUI(nullptr)
	, mpMeat(nullptr)
	, mpSpiky1(nullptr)
	, mpSpiky2(nullptr)
{
	ClearItems();
	//, mInventory(std::vector<ItemType>())
	// インスタンスの設定
	spInstance = this;

	// 斬撃SEの再生済みフラグを初期化
	mIsPlayedSlashSE = false;
	// 斬撃エフェクトの生成済みフラグを初期化
	mIsSpawnedSlashEffect = false;

	Position(0.0f, 0.0f, 0.0f);
	mStartPos = Position();

	// モデルデータ取得
	CModelX* model = CResourceManager::Get<CModelX>("Player");

	// スラッシュSE取得
	mpSlashSE = CResourceManager::Get<CSound>("SlashSound");
	// ダメージ時のボイス取得
	mpHitDamageSE = CResourceManager::Get<CSound>("CreatureGrowl1");

	// HPゲージを作成
	mpHpGauge = new CUIGauge();
	mpHpGauge->SetShow(true);
	
	// スタミナゲージを作成
	mpStaminaGauge = new CStaminaGauge();
	mpStaminaGauge->SetShow(true);

	// Tキーの画像表示
	mpClimbUI = new COperationUI("EUI");
	mpClimbUI->SetSize(100.0f, 100.0f);
	mpClimbUI->SetShow(false);

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
	mpColliderLine->SetCollisionLayers({ ELayer::eField,ELayer::eDamageObject, ELayer::eJumpingCol,
		ELayer::eBlockCol });

	// 一時的な当たり判定を取るコライダー
	mpColliderCapsule = new CColliderCapsule
	(
		this, ELayer::ePlayer,
		CVector(0.0f, 8.0f, 2.0f),
		CVector(0.0f, PLAYER_HEIGHT, 2.0f),
		4.0f,
		true,
		1.0f
	);
	mpColliderCapsule->SetCollisionLayers({ ELayer::eFieldWall ,ELayer::eField,
		ELayer::eRecoverCol,ELayer::eInvincbleCol, ELayer::eEnemy, ELayer::eClimb,
		ELayer::eMedalCol,ELayer::eSavePoint1, ELayer::eSavePoint2, ELayer::eAttackCol,
		ELayer::eGoalCol, ELayer::eJumpingCol,ELayer::eFlameWall,ELayer::eMedalCol,
		ELayer::eMeatCol,ELayer::eFall, ELayer::eMetalLadder, ELayer::eReflection,
		ELayer::eReflectionJump});
	mpColliderCapsule->SetCollisionTags({ ETag::eGoalObject,ETag::eMedal, ETag::eField,ETag::eAttackObject,
		ETag::eItemInvincible,ETag::eItemRecover,ETag::eSavePoint1, ETag::eSavePoint2, ETag::eObstacle,ETag::eJumpingObject,
		ETag::eNeedleObject, ETag::eMeat, ETag::eSeesaw, ETag::eFall,ETag::ePropeller, ETag::eReflection});
	//mpColliderCapsule->Position(0.0f, 5.0f, 1.0f);
	

	// プレイヤーのリグに付けるかどうか考え中
	//const CMatrix* spineMtx = GetFrameMtx("Armature_mixamorig_Spine1");
	//mpColliderCapsule->SetAttachMtx(spineMtx);

	// ダメージを受けるコライダーを作成
	mpDamageCol = new CColliderSphere
	(
		this, ELayer::eDamageCol,
		0.9f
	);
	// ダメージを受けるコライダーと
	// 衝突判定を行うコライダーのレイヤーとタグを設定
	mpDamageCol->SetCollisionLayers({ ELayer::eAttackCol, 
		ELayer::eKickCol, ELayer::eBulletCol,ELayer::eNeedleCol,
		ELayer::eFlame, ELayer::eStageMenuObject, ELayer::eBiribiri,
		ELayer::eElectricCol});
	mpDamageCol->SetCollisionTags({ ETag::eEnemyWeapon, 
		ETag::eEnemy, ETag::eBullet,ETag::eRideableObject, ETag::eFlame,
		ETag::eStageMenuObject,ETag::eNeedleObject, ETag::eBiribiri,
		ETag::eEffect});
	// ダメージを受けるコライダーを少し上へずらす
	mpDamageCol->Position(0.0f, 0.0f, 0.0f);
	const CMatrix* spineMtx1 = GetFrameMtx("Armature_mixamorig_Spine1");
	mpDamageCol->SetAttachMtx(spineMtx1);


	// 登れるコライダーとの当たり判定を取るコライダー
	mpClimbCol = new CColliderLine
	(
		this, ELayer::ePlayer,
		CVector(0.0f, PLAYER_HEIGHT, 12.5f),
		CVector(0.0f, PLAYER_HEIGHT, 0.0f)
	);
	mpClimbCol->SetCollisionLayers({ ELayer::eClimb,ELayer::eClimbedTop,
		ELayer::eWireClimb,ELayer::eWireClimbedTop,ELayer::eWireMoveClimb,
		ELayer::eWireMoveClimbedTop,ELayer::eMetalLadder, ELayer::eMetalLadderTop});


	// マジックソード作成
	mpSword = new CMajicSword();
	//mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_RightHand"));
	mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_Spine1"));
	mpSword->SetOwner(this);
	//CStageManager::AddTask(mpSword);

	/*mpFlamethrower = new CFlamethrower
	(
		this, nullptr,
		CVector(0.0f, 14.0f, -1.0f),
		CQuaternion(0.0f, 90.0f, 0.0f).Matrix()
	);
	CStageManager::AddTask(mpFlamethrower);*/

	mpCutInDeath = new CCutInDeath();
	mpCutInClear = new CCutInClear();
	mpCutInResult = new CCutInResult();
	mpCutInDeathJump = new CCutInDeathJump();

	mpScreenItem = new CScreenItem();
	mpMeat = new CMeatUI();
	
	mpSpikyBallUI = new CSpikyBallUI();

	// 最初に1レベルに設定
	ChangeLevel(1);
}

CPlayer::~CPlayer()
{
	//CStageManager::RemoveTask(mpSword);
	//CStageManager::RemoveTask(mpFlamethrower);
	//CStageManager::RemoveTask(mpSmoke);
	//CStageManager::RemoveTask(mpScreenItem);

	spInstance = nullptr;
	// コライダー関連の破棄
	SAFE_DELETE(mpColliderLine);
	SAFE_DELETE(mpColliderCapsule);
	SAFE_DELETE(mpDamageCol);
	SAFE_DELETE(mpClimbCol);

	// マジックソードを破棄
	mpSword->Kill();
	mpClimbUI->Kill();

	mpCutInDeath->Kill();
	mpCutInClear->Kill();
	mpCutInResult->Kill();
	mpCutInDeathJump->Kill();
}

// 衝突処理
void CPlayer::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	if (mState == EState::eReady) return;

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
			else if (other->Tag() == ETag::eSeesaw)
			{
				mpUnderFootObject = other->Owner();
			}
		}
		// プレイヤーにダメージを与えるコライダー
		else if (other->Layer() == ELayer::eDamageObject)
		{
			mMoveSpeedY = 0.0f;
			Position(Position() + hit.adjust);

			// 接地した
			mIsGrounded = true;
			// 接地した地面の法線を記憶しておく
			mGroundNormal = hit.adjust.Normalized();

			if (other->Tag() == ETag::eRideableObject)
			{
				if (!mDamageObject)
				{
					TakeDamage(1);

					if (mCharaStatus.hp > 0)
					{
						mDamageObject = true;
						ChangeAnimation(EAnimType::eHit);
						ChangeState(EState::eReStart);
					}
					else
					{
						mDamageObject = true;
						mDeath = true;
						ChangeState(EState::eDeath);
					}
				}
				mpRideObject = other->Owner();
			}
		}
		// プレイヤーが触れたらジャンプするコライダー
		else if (other->Layer() == ELayer::eJumpingCol)
		{
			if (mState == EState::eFalling)
			{
				ChangeState(EState::eJumpingStart);
			}
			//// 反転した押し戻しベクトルと上方向のベクトルの内積(角度)を求める
			//float dot = CVector::Dot(-hit.adjust.Normalized(), CVector::up);
			//// 上に乗ったと判断するためのcos関数に渡した角度を求める
			//float cosAngle = cosf(Math::DegreeToRadian(10.0f));
			//// 求めた角度が指定した角度の範囲内であれば、
			//if (dot >= cosAngle)
			//{
			//	Position(Position() + hit.adjust);
			//}
		}
		// ブロックのコライダー
		else if (other->Layer() == ELayer::eBlockCol)
		{
			if (mState == EState::eJump)
			{
				mMoveSpeedY = 0.0f;
				Position(Position() + hit.adjust);
				mpRideObject = other->Owner();
			}
			else
			{
				Position(Position() + hit.adjust);
			}
		}
	}

	// 一時的な当たり判定を取るコライダー
	// カプセルコライダーが完成したら変更
	if (self == mpColliderCapsule)
	{
		if (other->Layer() == ELayer::eFieldWall)
		{
			Position(Position() + hit.adjust); //+ hit.adjust * hit.weight

			if (other->Tag() == ETag::eRideableObject)
			{
				mpRideObject = other->Owner();
			}
			else if (other->Tag() == ETag::eNeedleObject)
			{
				Position(Position() + hit.adjust);
			}
		}
		// 落下判定用のコライダーに触れたら
		else if (other->Layer() == ELayer::eFall)
		{
			// ステージ番号
			int currentStage = CGameManager::StageNo();

			// ステージ番号が1だったら
			if (currentStage == 1)
			{
				// 1面のセーブポイント
				if (mSavePoint1 && mSavePoint2 ||
					!mSavePoint1 && mSavePoint2)
				{
					ChangeState(EState::eFallDamege);
					Position(26.0f, 10.0f, 673.0f);
				}
				else if (mSavePoint1)
				{
					ChangeState(EState::eFallDamege);
					Position(26.0f, 10.0f, 390.0f);
				}
				else
				{
					// 初期値点に戻す
					Position(26.0f, 6.5f, -28.0f);
					ChangeState(EState::eFallDamege);
				}
			}
			// ステージ番号が2だったら
			else if (currentStage == 2)
			{
				// 初期値点に戻す
				Position(0.0f, 20.0f, 50.0f);
				ChangeState(EState::eFallDamege);
				// 2面のセーブポイント
				if (mSavePoint1 && mSavePoint2 ||
					!mSavePoint1 && mSavePoint2)
				{
					ChangeState(EState::eFallDamege);
					Position(0.0f, 56.0f, 994.0f);
				}
				else if (mSavePoint1)
				{
					ChangeState(EState::eFallDamege);
					Position(0.0f, 20.0f, 480.0f);
				}
			}
			// ステージ番号が3だったら
			else if (currentStage == 3)
			{
				// 3面のセーブポイント1と2のチェック
				if (mSavePoint1 && mSavePoint2 ||
					!mSavePoint1 && mSavePoint2)
				{
					// SavePoint2がtrueならセーブポイント2のポジションを適用
					ChangeState(EState::eFallDamege);
					Position(0.0f, 10.0f, 1550.0f);
				}
				else if (mSavePoint1)
				{
					// セーブポイント1だけがtrueならセーブポイント1のポジションを適用
					ChangeState(EState::eFallDamege);
					Position(0.0f, 10.0f, 453.0f);
				}
				else
				{
					// 初期値点に戻す
					Position(0.0f, 10.0f, 0.0f);
					ChangeState(EState::eFallDamege);
				}
			}
			// ステージ番号が4だったら
			else if (currentStage == 4)
			{
				// 4面のセーブポイント1と2のチェック
				if (mSavePoint1 && mSavePoint2 ||
					!mSavePoint1 && mSavePoint2)
				{
					// SavePoint2がtrueならセーブポイント2のポジションを適用
					Position(0.0f, 440.0f, -1890.0f);
				}
				else if (mSavePoint1)
				{
					// セーブポイント1だけがtrueならセーブポイント1のポジションを適用
					Position(328.0f, -190.0f, -546.0f);
				}
				else
				{
					// 初期値点に戻す
					Position(328.0f, -277.0f, -958.0f);
					ChangeState(EState::eFallDamege);
				}
			}
		}
		else if (other->Layer() == ELayer::eReflection)
		{
			mReflectTime = 0.0f;
			ChangeState(EState::eReflection);
			// 反射するオブジェクトの法線を取得
			mReflectionNormal = hit.adjust.Normalized();
			Position(Position() + hit.adjust);
		}
		else if (other->Layer() == ELayer::eReflectionJump)
		{
			ChangeState(EState::eJumpingStart);
			Position(Position() + hit.adjust);
		}
		// 攻撃力アップポーション
		else if (other->Layer() == ELayer::eAttackCol)
		{
			if (other->Tag() == ETag::eAttackObject)
			{
				//AddItem(ItemType::ATTACK_UP);
			}
		}
		// 回復アイテム
		else if (other->Layer() == ELayer::eRecoverCol)
		{
			if (other->Tag() == ETag::eItemRecover)
			{ 
				//AddItem(ItemType::HEALING);
			}
		}
		// 無敵アイテム
		else if (other->Layer() == ELayer::eInvincbleCol)
		{
			if (other->Tag() == ETag::eItemInvincible)
			{
				//AddItem(ItemType::INVINCIBLE);
			}
		}
		// メダルアイテム
		else if (other->Layer() == ELayer::eMedalCol)
		{
			if (other->Tag() == ETag::eMedal)
			{

			}
		}
		// 肉
		else if (other->Layer() == ELayer::eMeatCol)
		{

		}
		else if (other->Layer() == ELayer::eEnemy)
		{
			Position(Position() + hit.adjust);
		}
		// 登れるオブジェクト
		else if (other->Layer() == ELayer::eClimb)
		{
			// Climb状態の場合は位置を調整する
			Position(Position() + hit.adjust);
		}
		else if (other->Layer() == ELayer::eMetalLadder)
		{
		Position(Position() + hit.adjust);
 }
		// セーブポイント1
		else if (other->Layer() == ELayer::eSavePoint1)
		{
			if (other->Tag() == ETag::eSavePoint1)
			{
				mSavePoint1 = true;
			}
		}
		// セーブポイント2
		else if (other->Layer() == ELayer::eSavePoint2)
		{
			if (other->Tag() == ETag::eSavePoint2)
			{
				mSavePoint2 = true;
			}
		}
		// ゴールポスト
		else if (other->Layer() == ELayer::eGoalCol)
		{
			mIsStageClear = true;
			mpColliderCapsule->SetEnable(false);
			if (CGameManager::StageNo() == 1 ||
				CGameManager::StageNo() == 2 ||
				CGameManager::StageNo() == 3)
			{
				if (mIsGrounded && !mIsJumping)
				{
					ChangeState(EState::eClear);
				}
				else
				{
					ChangeState(EState::eStop);
				}
			}
		}
		// 跳ねるブロック
		else if (other->Layer() == ELayer::eJumpingCol)
		{
			Position(Position() + hit.adjust);
		}
		else if (other->Layer() == ELayer::eFlameWall)
		{
			Position(Position() + hit.adjust);
		}
	}

	// ダメージを受けるコライダー
	if (self == mpDamageCol)
	{
		// 敵のキックコライダー
		if (other->Layer() == ELayer::eKickCol)
		{
			ChangeState(EState::eHit);
		}
		else if (other->Layer() == ELayer::eBiribiri)
		{
			ChangeState(EState::eHitBullet);
		}
		// 敵の弾のコライダー
		else if (other->Layer() == ELayer::eBulletCol)
		{
			ChangeState(EState::eHitBullet);
		}
		else if (other->Layer() == ELayer::eAttackCol)
		{
			ChangeState(EState::eHitSword);
		}
		// 針ブロックのコライダー
		else if (other->Layer() == ELayer::eNeedleCol)
		{
			ChangeState(EState::eHitObj);
		}
		// 炎に当たったら
		else if (other->Layer() == ELayer::eFlame)
		{
			ChangeState(EState::eHit);
		}
		// ステージ選択ステージのオブジェクトに当たったら
		else if (other->Layer() == ELayer::eStageMenuObject)
		{
			
		}
	}

	// 登れるコライダーとの当たり判定を取るコライダー
	if (self == mpClimbCol)
	{
		// 登れる壁のコライダー
		if (other->Layer() == ELayer::eClimb)
		{
			mClimbWall = true;
			if (mState == EState::eIdle && mIsGrounded)
			{
				if (CInput::PushKey('E'))
				{
					// Climb状態に移行する
					ChangeState(EState::eClimb);
					// 今から登る壁を記憶しておく
					mpClimbWall = dynamic_cast<CClimbWall*>(other->Owner());
				}
			}

			// 現在壁を登っている最中であれば、
			if (mState == EState::eClimb)
			{
				// 登っている壁の法線を取得
				mClimbNormal = hit.adjust.Normalized();
			}
		}
		// 登れる壁の頂上コライダー
		else if (other->Layer() == ELayer::eClimbedTop)
		{
			mClimbWallTop = true;
		}

		// 金属梯子のコライダー
		if (other->Layer() == ELayer::eMetalLadder)
		{
			mClimbWall = true;
			if (mState == EState::eIdle && mIsGrounded)
			{
				if (CInput::PushKey('E'))
				{
					CVector mSpd = mMoveSpeed;
					mSpd = CVector(0.0f, 0.5f, 0.0f);
					Position(Position() + mSpd);

					// Climb状態に移行する
					ChangeState(EState::eMetalLadder);
					// 今から登る壁を記憶しておく
					mpMetalLadder = dynamic_cast<CMetalLadder*>(other->Owner());
				}
			}

			// 現在壁を登っている最中であれば、
			if (mState == EState::eMetalLadder)
			{
				// 登っている壁の法線を取得
				mClimbNormal = hit.adjust.Normalized();
			}
		}
		// 登れる壁の頂上コライダー
		else if (other->Layer() == ELayer::eMetalLadderTop)
		{
			mClimbWallTop = true;
		}

		// 登れる金網のコライダー
		if (other->Layer() == ELayer::eWireClimb)
		{
			mClimbWall = true;
			if (mState == EState::eIdle && mIsGrounded)
			{
				if (CInput::PushKey('E'))
				{
					// Climib状態に移行する
					ChangeState(EState::eWireClimb);
					// 今から登る壁を記憶しておく
					mpWireWall = dynamic_cast<CWireMeshClimbWall*>(other->Owner());
				}

				// 現在金網を登っている最中であれば、
				if (mState == EState::eWireClimb)
				{
					// 登っている壁の法線を取得
					mClimbNormal = hit.adjust.Normalized();
				}
			}
		}
		if (other->Layer() == ELayer::eWireMoveClimb && mState == EState::eWireClimb)
		{
			mClimbWall = true;

			// Climib状態に移行する
			ChangeState(EState::eWireClimb);
			// 今から登る壁を記憶しておく
			mpRideObject = other->Owner();
			mpWireMoveWall = dynamic_cast<CWireMeshMoveClimbWall*>(other->Owner());

			// 現在金網を登っている最中であれば、
			if (mState == EState::eWireClimb)
			{
				// 登っている壁の法線を取得
				mClimbNormal = hit.adjust.Normalized();
			}
		}
		// 登れる壁の頂上コライダー
		else if (other->Layer() == ELayer::eWireClimbedTop)
		{
			mClimbWallTop = true;
		}
		// 登れる動く壁の頂上コライダー
		else if (other->Layer() == ELayer::eWireMoveClimbedTop)
		{
			mClimbWallTop = true;
		}
	}
}

// コライダーの時間計測用
void CPlayer::CColliderTime()
{
	if (mColElapsedTime <= DAMAGECOL)
	{
		mColElapsedTime += Time::DeltaTime();
		if (mColElapsedTime >= DAMAGECOL && !mInvincible)
		{
			mColElapsedTime = DAMAGECOL;
			mDamaged = false;
			mpDamageCol->SetEnable(true);
			return;
		}
	}
}

// 点滅する時間計測用
void CPlayer::CDamageColorTime()
{
	if (mColElapsedTime <= DAMAGECOL && !mInvincible)
	{
		// 点滅の速度を調整するための定数
		const float blinkSpeed = 16.5f;

		// sin関数を使って点滅する色のアルファ値を計算
		// 0.0～1.0の間を往復する
		float alpha = 0.5f + 0.5f * sin(mBlinkElapsedTime * blinkSpeed);

		// 色をセット (白色でalpha値を指定)
		SetColor(CColor(1.0f, 1.0f, 1.0f, alpha));

		mColElapsedTime += Time::DeltaTime();
		mBlinkElapsedTime += Time::DeltaTime();
	}
	else
	{
		if (!mInvincible)
		{
			mBlinkElapsedTime = 0.0f;
			mColElapsedTime = 0.0f;
			mDamaged = false;
			mpDamageCol->SetEnable(true);
		}
	}
}

// // アニメーション終わりの体力判定処理
void CPlayer::CHPJudgment()
{
	if (IsAnimationFinished())
	{
		if (mCharaStatus.hp > 0)
		{
			mDamageEnemy = false;
			mIsPlayedHitDamageSE = false;
			ChangeState(EState::eIdle);
		}
		else if (mCharaStatus.hp <= 0)
		{
			mDeath = true;
			mFallDamage = false;
			mpDamageCol->SetEnable(false);
			ChangeState(EState::eDeath);
		}
	}
}

// ジャンプ中に体力が0以下になった場合の処理
void CPlayer::JumpingHpJudgment()
{
	if (mCharaStatus.hp <= 0)
	{
		mDeath = true;
		ChangeState(EState::eDeath);
	}
}

// ステージクリア時のアイテム削除処理
void CPlayer::ItemDeletion()
{
	// 無敵アイテム削除
	RemoveItem(ItemType::INVINCIBLE);
	// 攻撃力アップポーション削除
	RemoveItem(ItemType::ATTACK_UP);
	// 回復ポーション削除
	RemoveItem(ItemType::HEALING);
	// 防御力アップポーション削除
	RemoveItem(ItemType::DEFENSE);
}

// 被ダメージ処理
void CPlayer::TakeDamage(int damage)
{
	// SEを再生するとたまにエラーが発生する
	// 一旦保留
	mIsPlayedHitDamageSE = false;
	if (!mIsPlayedHitDamageSE)
	{
		mpHitDamageSE->Play(1.0f, false, 0.0f);
		mIsPlayedHitDamageSE = true;
	}
	//// 死亡していたら、ダメージは受けない
	//if (mCharaStatus.hp <= 0)return;

	//// HPからダメージを引く
	//mCharaStatus.hp = max(mCharaStatus.hp - damage, 0);
	mCharaStatus.hp -= damage;
	// HPが0になったら
	if (mCharaStatus.hp <= 0)
	{
		mDeath = true;
		ChangeState(EState::eDeath);
	}
}

// 回復処理
void CPlayer::TakeRecovery(int recovery)
{
	// ごり押し、多分他の方法がある
	if (mCharaStatus.hp < mCharaMaxStatus.hp && !mHpHit)
	{
		mHpHit = true;

		mCharaStatus.hp += recovery;
	}

	mIsHealingItem = true;
	mHealingTime = 3.0f;

	// バフ1を生成
	float dist = 0.1f;
	CInsideCircleEffect* circle1 = new CInsideCircleEffect
	(
		0.0f, dist
	);
	// バフ2を生成
	COutsideCircleEffect* circle2 = new COutsideCircleEffect
	(
		0.0f, dist
	);

	// 点滅の速度を調整するための定数
	const float blinkSpeed = 1.0f;

	// sin関数を使って点滅する色を計算
	// 0.0～1.0の間を往復する
	float green = 0.5f + 0.5f * sin(mHealingTime * blinkSpeed);
	// バフの色設定
	circle1->SetColor(CColor(0.0f, green, 0.0f, 1.0f));
	circle1->Scale(5.0f, 5.0f, 5.0f);
	circle1->SetOwner(this);

	circle2->SetColor(CColor(0.0f, green, 0.0f, 1.0f));
	circle2->Scale(5.0f, 5.0f, 5.0f);
	circle2->SetOwner(this);
}

// 無敵状態処理(コライダーを一定時間オフにする)
void CPlayer::TakeInvincible()
{
	mInvincibleStartTime = 10.0f;
	if (!mInvincible)
	{
		mpDamageCol->SetEnable(false);
		mInvincible = true;
	}
}

// 攻撃力を上昇させる
void CPlayer::TakeAttackPotion(int attack)
{
	mIsAttackItem = true;
	mAttackTime = 3.0;
	mCharaStatus.power += attack;

	// バフ1を生成
	float dist = 0.1f;
	CInsideCircleEffect* circle1 = new CInsideCircleEffect
	(
		0.0f, dist
	);
	// バフ2を生成
	COutsideCircleEffect* circle2 = new COutsideCircleEffect
	(
		0.0f, dist
	);

	// 点滅の速度を調整するための定数
	const float blinkSpeed = 1.0f;

	// sin関数を使って点滅する色を計算
	// 0.0～1.0の間を往復する
	float red = 0.5f + 0.5f * sin(mAttackTime * blinkSpeed);
	// バフの色設定
	circle1->SetColor(CColor(red, 0.0f, 0.0f, 1.0f));
	circle1->Scale(5.0f, 5.0f, 5.0f);
	circle1->SetOwner(this);

	circle2->SetColor(CColor(red, 0.0f, 0.0f, 1.0f));
	circle2->Scale(5.0f, 5.0f, 5.0f);
	circle2->SetOwner(this);
}

// レベルアップ
void CPlayer::LevelUp()
{
	int level = mCharaStatus.level;
	ChangeLevel(level + 1);
}

// レベルを変更
void CPlayer::ChangeLevel(int level)
{
	// ステータスのテーブルのインデックス値に変換
	int index = Math::Clamp(level - 1, 0, PLAYER_LEVEL_MAX);
	// 最大ステータスに設定
	mCharaMaxStatus = PLAYER_STATUS[index];
	// 現在のステータスを最大値にすることで、HPも回復
	mCharaStatus = mCharaMaxStatus;

	// 最大HPと現在HPをHPゲージに反映
	mpHpGauge->SetMaxValue(mCharaMaxStatus.hp);
	mpHpGauge->SetValue(mCharaStatus.hp);

	// 最大スタミナと現在スタミナをスタミナゲージに反映
	mpStaminaGauge->SetSutaminaMaxValue(mCharaMaxStatus.stamina);
	mpStaminaGauge->SetSutaminaValue(mCharaStatus.stamina);
}

// 乗ることができるオブジェクトが削除されたときの処理
void CPlayer::DeleteRideableObject(CTransform* rideObj)
{
	// 削除されるのが現在乗っているオブジェクトであれば、
	// 乗っているオブジェクトを削除
	if (mpRideObject == rideObj)
	{
		mpRideObject = nullptr;
	}
}

// ステージ開始時の位置を設定
void CPlayer::SetStartPosition(const CVector& pos)
{
	mStartPos = pos;
	Position(mStartPos);
}

// 現在の状態を切り替え
void CPlayer::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
	// アニメーションの再生速度をもとに戻す
	SetAnimationSpeed(1.0f);
}

// hp取得
int CPlayer::GetHp()
{
	return mCharaStatus.hp;
}

// 最大hp取得
int CPlayer::GetMaxHp()
{
	return mCharaMaxStatus.hp;
}

// ジャンプをしたかどうか取得
bool CPlayer::IsJumping()
{
	return mIsJumping;
}

// 攻撃中かどうか
bool CPlayer::IsAttack()
{
	return mIsAttack;
}

// 死亡したかどうか
bool CPlayer::IsDeath()
{
	return mIsDeath;
}

// 死亡したかどうか(mDeath)
bool CPlayer::IsMDeath()
{
	return mDeath;
}

// ステージ1をクリアしたか
bool CPlayer::IsStage1Clear()
{
	return mIsStage1Clear;
}

// ステージ2をクリアしたか
bool CPlayer::IsStage2Clear()
{
	return mIsStage2Clear;
}

// ステージ3をクリアしたか
bool CPlayer::IsStage3Clear()
{
	return mIsStage3Clear;
}

// ステージ4をクリアしたか
bool CPlayer::IsStage4Clear()
{
	return mIsStage4Clear;
}

// ステージをクリアしたか
bool CPlayer::IsStageClear()
{
	return mIsStageClear;
}

// ステージ2に入れるかどうか
bool CPlayer::IsStartStage2()
{
	return mIsStartStage2;
}

// ステージ3に入れるかどうか
bool CPlayer::IsStartStage3()
{
	return mIsStartStage3;
}

// ステージ4に入れるかどうか
bool CPlayer::IsStartStage4()
{
	return mIsStartStage4;
}

// 攻撃力アップアイテムを使用したか
bool CPlayer::IsAttackItem()
{
	return mIsAttackItem;
}

// 攻撃力アップアイテムを使用したか
bool CPlayer::IsHealingItem()
{
	return mIsHealingItem;
}

bool CPlayer::IsSpikyBall()
{
	return mSpikyBall;
}

bool CPlayer::IsSpikyBallAppearance()
{
	return mSpik1;
}

float CPlayer::GetSpikyTime() const
{
	return mSpikRechargeTime;
}

#define MAXCHARGETIME 2.0f
#define SPIKYCHARGETIME 5.0f
#define SPIKYBALLVELOCITY_Y 1.4f
#define MAXVELOCITY_Y 3.0f
#define SPIKYSPEED 50.0f
#define SPIKYDISTANCE 50.0f
#define SPIKYMAXSPEED 100.0f
#define MAXDISTANCE 300.0f
#define REDUCEDISTANCE 100.0f

float CPlayer::GetSpikyBallSpeed() const
{
	return SPIKYSPEED + (Math::Clamp01(mSpikTime / MAXCHARGETIME) * SPIKYMAXSPEED);
}

float CPlayer::GetSpikyBallDistance() const
{
	return SPIKYDISTANCE + (Math::Clamp01(mSpikTime / MAXCHARGETIME) * (MAXDISTANCE - REDUCEDISTANCE));
}

float CPlayer::GetSpikyBallInitialVelocityY() const
{
	return SPIKYBALLVELOCITY_Y + (Math::Clamp01(mSpikTime / MAXCHARGETIME) * MAXVELOCITY_Y);
}

// ステージフラグをfalseにする関数
void CPlayer::StageFlagfalse()
{
	mStage1Clear = false;
	mStage2Clear = false;
	mStage3Clear = false;
	mStage4Clear = false;

	mStartStage1 = false;
	mStartStage2 = false;
	mStartStage3 = false;
	mStartStage4 = false;
}

// アニメーション切り替え
void CPlayer::ChangeAnimation(EAnimType type)
{
	if (!(EAnimType::None < type && type < EAnimType::Num)) return;
	AnimData data = ANIM_DATA[(int)type];
	CXCharacter::ChangeAnimation((int)type, data.loop, data.frameLength);
}

// キーの入力情報から移動ベクトルを求める
CVector CPlayer::CalcMoveVec() const
{
	CVector move = CVector::zero;

	// キーの入力ベクトルを取得
	CVector input = CVector::zero;
	if (CInput::Key('W'))		input.Z(-1.0f);
	else if (CInput::Key('S'))	input.Z(1.0f);
	if (CInput::Key('A'))		input.X(-1.0f);
	else if (CInput::Key('D'))	input.X(1.0f);

	// 入力ベクトルの長さで入力されているか判定
	if (input.LengthSqr() > 0.0f)
	{
		// 上方向ベクトル(設置している場合は、地面の法線)
		CVector up = mIsGrounded ? mGroundNormal : CVector::up;
		// カメラの向きに合わせた移動ベクトルに変換
		CCamera* mainCamera = CCamera::MainCamera();
		CVector camForward = mainCamera->VectorZ();
		camForward.Y(0.0f);
		camForward.Normalize();
		// カメラの正面方向ベクトルと上方向ベクトルの外積から
		// 横方向の移動ベクトルを求める
		CVector moveSide = CVector::Cross(up, camForward);
		// 横方向の移動ベクトルと上方向ベクトルの外積から
		// 正面方向の移動ベクトルを求める
		CVector moveForward = CVector::Cross(moveSide, up);

		// 求めた各方向の移動ベクトルから、
		// 最終的なプレイヤーの移動ベクトルを求める
		move = moveForward * input.Z() + moveSide * input.X();
		move.Normalize();
	}
	return move;
}

// キーの入力情報から移動ベクトルを求める
CVector CPlayer::ClimbMoveVec() const
{
	CVector move = CVector::zero;

	// キーの入力ベクトルを取得
	CVector input = CVector::zero;
	if (CInput::Key('W'))		input.Y(-1.0f);
	else if (CInput::Key('S'))	input.Y(1.0f);
	if (CInput::Key('A'))		input.X(-1.0f);
	else if (CInput::Key('D'))	input.X(1.0f);

	// 入力されている場合のみ、左右方向の移動ベクトルを設定
	if (input.LengthSqr() > 0.0f)
	{
		// ワールドの上方向ベクトルと登っている壁の法線の外積から、
		// 横方向の移動ベクトルを求める
		CVector moveSide = CVector::Cross(CVector::up, mClimbNormal);
		// 求めた横方向の移動ベクトルと登っている壁の法線の外積から、
		// 上下移動ベクトルを求める
		CVector moveUp = CVector::Cross(moveSide, mClimbNormal);

		// プレイヤーの移動ベクトル =
		// 横移動ベクトル×横入力　＋　上下移動ベクトル×上下入力
		move = moveSide * input.X() + moveUp * input.Y();
		move.Normalize();
	}

	return move;
}

// キーの入力情報から壁移動ベクトル(上下)を求める
CVector CPlayer::ClimbMoveUpVec() const
{
	CVector move = CVector::zero;

	// キーの入力ベクトルを取得
	CVector input = CVector::zero;
	if (CInput::Key('W'))		input.Y(-1.0f);
	else if (CInput::Key('S'))	input.Y(1.0f);

	// 入力されている場合のみ、左右方向の移動ベクトルを設定
	if (input.LengthSqr() > 0.0f)
	{
		// ワールドの上方向ベクトルと登っている壁の法線の外積から、
		// 横方向の移動ベクトルを求める
		CVector moveSide = CVector::Cross(CVector::up, mClimbNormal);
		// 求めた横方向の移動ベクトルと登っている壁の法線の外積から、
		// 上下移動ベクトルを求める
		CVector moveUp = CVector::Cross(moveSide, mClimbNormal);

		// プレイヤーの移動ベクトル =
		// 横移動ベクトル×横入力　＋　上下移動ベクトル×上下入力
		move = moveSide * input.X() + moveUp * input.Y();
		move.Normalize();
	}

	return move;
}

// プレイヤーがアクションを起こせるかどうか
bool CPlayer::IsEnableAction() const
{
	return CGameManager::StageNo() > 0;
}

// 準備中の状態
void CPlayer::UpdateReady()
{
	// ステップごとに処理を切り替える
	switch (mStateStep)
	{
		// ステップ0 初期化処理
	case 0:
		//ChangeAnimation(EAnimType::eIdle);
		// 全ての衝突判定をオフにする
		SetEnableCol(false);
		// プレイヤーの移動速度を0にする
		mMoveSpeed = CVector::zero;
		mMoveSpeedY = 0.0f;
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
			mStageElapsedTime = 0.0f;
			// プレイヤーの衝突判定をオンにする
			SetEnableCol(true);
			// 現在の状態を待機に切り替え
			mCharaStatus.hp = mCharaMaxStatus.hp;
			ChangeState(EState::eFirstAction);

			// ステージをクリアしたら
			if (mStage1Clear || mStage2Clear || mStage3Clear || mStage4Clear)
			{
				// クリアジャンプに遷移
				ChangeState(EState::eResultJumpStart);
			}

			// 死んでいたら
			if (!mIsDeath && mDeath)
			{
				ChangeState(EState::eDeathJumpStart);
			}
		}
		break;
	}
}

// 最初のアクション
void CPlayer::UpdateFirstAction()
{
	mMoveSpeed =  CVector::zero;
	ChangeAnimation(EAnimType::eDashJumpLoop);
	if (IsAnimationFinished() &&mIsGrounded)
	{
		ChangeAnimation(EAnimType::eIdle);
		ChangeState(EState::eIdle);
	}
}

// 待機
void CPlayer::UpdateIdle()
{
	// アクションを起こせるかどうか
	if (!IsEnableAction())
	{
		// ステージ選択画面であれば、リザルトへ切り替え
		if (mStage1Clear && !mIsStage1Clear)
		{
			ChangeState(EState::eResult);
		}
		else if (mStage2Clear && !mIsStage2Clear)
		{
			ChangeState(EState::eResult);
		}
		else if (mStage3Clear && !mIsStage3Clear)
		{
			ChangeState(EState::eResult);
		}
		else if (mStage4Clear && !mIsStage4Clear)
		{
			ChangeState(EState::eResult);
		}

		if (!mIsDeath && mDeath)
		{
			ChangeState(EState::eRestart);
		}

		// アクションを起こせない場合は、以降の処理を実行しない
		return;
	}

	SetAlpha(1.0f);
	mpSword->SetAlpha(1.0f);
	mMoveSpeed = CVector::zero;
	// 剣に攻撃終了を伝える
	mpSword->AttackEnd();

	if (mIsAttack)
	{
		mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_RightHandMiddle1"));
	}

	mMoveSpeed = CVector::zero;

	if (mIsGrounded)
	{
		mStateStep = 0;

		// Jキーで攻撃状態へ移行
		if (CInput::PushKey(VK_LBUTTON))
		{
			mMoveSpeed = CVector::zero;
			ChangeState(EState::eAttack);
		}
		// マウス右クリックで強攻撃
		else if (CInput::PushKey(VK_RBUTTON) && mSpikRechargeTime <= 0.0f)
		{
			mMoveSpeed = CVector::zero;
			// チャージ時間をリセット
			mSpikTime = 0.0f;
			ChangeState(EState::eAttackStrongStart);
		}
		// SPACEキーでジャンプ開始へ移行
		else if (CInput::PushKey(VK_SPACE) && !mIsDashJump)
		{
			if (mCharaStatus.stamina - 20 >= 0)
			{
				ChangeState(EState::eJumpStart);
				// スタミナが0以下にならない場合はジャンプを実行
				mCharaStatus.stamina -= 20;
			}
			else
			{
			}
		}
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
			//ChangeAnimation(EAnimType::eDashJumpLoop);
		}
	}
}

// 停止状態
void CPlayer::UpdateStop()
{
	mMoveSpeed = CVector::zero;
	if (IsAnimationFinished() && mIsGrounded)
	{
		ChangeState(EState::eClear);
	}
}

// 移動状態
void CPlayer::UpdateMove()
{
	// アクションを起こせない場合は、移動できない
	if (!IsEnableAction()) return;

	mMoveSpeed = CVector::zero;

	// プレイヤーの移動ベクトルを求める
	CVector move = CalcMoveVec();
	// 求めた移動ベクトルの長さで入力されているか判定
	if (move.LengthSqr() > 0.0f)
	{
		float speed = MOVE_SPEED;
		// 待機状態であれば、歩行モーションに切り替え
		if (mState == EState::eIdle)
		{
			if (CInput::Key(VK_SHIFT) && mIsGrounded)
			{
				// スタミナが0以上かつ、スタミナの下限値フラグがfalseだったら
				if (mCharaStatus.stamina >= 0 && !mStaminaLowerLimit)
				{
					// ダッシュ開始
					ChangeAnimation(EAnimType::eDash);
					// スタートダッシュ
					if (mStartDashTime <= 0.5f)
					{
						speed = DASH_SPEED;
						mIsDashJump = true;
						mDash = true;
						mCharaStatus.stamina -= 1;

						// ダッシュジャンプ移行
						if ((CInput::PushKey(VK_SPACE) && mIsDashJump) && (mCharaStatus.stamina <= mCharaMaxStatus.stamina))
						{
							// ダッシュジャンプ移行時に
							// スタミナが0以下になるかどうかを確認
							if (mCharaStatus.stamina - 40 >= 0)
							{
								mMoveSpeed = CVector::zero;
								ChangeState(EState::eDashJumpStart);
								// スタミナが0以下にならない場合はダッシュジャンプを実行
								mCharaStatus.stamina -= 40;
							}
							else
							{

							}
						}

						if (mCharaStatus.stamina <= 0)
						{
							ChangeState(EState::eDashEnd);
							mStartDashTime = 0.0f;
							mStaminaLowerLimit = true;
							mDash = false;
						}
						mStartDashTime += Time::DeltaTime();
					}
					// ダッシュ
					else
					{
						speed = RUN_SPEED;
						mDash = true;
						mIsDashJump = false;
						mCharaStatus.stamina -= 1;
						if (mCharaStatus.stamina <= 0)
						{
							ChangeState(EState::eDashEnd);
							mStaminaLowerLimit = true;
							mDash = false;
						}
					}

					// ダッシュアタック移行
					if (((CInput::PushKey(VK_MBUTTON))) && (mCharaStatus.stamina <= mCharaMaxStatus.stamina))
					{
						// ダッシュアタック移行時に、
						// スタミナが0以下になるかどうかを確認
						if (mCharaStatus.stamina - 20 >= 0)
						{
							mMoveSpeed = CVector::zero;
							ChangeState(EState::eAttackDash);
							// スタミナが0以下にならない場合はダッシュアタックを実行
							mCharaStatus.stamina -= 20;
						}
						else
						{
						}
					}
				}
				// スタミナが0以下かつ、スタミナの下限値フラグがtrueだったら
				else
				{
					// 歩く
					mStartDashTime = 0.0f;
					mIsDashJump = false;
					mDash = false;
					ChangeAnimation(EAnimType::eWalk);
					if (mCharaStatus.stamina < mCharaMaxStatus.stamina)
					{
						mCharaStatus.stamina += 1;
						if (mCharaStatus.stamina >= mCharaMaxStatus.stamina)
						{
							mStaminaLowerLimit = false;
						}
					}
				}
			}
			else
			{
				mStartDashTime = 0.0f;
				mIsDashJump = false;
				mDash = false;
				ChangeAnimation(EAnimType::eWalk);
				if (mCharaStatus.stamina < mCharaMaxStatus.stamina)
				{
					mCharaStatus.stamina += 1;
				}
			}

			if (mStaminaLowerLimit)
			{
				if (mCharaStatus.stamina >= mCharaMaxStatus.stamina)
				{
					mStaminaLowerLimit = false;
				}
			}

			// CTRLキーで回避へ移行
			if (((CInput::PushKey(VK_CONTROL))) && (mCharaStatus.stamina <= mCharaMaxStatus.stamina))
			{
				// 回避行動前にスタミナが0以下になるかどうかを確認
				if (mCharaStatus.stamina - 50 >= 0) {
					mMoveSpeed = CVector::zero;
					ChangeState(EState::eRotate);
					// スタミナが0以下にならない場合は回避行動を実行
					mCharaStatus.stamina -= 50;
				}
				else
				{
				}
			}
		}
		if (mState == EState::eDashJump)
		{
			speed = DASH_JUMP_SPEED;
			//mMoveSpeed += move * speed * mCharaStatus.moveSpeed;
		}
		mMoveSpeed += move * speed * mCharaStatus.moveSpeed;
	}
	// 移動キーを入力していない
	else
	{
		if (mState == EState::eIdle)
		{
			// 待機アニメーションに切り替え
			ChangeAnimation(EAnimType::eIdle);
			mStartDashTime = 0.0f;
			mIsDashJump = false;
			mDash = false;
			if (mCharaStatus.stamina < mCharaMaxStatus.stamina && !mDash)
			{
				mCharaStatus.stamina += 1;
			}
		}
	}
}

// ダッシュ終了
void CPlayer::UpdateDashEnd()
{
	mMoveSpeed = CVector::zero;
	ChangeAnimation(EAnimType::eDashStop);
	if (IsAnimationFinished())
	{
		ChangeState(EState::eIdle);
		ChangeAnimation(EAnimType::eIdle);
	}
}

// 攻撃
void CPlayer::UpdateAttack()
{
	mIsAttack = true;
	mWeaponTime = 0.0f;
	mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_RightHandMiddle1"));

	// 攻撃アニメーションを開始
	ChangeAnimation(EAnimType::eAttack);
	if (GetAnimationFrame() >= 10.0f)
	{
		// 剣に攻撃開始を伝える
		mpSword->AttackStart();
		ChangeState(EState::eAttackWait);
	}

	// 斬撃SEの再生済みフラグを初期化
	mIsPlayedSlashSE = false;
}

// 強攻撃開始
void CPlayer::UpdateAttackStrongStart()
{
	mAttackStrongPos = Position();
	ChangeState(EState::eAttackStrong);
}

// 強攻撃
void CPlayer::UpdateAttackStrong()
{
	mSpikyBall = false;
	mIsAttack = false;
	mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_Spine1"));
	mWeaponTime = 0.0f;

	// 強攻撃アニメーションを開始
	ChangeAnimation(EAnimType::eAttackStrong);

	CVector forward = VectorZ();
	forward.Normalize();

	if (!mSpik1)
	{
		mSpik1 = true;
		mpSpiky1 = new CSpikyBall
		(
			Position(),
			forward,
			GetSpikyBallSpeed(),
			GetSpikyBallDistance(),
			SPIKYBALLVELOCITY_Y
		);
		mpSpiky1->AttachMtx(GetFrameMtx("Armature_mixamorig_LeftHandMiddle1"));
	}

	if (GetAnimationFrame() >= 50.0f)
	{
		SetAnimationSpeed(0.0f);
		if (CInput::Key(VK_RBUTTON))
		{
			mSpikTime += Time::DeltaTime();
			if (mSpikTime >= MAXCHARGETIME)
			{
				ChangeState(EState::eAttackStrongWait);
			}
		}
		else if (CInput::PullKey(VK_RBUTTON))
		{
			ChangeState(EState::eAttackStrongWait);
		}
	}
	else if (GetAnimationFrame() <= 50.0f && CInput::PullKey(VK_RBUTTON))
	{
		mpSpiky1->Kill();
		mSpik1 = false;
		ChangeState(EState::eIdle);
	}

	if (mpSpiky1 != nullptr)
	{
		mpSpiky1->UpdateAttachMtx();
	}
}

// 強攻撃終了待ち
void CPlayer::UpdateAttackStrongWait()
{
	SetAnimationSpeed(1.0f);

	CVector forward = VectorZ();
	forward.Normalize();

	if (GetAnimationFrame() >= 74.0f && mSpik1 && mpSpiky1 != nullptr)
	{
		mSpik1 = false;
		mpSpiky1->DetachMtx();
		mpSpiky1->Kill();
	}
	else if (GetAnimationFrame() >= 50.0f && GetAnimationFrame() <= 75.0f)
	{
		if (mpSpiky1 != nullptr && mSpik1)
		{
			mpSpiky1->UpdateAttachMtx();
		}
	}

	if (GetAnimationFrame() >= 75.0f && !mSpik2)
	{
		if (mpSpiky2 == nullptr)
		{
			mSpik2 = true;
			mpSpiky2 = new CSpikyBall
			(
				Position() + CVector(0.0f, 10.0f, 0.0f) + forward * 5.0f,
				forward,
				GetSpikyBallSpeed(),
				GetSpikyBallDistance(),
				SPIKYBALLVELOCITY_Y
			);
			mpSpiky2->SetAlpha(1.0f);
			mpSpiky2->AttachMtx(GetFrameMtx("Armature_mixamorig_LeftHandMiddle1"));
			mpSpiky2->AttackStart();
			mpSpiky2->DetachMtx();
			mpSpiky2->PlayerVectorZ(*spInstance);
		}
		mSpikyBall = true;

		if (mpSpiky2 != nullptr && mSpik2)
		{
			mpSpiky2->UpdateAttachMtx();
		}
	}

	if (IsAnimationFinished())
	{
		mSpikRechargeTime = SPIKYCHARGETIME;
		ChangeState(EState::eIdle);
		ChangeAnimation(EAnimType::eIdle);
	}
}

// ダッシュアタック
void CPlayer::UpdateDashAttack()
{
	// ダッシュアタックアニメーションを開始
	ChangeAnimation(EAnimType::eAttackDash);
	mMoveSpeed = CVector::zero;
	mIsAttack = true;
	mWeaponTime = 0.0f;
	mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_RightHandMiddle1"));

	if (GetAnimationFrame() >= 20.0f)
	{
		// 剣に攻撃開始を伝える
		mpSword->AttackStart();
	}

	if (GetAnimationFrame() <= 69.0f)
	{
		// 移動処理
		CVector move = CalcMoveVec();

		// 入力ベクトルの長さで入力されているか判定
		if (move.LengthSqr() > 0.0f)
		{
			mMoveSpeed += move;
		}
		mMoveSpeed = move * MOVE_SPEED;
	}
	else
	{
		// ダッシュアタック終了待ち状態へ移行
		ChangeState(EState::eAttackDashWait);
	}
}

// 攻撃終了待ち
void CPlayer::UpdateAttackWait()
{
	bool KeyPush = (CInput::Key('W') || CInput::Key('A') || CInput::Key('S') || CInput::Key('D'));
	if (mAnimationFrame >= 10.0f)
	{
		// 攻撃終了待ち状態へ移行
		// CTRLキーで回避へ移行
		if (((CInput::PushKey(VK_CONTROL)) && KeyPush) && (mCharaStatus.stamina <= mCharaMaxStatus.stamina))
		{
			// 回避行動前にスタミナが0以下になるかどうかを確認
			if (mCharaStatus.stamina - 50 >= 0)
			{
				ChangeState(EState::eRotate);
				// スタミナが0以下にならない場合は回避行動を実行
				mCharaStatus.stamina -= 50;
				mpSword->AttackEnd();

			}
			else
			{
			}
		}

		if (CInput::PushKey(VK_SPACE))
		{
			mpSword->AttackEnd();
			if (mCharaStatus.stamina - 20 >= 0)
			{
				ChangeState(EState::eJumpStart);
				mIsSpawnedSlashEffect = false;
				// スタミナが0以下にならない場合はジャンプを実行
				mCharaStatus.stamina -= 20;
			}
			else
			{
			}
		}

		// SE
		if (!mIsPlayedSlashSE && GetAnimationFrame() >= 10.0f)
		{
			// 斬撃SEを再生
			mpSlashSE->Play(1.0f, false, 0.0f);
			mIsPlayedSlashSE = true;
		}

		// 斬撃エフェクトを生成していないかつ、アニメーションが35%以上進行したら、
		if (!mIsSpawnedSlashEffect && GetAnimationFrameRatio() >= 0.15f)
		{
			//// 斬撃エフェクトを生成して、正面方向へ飛ばす
			//CSlash* slash = new CSlash
			//(
			//	this,
			//	Position() + CVector(0.0f, 10.0f, 0.0f),
			//	VectorZ(),
			//	300.0f,
			//	100.0f
			//);
			//// 斬撃エフェクトの色設定
			//slash->SetColor(CColor(0.15f, 0.5f, 0.5f));

			// 斬撃エフェクトを生成して、正面方向へ飛ばす
			mIsSpawnedSlashEffect = true;
		}


		if (GetAnimationFrame() >= 50.0f)
		{
			// 剣に攻撃終了を伝える
			mpSword->AttackEnd();
		}
	}
	else
	{

	}
	// 攻撃アニメーションが終了したら、
	if (IsAnimationFinished())
	{
		// 待機状態へ移行
		mIsSpawnedSlashEffect = false;
		ChangeState(EState::eIdle);
		ChangeAnimation(EAnimType::eIdle);
	}
}

// ダッシュアタック終了待ち
void CPlayer::UpdateDashAttackWait()
{
	// 剣に攻撃終了を伝える
	mpSword->AttackEnd();
	mMoveSpeed = CVector::zero;
	if (IsAnimationFinished())
	{
		ChangeState(EState::eIdle);
		ChangeAnimation(EAnimType::eIdle);
	}
}

//回避開始
void CPlayer::UpdateRotate()
{
	mpDamageCol->SetEnable(false);
	mIsAttack = false;
	mWeaponTime = 0.0f;
	mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_Spine1"));
	mMoveSpeed = CVector::zero;

	// 移動処理
	CVector move = CalcMoveVec();

	// 入力ベクトルの長さで入力されているか判定
	if (move.LengthSqr() > 0.0f)
	{
		mMoveSpeed += move;
	}
	ChangeAnimation(EAnimType::eRotate);
	ChangeState(EState::eRotateEnd);
}

//回避終了待ち
void CPlayer::UpdateRotateEnd()
{
	if (IsAnimationFinished())
	{
		mpDamageCol->SetEnable(true);

		ChangeState(EState::eIdle);
		ChangeAnimation(EAnimType::eIdle);
	}
}

// クリア
void CPlayer::UpdateClear()
{	
	mpHpGauge->SetShow(false);
	mpStaminaGauge->SetShow(false);
	mpScreenItem->SetShow(false);
	mpSpikyBallUI->SetShow(false);
	mpColliderCapsule->SetEnable(false);

	mpMeat->SetShow(false);
	mMoveSpeed = CVector::zero;
	mElapsedTime = 0.0f;
	mMoveDistance = 0.0f;

	ItemDeletion();

	mpSword->AttackEnd();
	ChangeState(EState::eClearEnd);
}

// クリア終了
void CPlayer::UpdateClearEnd()
{
	ChangeAnimation(EAnimType::eGuts);

	if (mpCutInClear->IsPlaying())
	{
		// キャラクターの更新
		if (IsAnimationFinished())
		{
			if (mElapsedTime < 2.0f)
			{
				mElapsedTime += Time::DeltaTime();
			}
			else
			{	
				// ステージ1「ワンショット・フロア」
				if (CGameManager::StageNo() == 1)
				{
					mSavePoint1 = false;
					mSavePoint2 = false;

					mStage1Clear = true;
					mIsStage1Clear = false;

					mIsStartStage2 = true;

					if (mStage2Clear)
					{
						mIsStage2Clear = false;
						mStage2Clear = false;
					}
					else if (mStage3Clear)
					{
						mIsStage3Clear = false;
						mStage3Clear = false;
					}

					mElapsedTime = 0.0f;
					mpCutInClear->End();

					// ステージをクリア
					CGameManager::StageClear();
					// ステージをクリアしたら、次のステージ開始まで準備中の状態に変更
					ChangeState(EState::eReady);
					Position(mStartPos);
					mpColliderCapsule->SetEnable(true);
				}
				// ステージ2クリア
				else if (CGameManager::StageNo() == 2)
				{
					mSavePoint1 = false;
					mSavePoint2 = false;

					mStage2Clear = true;
					mIsStage2Clear = false;

					mIsStartStage3 = true;

					if (mStage1Clear)
					{
						mIsStage1Clear = false;
						mStage1Clear = false;
					}
					else if (mStage3Clear)
					{
						mIsStage3Clear = false;
						mStage3Clear = false;
					}

					mElapsedTime = 0.0f;
					mpCutInClear->End();
					// ステージをクリア
					CGameManager::StageClear();
					// ステージをクリアしたら、次のステージ開始まで準備中の状態に変更
					ChangeState(EState::eReady);
					Position(mStartPos);
					mpColliderCapsule->SetEnable(true);
				}
				// ステージ3「平原」
				else if (CGameManager::StageNo() == 3)
				{
					mSavePoint1 = false;
					mSavePoint2 = false;

					mStage3Clear = true;
					mIsStage3Clear = false;

					if (mStage1Clear)
					{
						mIsStage1Clear = false;
						mStage1Clear = false;
					}
					else if (mStage2Clear)
					{
						mIsStage2Clear = false;
						mStage2Clear = false;
					}

					mElapsedTime = 0.0f;
					mpCutInClear->End();
					// ステージをクリア
					CGameManager::GameClear();
					// ステージをクリア
					//CGameManager::StageClear();
					// ステージをクリアしたら、次のステージ開始まで準備中の状態に変更
					ChangeState(EState::eReady);
					mIsStartStage2 = false;
					mIsStartStage3 = false;
					// 消さないように
					// 消したら不具合
					//Position(mStartPos);
					mpColliderCapsule->SetEnable(true);
				}
				// ステージ4クリア
				else if (CGameManager::StageNo() == 2)
				{
					mSavePoint1 = false;
					mSavePoint2 = false;

					mStage4Clear = true;
					mIsStage4Clear = false;

					mIsStartStage4 = true;

					if (mStage1Clear)
					{
						mIsStage1Clear = false;
						mStage1Clear = false;
					}
					else if (mStage2Clear)
					{
						mIsStage2Clear = false;
						mStage2Clear = false;
					}
					else if (mStage3Clear)
					{
						mIsStage3Clear = false;
						mStage3Clear = false;
					}

					mElapsedTime = 0.0f;
					mpCutInClear->End();
					// ステージをクリア
					CGameManager::GameClear();
					// ステージをクリアしたら、次のステージ開始まで準備中の状態に変更
					ChangeState(EState::eReady);
					mIsStartStage2 = false;
					mIsStartStage3 = false;
					Position(mStartPos);
					mpColliderCapsule->SetEnable(true);
				}
			}
		}
		//CXCharacter::Update();
		return;
	}
	else
	{
		mpCutInClear->Setup(this);
		mpCutInClear->Start();
	}
}

// リザルト時のジャンプ開始
void CPlayer::UpdateResultJumpStart()
{
	mDash = false;
	Scale(CVector(0.0f, 0.0f, 0.0f));
	if (mpCutInResult->IsPlaying())
	{

	}
	else
	{
		mpCutInResult->Setup(this);
		mpCutInResult->Start();
	}
	ChangeAnimation(EAnimType::eJumpStart);
	ChangeState(EState::eResultJump);

	mMoveDistance = 0.0f;
	mMoveSpeedY = JUMP_CLEAR;
	mIsGrounded = false;
}

// リザルト時のジャンプ
void CPlayer::UpdateResultJump()
{
	// 目標地点まで移動させる処理
	CPlayer* player = CPlayer::Instance();
	CVector playerPos = player->Position();
	CVector current = VectorZ();
	CVector targetPos = playerPos + current * 0.5f;
	float per = mResultElapsedTime / 1.5f;
	CVector pos = CVector::Lerp(playerPos, targetPos, per);
	Position(pos);

	// 目標の大きさにする処理
	float perscale = mScaleTime / 1.0f;
	CVector scale = CVector(0.0f, 0.0f, 0.0f);
	CVector targetscale = CVector(1.0f, 1.0f, 1.0f);
	CVector ScaleCur = CVector::Lerp(scale, targetscale, perscale);
	Scale(ScaleCur);

	mResultElapsedTime += Time::DeltaTime();
	mScaleTime += Time::DeltaTime();

	if (mResultElapsedTime > 1.5f)
	{
		mMoveDistance = 0.0f;
		if (mMoveSpeedY <= 0.0f)
		{
			mResultElapsedTime = 0.0f;
			Scale(CVector(1.0f, 1.0f, 1.0f));
			ChangeAnimation(EAnimType::eJumpEnd);
			ChangeState(EState::eResultJumpEnd);
		}
	}
}

// リザルト時のジャンプ終了
void CPlayer::UpdateResultJumpEnd()
{
	if (mIsGrounded)
	{
		mMoveDistance = 0.0f;
		ChangeState(EState::eIdle);
	}
}

// リザルト状態
void CPlayer::UpdateResult()
{
	mMoveSpeed = CVector::zero;
	mElapsedTime += Time::DeltaTime();
	if (mElapsedTime > 1.0f)
	{
		mElapsedTime = 0.0f;
		mScaleTime = 0.0f;
		ChangeAnimation(EAnimType::eGuts);
		ChangeState(EState::eResultEnd);
	}
}

// リザルト終了状態
void CPlayer::UpdateResultEnd()
{
	if (IsAnimationFinished())
	{
		if (mStage1Clear)
		{
			mIsStage1Clear = true;
			CResultAnnouncement* result = CResultAnnouncement::Instance();
			bool resultEnd = result->IsResultOpened();
			if (resultEnd)
			{
				mMoveDistance = 0.0f;
				mpCutInResult->End();
				mpHpGauge->SetShow(true);
				mpStaminaGauge->SetShow(true);
				mpScreenItem->SetShow(true);
				mpSpikyBallUI->SetShow(true);
				mpMeat->SetShow(true);
				mIsStageClear = false;

				mIsStage1Clear = false;
				StageFlagfalse();
				ChangeState(EState::eIdle);
			}
		}
		else if (mStage2Clear)
		{
			mIsStage2Clear = true;
			CResultAnnouncement* result = CResultAnnouncement::Instance();
			bool resultEnd = result->IsResultOpened();
			if (resultEnd)
			{
				mMoveDistance = 0.0f;
				mpCutInResult->End();
				mpHpGauge->SetShow(true);
				mpStaminaGauge->SetShow(true);
				mpScreenItem->SetShow(true);
				mpSpikyBallUI->SetShow(true);
				mpMeat->SetShow(true);
				mIsStageClear = false;

				mIsStage2Clear = false;
				StageFlagfalse();
				ChangeState(EState::eIdle);
			}
		}
		else if (mStage3Clear)
		{
			mIsStage3Clear = true;
			CResultAnnouncement* result = CResultAnnouncement::Instance();
			bool resultEnd = result->IsResultOpened();
			if (resultEnd)
			{
				mMoveDistance = 0.0f;
				mpCutInResult->End();
				mpHpGauge->SetShow(true);
				mpStaminaGauge->SetShow(true);
				mpScreenItem->SetShow(true);
				mpSpikyBallUI->SetShow(true);
				mpMeat->SetShow(true);
				mIsStageClear = false;

				mIsStage3Clear = false;
				StageFlagfalse();
				ChangeState(EState::eIdle);
			}
		}
	}
}

// restart状態
void CPlayer::UpdateRestart()
{
	mMoveSpeed = CVector::zero;
	//mElapsedTime += Time::DeltaTime();
	ChangeAnimation(EAnimType::eStandUp);
	if (IsAnimationFinished())
	{
		mElapsedTime = 0.0f;
		mScaleTime = 0.0f;
		ChangeState(EState::eRestartEnd);
		/*if (mElapsedTime > 1.0f)
		{
			mElapsedTime = 0.0f;
			mScaleTime = 0.0f;
			ChangeState(EState::eRestartEnd);
		}*/
	}
}

// restart終了状態
void CPlayer::UpdateRestartEnd()
{
	CResultAnnouncement* result = CResultAnnouncement::Instance();
	bool resultEnd = result->IsResultOpened();
	mIsDeath = true;
	if (resultEnd)
	{
		mDeath = false;
		mIsDeath = false;
		mpCutInDeathJump->End();
		mpHpGauge->SetShow(true);
		mpStaminaGauge->SetShow(true);
		mpScreenItem->SetShow(true);
		mpMeat->SetShow(true);

		StageFlagfalse();
		ChangeAnimation(EAnimType::eIdle);
		ChangeState(EState::eIdle);
	}
}

// ステージ開始時のジャンプ開始
void CPlayer::UpdateStartStageJumpStart()
{
	mMoveSpeed = CVector::zero;
	mMoveSpeedY = 0.0f;

	// 足元に煙のエフェクトを発生させる
	PlayStepSmoke();

	mpColliderCapsule->SetEnable(false);
	ChangeAnimation(EAnimType::eJumpStart);
	ChangeState(EState::eStartStageJump);

	mMoveSpeedY = JUMP_START_STAGE;
	mIsGrounded = false;
}

// ステージ開始時のジャンプ
void CPlayer::UpdateStartStageJump()
{
	// 目標地点まで移動させる処理
	CPlayer* player = CPlayer::Instance();
	CVector playerPos = player->Position();
	CVector zDirection(-1.0f, 0.0f, 0.0f); // Z軸方向のベクトル
	CVector targetPos = playerPos + zDirection * 1.1f;
	float per = mElapsedTime / 1.0f;
	CVector pos = CVector::Lerp(playerPos, targetPos, per);
	Position(pos);

	// プレイヤーの向きを調整
	CVector current = VectorZ();
	CVector target = zDirection; // 移動方向に合わせてZ軸方向を向かせる

	// 目標の大きさにする処理
	float perscale = mScaleTime / 1.0f;
	CVector scale =  CVector(1.0f, 1.0f, 1.0f);
	CVector targetscale = CVector(0.0f, 0.0f, 0.0f);
	CVector ScaleCur = CVector::Lerp(scale, targetscale, perscale);
	Scale(ScaleCur);

	//// Slerpでスムーズに向きを変える
	//CVector forward = CVector::Slerp(current, target, 0.125f);
	//Rotation(CQuaternion::LookRotation(forward));
	// プレイヤーの向きを調整
	Rotation(CQuaternion::LookRotation(target)); // 一瞬で新しい方向に向ける

	mElapsedTime += Time::DeltaTime();
	mScaleTime += Time::DeltaTime();
	
	if (mElapsedTime > 0.8f && mScaleTime > 1.0f)
	{
		if (mMoveSpeedY <= 0.0f)
		{
			ChangeAnimation(EAnimType::eJumpEnd);
			ChangeState(EState::eStartStageJumpEnd);
		}
	}
}

// ステージ開始時のジャンプ終了
void CPlayer::UpdateStartStageJumpEnd()
{
	mMoveSpeed = CVector::zero;
	mMoveSpeedY = -0.01f;
	mpSword->SetAlpha(0.0f);
	if (IsAnimationFinished())
	{
		mElapsedTime = 0.0f;
		mpColliderCapsule->SetEnable(true);
		ChangeState(EState::eReady);
		if (mStartStage1)
		{
			mScaleTime = 0.0f;
			mMoveSpeedY = 0.0f;
			Scale(CVector(1.0f, 1.0f, 1.0f));
			SetAlpha(0.0f);
			CFade::FadeIn();
			ChangeState(EState::eReady);
			CGameManager::Stage1();
		}
		else if (mStartStage2)
		{
			mScaleTime = 0.0f;
			mMoveSpeedY = 0.0f;
			Scale(CVector(1.0f, 1.0f, 1.0f));
			SetAlpha(0.0f);
			CFade::FadeIn();
			ChangeState(EState::eReady);
			CGameManager::Stage2();
		}
		else if (mStartStage3)
		{
			mScaleTime = 0.0f;
			mMoveSpeedY = 0.0f;
			Scale(CVector(1.0f, 1.0f, 1.0f));
			SetAlpha(0.0f);
			CFade::FadeIn();
			ChangeState(EState::eReady);
			CGameManager::Stage3();
		}
		else if (mStartStage4)
		{
			mScaleTime = 0.0f;
			mMoveSpeedY = 0.0f;
			Scale(CVector(1.0f, 1.0f, 1.0f));
			SetAlpha(0.0f);
			CFade::FadeIn();
			ChangeState(EState::eReady);
			CGameManager::Stage4();
		}
	}
}

// 死亡
void CPlayer::UpdateDeath()
{
	mMoveSpeed = CVector::zero;
	mMoveSpeedY += GRAVITY;

	mDeath = true;

	if (mState == EState::eIdle || IsAnimationFinished())
	{
		mpDamageCol->SetEnable(false);
		mpSword->AttackEnd();
		mMoveSpeed = CVector::zero;
		mMoveSpeedY = 0.0f;
		if (mpCutInDeath->IsPlaying())
		{
			// キャラクターの更新
			CXCharacter::Update();
			return;
		}
		else
		{
			mpCutInDeath->Setup(this);
			mpCutInDeath->Start();
		}
		ChangeAnimation(EAnimType::eDeath);
		ChangeState(EState::eDeathEnd);
	}
}

// 死亡処理終了
void CPlayer::UpdateDeathEnd()
{
	mMoveSpeed = CVector::zero;
	mMoveSpeedY += GRAVITY;
	if (IsAnimationFinished())
	{
		mpCutInDeath->End();
		mDamaged = false;
		mDamageObject = false;
		mDamageEnemy = false;
		mCharaStatus = mCharaMaxStatus;
		mpHpGauge->SetMaxValue(mCharaMaxStatus.hp);
		mpDamageCol->SetEnable(true);
		// 死亡
		CGameManager::StageOver();
		// 死亡したら、次のステージ開始まで準備中の状態に変更
		ChangeState(EState::eReady);
	}
}

// 再起
void CPlayer::UpdateReStart()
{
	if (IsAnimationFinished())
	{
		mDamageObject = false;
		Position(-195.0f, 200.0f, 9.0f);
		ChangeState(EState::eIdle);
	}
}

// 敵の攻撃を受けた時
void CPlayer::UpdateHit()
{
	mClimb = false;
	mDamaged = true;

	mMoveSpeed = CVector::zero;

	if (!mDamageEnemy)
	{
		TakeDamage(3);
		mDamageEnemy = true;
	}

	if (mSpik1)
	{
		mSpik1 = false;
		if (mpSpiky1 != nullptr)
		{
			mpSpiky1->Kill();
		}
	}

	mpDamageCol->SetEnable(false);
	ChangeAnimation(EAnimType::eHitJ);

	CHPJudgment();
}

// 敵の弾の攻撃を受けた時
void CPlayer::UpdateHitBullet()
{
	mClimb = false;
	mDamaged = true;

	mMoveSpeed = CVector::zero;

	if (!mDamageEnemy)
	{
		TakeDamage(1);
		mDamageEnemy = true;
	}

	if (mSpik1)
	{
		mSpik1 = false;
		if (mpSpiky1 != nullptr)
		{
			mpSpiky1->Kill();
		}
	}

	mpDamageCol->SetEnable(false);
	ChangeAnimation(EAnimType::eHit);

	CHPJudgment();
}

// 敵の剣の攻撃を受けた時
void CPlayer::UpdateHitSword()
{
	mClimb = false;
	mDamaged = true;
	mMoveSpeed = CVector::zero;

	if (!mDamageEnemy)
	{
		mDamageEnemy = true;
	}

	if (mSpik1)
	{
		mSpik1 = false;
		if (mpSpiky1 != nullptr)
		{
			mpSpiky1->Kill();
		}
	}

	mpDamageCol->SetEnable(false);
	ChangeAnimation(EAnimType::eHit);

	CHPJudgment();
}

// ダメージを受ける(オブジェクト)
void CPlayer::UpdateHitObj()
{
	mClimb = false;
	mDamaged = true;
	mMoveSpeed = CVector::zero;

	if (!mDamageEnemy)
	{
		mDamageEnemy = true;
	}

	if (mSpik1)
	{
		mSpik1 = false;
		if (mpSpiky1 != nullptr)
		{
			mpSpiky1->Kill();
		}
	}

	mpDamageCol->SetEnable(false);
	ChangeAnimation(EAnimType::eHit);

	CHPJudgment();
}

// 落下ダメージ
void CPlayer::UpdateFallDamage()
{
	mDamaged = true;
	mMoveSpeed = CVector::zero;

	if (!mFallDamage)
	{
		mFallDamage = true;
		TakeDamage(1);
	}

	if (mSpik1)
	{
		mSpik1 = false;
		if (mpSpiky1 != nullptr)
		{
			mpSpiky1->Kill();
		}
	}

	mpDamageCol->SetEnable(false);

	ChangeAnimation(EAnimType::eFallingFlat);
	if (IsAnimationFinished())
	{
		if (mCharaStatus.hp > 0)
		{
			mFallDamage = false;
			mIsPlayedHitDamageSE = false;
			ChangeState(EState::eStandUp);
		}
		else if (mCharaStatus.hp <= 0)
		{
			mDeath = true;
			mFallDamage = false;
			mpDamageCol->SetEnable(false);
			ChangeState(EState::eDeath);
		}
	}
}

// 登る状態
void CPlayer::UpdateClimb()
{
	mClimb = true;
	mIsAttack = false;
	mWeaponTime = 0.0f;
	mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_Spine1"));
	mMoveSpeed = CVector::zero;
	mMoveSpeedY = 0.0f;
	// プレイヤーの移動ベクトルを求める
	CVector move = ClimbMoveVec();
	
	ChangeAnimation(EAnimType::eClimb);

	// 求めた移動ベクトルの長さで入力されているか判定
	if (move.LengthSqr() > 0.0f)
	{
		// 上下キーが入力されている場合
		if (move.Y() != 0.0f)
		{
			// 壁を登っている時は、アニメーションを通常再生し、
			// 壁を降りているときはアニメーションを逆再生する
			SetAnimationSpeed(move.Y() > 0.0f ? 1.0f : -1.0f);
		}
		// 左右キーのみが入力されている場合
		else
		{
			SetAnimationSpeed(1.0f);
		}
	}
	// 移動キーが入力されていない場合
	else
	{
		// アニメーションを停止する
		SetAnimationSpeed(0.0f);
	}
	mMoveSpeed = move * CLIMB_SPEED;

	if (CInput::PushKey('E'))
	{
		mClimb = false;
		ChangeState(EState::eJumpStart);
	}

	// 登れる壁の範囲外に出た場合
	if (!mClimbWall)
	{
		// 登れる壁の頂上に触れていた場合
		if (mClimbWallTop)
		{
			// 頂上へ上る状態へ移行
			ChangeState(EState::eClimbedTop);
		}
		// 登れる壁の頂上に触れていなかった場合
		else
		{
			// 登っている状態を解除して、待機状態へ移行
			mClimb = false;
			ChangeState(EState::eIdle);
		}
	}
	//CDebugPrint::Print("mClimbWall: %s\n", mClimbWall ? "true" : "false");
	//CDebugPrint::Print("mClimbWallTop: %s\n", mClimbWallTop ? "true" : "false");
}

// 頂上まで登った
void CPlayer::UpdateClimbedTop()
{
	mClimb = true;
	mMoveSpeed = CVector::zero;
	mMoveSpeedY = 0.0f;

	// ステップ管理
	switch (mStateStep)
	{
		// ステップ0: 初期化処理
	case 0:
	{
		// 頂上へ上り切った時の移動前の座標と移動後の座標を設定
		mClimbedStartPos = Position();
		CVector  moveUp, moveForward;
		mpClimbWall->GetClimbedMoveVec(&moveUp, &moveForward);
		mpMetalLadder->GetClimbedMoveVec(&moveUp, &moveForward);
		mClimbedMovedUpPos = mClimbedStartPos + Rotation() * moveUp;
		mClimbedMovedPos = mClimbedMovedUpPos + Rotation() * moveForward;

		mElapsedTime = 0.0f;
		// 頂上へ上り切った時のアニメーションを再生
		ChangeAnimation(EAnimType::eClimbedTop);

		// 次のステップへ
		mStateStep++;
		break;
	}
	// ステップ1: 登り切った時のアニメーションの経過待ち
	case 1:
	{
		float ratio = GetAnimationFrameRatio();
		// 登り切った時のアニメーションの半分までは
		// プレイヤーを上方向に移動する
		if (ratio < 0.5f)
		{
			float per = ratio / 0.5f;
			CVector pos = CVector::Lerp(mClimbedStartPos, mClimbedMovedUpPos, per);
			Position(pos);
		}
		// 登り切った時のアニメーションの半分を超えたら、次のステップへ
		else
		{
			Position(mClimbedMovedUpPos);
			mStateStep++;
		}
		break;
	}
		// ステップ2: 頂上へ上り切った後の移動処理
	case 2:
		// 経過時間に合わせて移動
		if (mElapsedTime < CLIMBED_TOP_TIME)
		{
			float per = mElapsedTime / CLIMBED_TOP_TIME;
			CVector pos = CVector::Lerp(mClimbedMovedUpPos, mClimbedMovedPos, per);
			Position(pos);
			mElapsedTime += Time::DeltaTime();
		}
		// 移動が終わった
		else
		{
			Position(mClimbedMovedPos);
			// 壁を登っている状態を解除
			mClimb = false;
			ChangeState(EState::eIdle);
		}
		break;
	}
}

// 金属梯子に登る状態
void CPlayer::UpdateMetalLadder()
{
	mClimb = true;
	mIsAttack = false;
	mWeaponTime = 0.0f;
	mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_Spine1"));
	mMoveSpeed = CVector::zero;
	mMoveSpeedY = 0.0f;
	// プレイヤーの移動ベクトルを求める
	CVector move = ClimbMoveUpVec();

	ChangeAnimation(EAnimType::eClimb);

	// 求めた移動ベクトルの長さで入力されているか判定
	if (move.LengthSqr() > 0.0f)
	{
		// 上下キーが入力されている場合
		if (move.Y() != 0.0f)
		{
			// 壁を登っている時は、アニメーションを通常再生し、
			// 壁を降りているときはアニメーションを逆再生する
			SetAnimationSpeed(move.Y() > 0.0f ? 1.0f : -1.0f);
		}
	}
	// 移動キーが入力されていない場合
	else
	{
		// アニメーションを停止する
		SetAnimationSpeed(0.0f);
	}
	mMoveSpeed = move * CLIMB_SPEED;

	if (CInput::PushKey('E'))
	{
		mClimb = false;
		mClimbTime = 0.0f;
		ChangeState(EState::eJumpStart);
	}

	if (mClimbTime >= 0.5f)
	{
		if (mIsGrounded)
		{
			mClimb = false;
			mClimbTime = 0.0f;
			ChangeState(EState::eIdle);
		}
	}
	else
	{
		mClimbTime += Time::DeltaTime();
	}

	// 登れる壁の範囲外に出た場合
	if (!mClimbWall)
	{
		// 登れる壁の頂上に触れていた場合
		if (mClimbWallTop)
		{
			// 頂上へ上る状態へ移行
			ChangeState(EState::eMetalLadderTop);
		}
		// 登れる壁の頂上に触れていなかった場合
		else
		{
			// 登っている状態を解除して、待機状態へ移行
			mClimb = false;
			ChangeState(EState::eIdle);
		}
	}
	//CDebugPrint::Print("mClimbWall: %s\n", mClimbWall ? "true" : "false");
	//CDebugPrint::Print("mClimbWallTop: %s\n", mClimbWallTop ? "true" : "false");
}

// 金属梯子の頂上に登った状態
void CPlayer::UpdateMetalLaddertop()
{
	mClimb = true;
	mMoveSpeed = CVector::zero;
	mMoveSpeedY = 0.0f;
	mClimbTime = 0.0f;

	// ステップ管理
	switch (mStateStep)
	{
		// ステップ0: 初期化処理
	case 0:
	{
		// 頂上へ上り切った時の移動前の座標と移動後の座標を設定
		mClimbedStartPos = Position();
		CVector  moveUp, moveForward;
		mpMetalLadder->GetClimbedMoveVec(&moveUp, &moveForward);
		mClimbedMovedUpPos = mClimbedStartPos + Rotation() * moveUp;
		mClimbedMovedPos = mClimbedMovedUpPos + Rotation() * moveForward;

		mElapsedTime = 0.0f;
		// 頂上へ上り切った時のアニメーションを再生
		ChangeAnimation(EAnimType::eClimbedTop);

		// 次のステップへ
		mStateStep++;
		break;
	}
	// ステップ1: 登り切った時のアニメーションの経過待ち
	case 1:
	{
		float ratio = GetAnimationFrameRatio();
		// 登り切った時のアニメーションの半分までは
		// プレイヤーを上方向に移動する
		if (ratio < 0.5f)
		{
			float per = ratio / 0.5f;
			CVector pos = CVector::Lerp(mClimbedStartPos, mClimbedMovedUpPos, per);
			Position(pos);
		}
		// 登り切った時のアニメーションの半分を超えたら、次のステップへ
		else
		{
			Position(mClimbedMovedUpPos);
			mStateStep++;
		}
		break;
	}
	// ステップ2: 頂上へ上り切った後の移動処理
	case 2:
		// 経過時間に合わせて移動
		if (mElapsedTime < CLIMBED_TOP_TIME)
		{
			float per = mElapsedTime / CLIMBED_TOP_TIME;
			CVector pos = CVector::Lerp(mClimbedMovedUpPos, mClimbedMovedPos, per);
			Position(pos);
			mElapsedTime += Time::DeltaTime();
		}
		// 移動が終わった
		else
		{
			Position(mClimbedMovedPos);
			// 壁を登っている状態を解除
			mClimb = false;
			ChangeState(EState::eIdle);
		}
		break;
	}
}

// 金網に登る状態
void CPlayer::UpdateWireClimb()
{
	mClimb = true;
	mIsAttack = false;
	mWeaponTime = 0.0f;
	mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_Spine1"));
	mMoveSpeed = CVector::zero;
	mMoveSpeedY = 0.0f;
	// プレイヤーの移動ベクトルを求める
	CVector move = ClimbMoveVec();

	ChangeAnimation(EAnimType::eClimb);

	// 求めた移動ベクトルの長さで入力されているか判定
	if (move.LengthSqr() > 0.0f)
	{
		// 上下キーが入力されている場合
		if (move.Y() != 0.0f)
		{
			// 壁を登っている時は、アニメーションを通常再生し、
			// 壁を降りているときはアニメーションを逆再生する
			SetAnimationSpeed(move.Y() > 0.0f ? 1.0f : -1.0f);
		}
		// 左右キーのみが入力されている場合
		else
		{
			SetAnimationSpeed(1.0f);
		}
	}
	// 移動キーが入力されていない場合
	else
	{
		// アニメーションを停止する
		SetAnimationSpeed(0.0f);
	}
	mMoveSpeed = move * CLIMB_SPEED;

	if (CInput::PushKey('E'))
	{
		mClimb = false;
		mpClimbCol->SetEnable(false);
		ChangeState(EState::eJumpStart);
		mMoveSpeed = CVector(-0.1f, 0.0f, 0.0f);
	}

	// 登れる壁の範囲外に出た場合
	if (!mClimbWall)
	{
		// 登れる壁の頂上に触れていた場合
		if (mClimbWallTop)
		{
			// 頂上へ上る状態へ移行
			ChangeState(EState::eWireClimbedTop);
		}
		// 登れる壁の頂上に触れていなかった場合
		else
		{
			// 登っている状態を解除して、待機状態へ移行
			mClimb = false;
			ChangeState(EState::eIdle);
		}
	}

	if (mClimbStaminaTime >= 0.2f)
	{
		mCharaStatus.stamina -= 2;
		mClimbStaminaTime = 0.0f;
	}
	else
	{
		mClimbStaminaTime += Time::DeltaTime();
	}

	if (mCharaStatus.stamina <= 0)
	{
		mClimb = false;
		ChangeState(EState::eIdle);
	}
	//CDebugPrint::Print("stamina:%f\n", mClimbSt);

	//CDebugPrint::Print("mClimbWall: %s\n", mClimbWall ? "true" : "false");
	//CDebugPrint::Print("mClimbWallTop: %s\n", mClimbWallTop ? "true" : "false");
}

// 金網の頂上に登った状態
void CPlayer::UpdateWireClimbedTop()
{
	mClimb = true;
	mMoveSpeed = CVector::zero;
	mMoveSpeedY = 0.0f;

	// ステップ管理
	switch (mStateStep)
	{
		// ステップ0: 初期化処理
	case 0:
	{
		// 頂上へ上り切った時の移動前の座標と移動後の座標を設定
		mClimbedStartPos = Position();
		CVector  moveUp, moveForward;
		mpWireWall->GetClimbedMoveVec(&moveUp, &moveForward);
		mClimbedMovedUpPos = mClimbedStartPos + Rotation() * moveUp;
		mClimbedMovedPos = mClimbedMovedUpPos + Rotation() * moveForward;

		mElapsedTime = 0.0f;
		// 頂上へ上り切った時のアニメーションを再生
		ChangeAnimation(EAnimType::eClimbedTop);

		// 次のステップへ
		mStateStep++;
		break;
	}
	// ステップ1: 登り切った時のアニメーションの経過待ち
	case 1:
	{
		float ratio = GetAnimationFrameRatio();
		// 登り切った時のアニメーションの半分までは
		// プレイヤーを上方向に移動する
		if (ratio < 0.5f)
		{
			float per = ratio / 0.5f;
			CVector pos = CVector::Lerp(mClimbedStartPos, mClimbedMovedUpPos, per);
			Position(pos);
		}
		// 登り切った時のアニメーションの半分を超えたら、次のステップへ
		else
		{
			Position(mClimbedMovedUpPos);
			mStateStep++;
		}
		break;
	}
	// ステップ2: 頂上へ上り切った後の移動処理
	case 2:
		// 経過時間に合わせて移動
		if (mElapsedTime < WIREMESH_TOP_TIEM)
		{
			float per = mElapsedTime / WIREMESH_TOP_TIEM;
			CVector pos = CVector::Lerp(mClimbedMovedUpPos, mClimbedMovedPos, per);
			Position(pos);
			mElapsedTime += Time::DeltaTime();
		}
		// 移動が終わった
		else
		{
			Position(mClimbedMovedPos);
			// 壁を登っている状態を解除
			mClimb = false;
			ChangeState(EState::eIdle);
		}
		break;
	}
}

// 落下状態
void CPlayer::UpdateFalling()
{
	mMoveSpeedY = -2.5f;
	ChangeAnimation(EAnimType::eFalling);
	if (mIsGrounded)
	{
		if (mCharaStatus.hp > 0)
		{
			ChangeState(EState::eFallDamege);
		}
		else if (mCharaStatus.hp <= 0)
		{
			ChangeState(EState::eFallDamege);
		}
	}
}

// 立ち上がる
void CPlayer::UpdateStandUp()
{
	mMoveSpeed = CVector::zero;
	mMoveSpeedY = 0.0f;
	ChangeAnimation(EAnimType::eStandUp);
	if (IsAnimationFinished())
	{
		mDamageEnemy = false;
		mDamaged = false;
		mDamageObject = false;
		ChangeState(EState::eIdle);
	}
}

// ジャンプ開始
void CPlayer::UpdateJumpStart()
{
	// 足元に煙のエフェクトを発生させる
	PlayStepSmoke();

	mMoveSpeedY += JUMP_SPEED;
	mIsJumping = true;
	mIsGrounded = false;

	JumpingHpJudgment();
	ChangeAnimation(EAnimType::eJumpStart);
	ChangeState(EState::eJump);
}

// ジャンプ中
void CPlayer::UpdateJump()
{
	if (mMoveSpeedY <= 0.0f)
	{
		mIsJumping = false;
		ChangeAnimation(EAnimType::eJumpEnd);
		ChangeState(EState::eJumpEnd);
	}

	JumpingHpJudgment();
}

// ジャンプ終了
void CPlayer::UpdateJumpEnd()
{
	mMoveSpeed = CVector::zero;

	if (IsAnimationFinished() && mIsGrounded)
	{
		ChangeState(EState::eIdle);
	}

	JumpingHpJudgment();
	mpClimbCol->SetEnable(true);
}

// ダッシュジャンプ開始
void CPlayer::UpdateDashJumpStart()
{
	// 足元に煙のエフェクトを発生させる
	PlayStepSmoke();
	mDash = false;

	mMoveSpeedY += JUMP_DASH;
	mIsJumping = true;
	mIsGrounded = false;

	JumpingHpJudgment();
	ChangeAnimation(EAnimType::eDashJumpStart);
	ChangeState(EState::eDashJump);
}

// ダッシュジャンプ中
void CPlayer::UpdateDashJump()
{
	mIsJumping = false;

	if (mIsGrounded)
	{
		// もしかしたらいるかもしれないので残しておく
		//mIsJumping = false;
		ChangeAnimation(EAnimType::eDashJumpEnd);
		ChangeState(EState::eDashJumpEnd);
	}

	JumpingHpJudgment();
}

// ダッシュジャンプ終了
void CPlayer::UpdateDashJumpEnd()
{
	mMoveSpeed = CVector::zero;

	if (IsAnimationFinished() && mIsGrounded)
	{
		ChangeState(EState::eIdle);
	}

	JumpingHpJudgment();
	mpClimbCol->SetEnable(true);
}

// 跳ねる処理開始
void CPlayer::UpdateJumpingStart()
{
	mMoveSpeedY = JUMP_BOUNCE;
	mIsGrounded = false;
	mDamageEnemy = false;

	JumpingHpJudgment();
	ChangeAnimation(EAnimType::eJumpStart);
	ChangeState(EState::eJumping);
}

// 跳ねる処理
void CPlayer::UpdateJumping()
{
	if (mCharaStatus.stamina < mCharaMaxStatus.stamina)
	{
		mCharaStatus.stamina += 1;
	}

	if (mMoveSpeedY <= 0.0f)
	{
		ChangeAnimation(EAnimType::eJumpEnd);
		ChangeState(EState::eJumpingEnd);
	}

	JumpingHpJudgment();
}

// 跳ねる処理終了
void CPlayer::UpdateJumpingEnd()
{
	mMoveSpeed = CVector::zero;

	if (mCharaStatus.stamina < mCharaMaxStatus.stamina)
	{
		mCharaStatus.stamina += 1;
	}

	if (IsAnimationFinished() && mIsGrounded)
	{
		ChangeState(EState::eIdle);
	}

	JumpingHpJudgment();
	mpClimbCol->SetEnable(true);
}

// 跳び跳ねる開始
void CPlayer::UpdateHighJumpingStart()
{
	mMoveSpeedY = JUMP_HIGH_BOUNCE;
	mIsGrounded = false;

	JumpingHpJudgment();
	ChangeAnimation(EAnimType::eJumpStart);
	ChangeState(EState::eHighJumping);
}

// 跳び跳ねる
void CPlayer::UpdateHighJumping()
{
	if (mCharaStatus.stamina < mCharaMaxStatus.stamina)
	{
		mCharaStatus.stamina += 1;
	}

	if (mMoveSpeedY <= 0.0f)
	{
		ChangeAnimation(EAnimType::eJumpEnd);
		ChangeState(EState::eHighJumpingEnd);
	}

	JumpingHpJudgment();
}

// 跳び跳ねる終了
void CPlayer::UpdateHighJumpingEnd()
{
	mMoveSpeed = CVector::zero;

	if (mCharaStatus.stamina < mCharaMaxStatus.stamina)
	{
		mCharaStatus.stamina += 1;
	}

	if (IsAnimationFinished() && mIsGrounded)
	{
		ChangeState(EState::eIdle);
	}

	JumpingHpJudgment();
}

// 目的位置までジャンプ開始
void CPlayer::UpdateTargetPositionStart()
{
	mMoveSpeedY = JUMP_TARGET;
	mIsGrounded = false;

	JumpingHpJudgment();
	ChangeAnimation(EAnimType::eJumpStart);
	ChangeState(EState::eTarget);
}

// 目的位置までジャンプ
void CPlayer::UpdateTargetPosition()
{
	if (mCharaStatus.stamina < mCharaMaxStatus.stamina)
	{
		mCharaStatus.stamina += 1;
	}

	if (IsAnimationFinished())
	{
		ChangeAnimation(EAnimType::eDashJumpLoop);
	}

	// 目標地点まで移動させる処理
	CPlayer* player = CPlayer::Instance();
	CVector playerPos = player->Position();
	CVector targetPos = CVector(0.0f, 10.0f, 480.0f); // 個々の処理は変更予定
	float duration = 25.0f;
	float stopDistance = 3.0f; // プレイヤーが目標に到達とみなす距離の閾値

	if (mElapsedTime < duration) 
	{
		float per = mElapsedTime / duration;
		CVector pos = CVector::Lerp(playerPos, targetPos, per);
		player->Position(pos);

		// プレイヤーの向きを調整（左右の回転のみ）
		CVector direction = targetPos - playerPos;
		direction.Y(0.0f); //CVector(direction.X(), 0.0f, direction.Z()); // 上下の回転を無視
		direction.Normalize(); // 移動ベクトルを正規化

		player->Rotation(CQuaternion::LookRotation(direction)); // 新しい向きを設定

		 // プレイヤーと目標位置との距離を計算し、ある閾値以下なら終了
		float distanceToTarget = (targetPos - playerPos).Length();
		if (distanceToTarget <= stopDistance) {
			Position(targetPos); // 確実に最終位置に設定
			// 必要に応じてmElapsedTimeをリセット
			mElapsedTime = 0.0f;
		}
		else 
		{
			mElapsedTime += Time::DeltaTime();
		}
	}
	else 
	{
		Position(targetPos); // 確実に最終位置に設定
		// 必要に応じてmElapsedTimeをリセット
		mElapsedTime = 0.0f;
	}

	if (mMoveSpeedY <= 0.0f)
	{
		ChangeAnimation(EAnimType::eJumpEnd);
		ChangeState(EState::eTargetEnd);
	}

	JumpingHpJudgment();
}

// 目的位置までジャンプ終了
void CPlayer::UpdateTargetPositionEnd()
{
	mMoveSpeed = CVector::zero;

	if (mCharaStatus.stamina < mCharaMaxStatus.stamina)
	{
		mCharaStatus.stamina += 1;
	}

	if (IsAnimationFinished() && mIsGrounded)
	{
		ChangeState(EState::eIdle);
	}

	JumpingHpJudgment();
	mpClimbCol->SetEnable(true);
}

#define REFLECTION 0.4f
// 跳ね返させる処理
void CPlayer::UpdateReflection()
{
	ChangeAnimation(EAnimType::eHitJ);
	switch (mStateStep)
	{
	case 0:
		if (mReflectTime < REFLECTION)
		{
			mMoveSpeed = mReflectionNormal * 1.5f;
			mReflectTime += Time::DeltaTime();
		}
		else
		{
			mStateStep++;
		}
		break;
	case 1:
		if (mCharaStatus.hp > 0)
		{
			mDamageEnemy = false;
			mIsPlayedHitDamageSE = false;
			mStateStep = 0;
			mReflectTime = 0.0f;
			ChangeState(EState::eIdle);
		}
		else if (mCharaStatus.hp <= 0)
		{
			mDeath = true;
			mFallDamage = false;
			mpDamageCol->SetEnable(false);
			mStateStep = 0;
			mReflectTime = 0.0f;
			ChangeState(EState::eDeath);
		}
		break;
	}
	//CDebugPrint::Print("mStateStep:%d\n", mStateStep);
}

// 死亡ジャンプ開始
void CPlayer::UpdateDeathJumpStart()
{
	mSavePoint1 = false;
	mSavePoint2 = false;
	mFallDamage = false;

	Scale(CVector(0.0f, 0.0f, 0.0f));
	if (mpCutInDeathJump->IsPlaying())
	{

	}
	else
	{
		mpCutInDeathJump->Setup(this);
		mpCutInDeathJump->Start();
	}
	ChangeAnimation(EAnimType::eFalling);
	ChangeState(EState::eDeathJump);

	mMoveSpeedY = JUMP_DEATH;
	mIsGrounded = false;
}

// 死亡ジャンプ
void CPlayer::UpdateDeathJump()
{
	// 目標地点まで移動させる処理
	CPlayer* player = CPlayer::Instance();
	CVector playerPos = player->Position();
	CVector current = VectorZ();
	CVector targetPos = playerPos + current * 0.5f;
	float per = mResultElapsedTime / 1.5f;
	CVector pos = CVector::Lerp(playerPos, targetPos, per);
	Position(pos);

	// 目標の大きさにする処理
	float perscale = mScaleTime / 1.0f;
	CVector scale = CVector(0.0f, 0.0f, 0.0f);
	CVector targetscale = CVector(1.0f, 1.0f, 1.0f);
	CVector ScaleCur = CVector::Lerp(scale, targetscale, perscale);
	Scale(ScaleCur);

	mResultElapsedTime += Time::DeltaTime();
	mScaleTime += Time::DeltaTime();

	if (mResultElapsedTime > 1.5f)
	{
		if (mIsGrounded)
		{
			mResultElapsedTime = 0.0f;
			Scale(CVector(1.0f, 1.0f, 1.0f));
			ChangeAnimation(EAnimType::eFallingFlat);
			ChangeState(EState::eDeathJumpEnd);
		}
	}
}

// 死亡ジャンプ終了
void CPlayer::UpdateDeathJumpEnd()
{
	if (mIsGrounded)
	{
		ChangeState(EState::eIdle);
	}
}

// 指定された位置まで移動する
void CPlayer::UpdateMoveTo()
{
	mMoveSpeed = CVector::zero;

	switch (mStateStep)
	{
		// ステップ0 プレイヤーを移動方向へ向ける
	case 0:
	{
		// 移動開始前は待機モーション
		ChangeAnimation(EAnimType::eIdle);
		// 移動開始位置から移動終了位置の方向ベクトルを求める
		CVector v = mMoveTargetPos - mMoveStartPos;
		v.Y(0.0f);
		// 求めた方向ベクトルの向きへプレイヤーを向ける
		Rotation(CQuaternion::LookRotation(v.Normalized()));
		mStateStep++;
		break;
	}
		// ステップ1 プレイヤーを移動
	case 1:
		// プレイヤーをダッシュモーションへ変更
		ChangeAnimation(EAnimType::eDash);
		// 移動時間を経過していない
		if (mElapsedTime < MOVE_TO_TIME)
		{
			// 経過時間の割合を求め、その割合に沿った現在位置を求めて設定
			float percent = mElapsedTime / MOVE_TO_TIME;
			CVector pos = CVector::Lerp(mMoveStartPos, mMoveTargetPos, percent);
			pos.Y(Position().Y());
			Position(pos);

			// 経過時間を進行
			mElapsedTime += Time::DeltaTime();
		}
		// 移動時間を経過した
		else
		{
			// 移動終了位置に移動
			CVector pos = mMoveTargetPos;
			pos.Y(Position().Y());
			Position(pos);
			mStateStep++;
		}
		break;
		 // ステップ2 移動終了
	case 2:
		// 移動終了したら、待機モーションへ切り替え
		ChangeAnimation(EAnimType::eIdle);
		break;
	}
}

// 指定された位置まで移動開始
void CPlayer::MoveTo(const CVector& pos)
{
	// 指定された位置まで移動できない状態であれば、処理しない
	if (!CanMoveTo()) return;

	mElapsedTime = 0.0f;
	// 移動前の座標と移動後の座標を設定
	mMoveStartPos = Position();
	mMoveTargetPos = pos;

	// 指定された位置までの移動状態へ遷移
	ChangeState(EState::eMoveTo);
}

// 指定された位置までの移動が出来るかどうか
bool CPlayer::CanMoveTo() const
{
	// ステージ選択画面以外のステージであれば、移動できない
	if (CGameManager::StageNo() != 0) return false;
	// 待機状態もしくは、指定位置まで移動している状態で無ければ、移動できない
	if (mState != EState::eIdle && mState != EState::eMoveTo) return false;
	// 移動終了ステップまで進行していなければ、移動できない
	if (mState == EState::eMoveTo && mStateStep < 2) return false;

	// 全ての条件を満たしたら移動可能
	return true;
}

// 指定された番号のステージを開始
void CPlayer::StartStage(int stageNo)
{
	// ステージ1に入れる状態で、ステージ1を開始したら
	if (stageNo == 1)
	{
		// ステージ1のフラグをオン
		mStartStage1 = true;
	}
	else if (stageNo == 2 && mIsStartStage2)
	{
		mStartStage2 = true;
	}
	// ステージ3を開始したら、ステージ3のフラグをオン
	else if (stageNo == 3 && mIsStartStage3)
	{
		mStartStage3 = true;
	}
	// ステージ4を開始したら、ステージ4のフラグをオン
	else if (stageNo == 4 && mIsStartStage4)
	{
		mStartStage4 = true;
	}
	// それ以外は、ステージ移動状態へ進行しない
	else return;

	// ステージ移行ジャンプに移動する
	ChangeState(EState::eStartStageJumpStart);
}

// 足元に煙のエフェクトを発生
void CPlayer::PlayStepSmoke()
{
	CVector pos = Position() + CVector(0.0f, 2.0f, 0.0f);
	CSmoke* smoke = new CSmoke(ETag::eSmoke, ETaskPriority::eEffect);
	smoke->Position((pos));

	mSmokeList.push_back(smoke);
}

// 足元の煙エフェクトの更新
void CPlayer::UpdateStepSmoke()
{
	// 最後まで再生した煙エフェクトを
	// リストから取り除き、削除する
	auto itr = mSmokeList.begin();
	auto itr_end = mSmokeList.end();
	while (itr != itr_end)
	{
		CSmoke* smoke = *itr;
		if (smoke->IsDeath())
		{
			smoke->Kill();
			itr = mSmokeList.erase(itr);
		}
		else
		{
			itr++;
		}
	}

	if (IsEnableStepSmoke())
	{
		mMoveDistance += (Position() - mLastPos).Length();
		if (mMoveDistance >= 20.0f)
		{
			PlayStepSmoke();
			mMoveDistance -= 20.0f;
		}
	}
	else
	{
		mMoveDistance = 0.0f;
	}
}

// 足元の煙エフェクトを表示する状態かどうか
bool CPlayer::IsEnableStepSmoke() const
{
	// ダッシュ中は煙エフェクトを出す
	if (mDash) return true;
	// ステージ選択画面の移動中は煙エフェクトを出す
	if (mState == EState::eMoveTo && mStateStep < 2) return true;
	return false;
}

void CPlayer::CheckUnderFootObject()
{
	if (mpUnderFootObject == nullptr) return;

	if (mState != EState::eJumpStart &&
		mState != EState::eJump &&
		mState != EState::eJumpEnd)
	{
		CVector start = Position() + CVector::up * 1.0f;
		CVector end = start + CVector::down * 20.0f;
		CHitInfo hit;
		if (mpUnderFootObject->CollisionRay(start, end, &hit))
		{
			Position(hit.cross + CVector::down * 1.0f);
			mMoveSpeedY = 0.0f;
			mIsGrounded = true;
			mGroundNormal = hit.adjust.Normalized();
		}
		else
		{
			mpUnderFootObject = nullptr;
		}
	}
}

// 移動速度を取得
CVector CPlayer::Velocity() const
{
	return mMoveSpeed + CVector(0.0f, mMoveSpeedY, 0.0f);
}

// 更新
void CPlayer::Update()
{
	//CDebugPrint::Print("speed:%f:\n", GetSpikyBallSpeed());
	//CDebugPrint::Print("mSpik2:%s\n", mSpik2 ? "true" : "false");
	//CDebugPrint::Print("strongpos:%f %f %f\n", mAttackStrongPos.X(), mAttackStrongPos.Y(), mAttackStrongPos.Z());
	mIsStartStage2 = true;
	mIsStartStage3 = true;

	SetParent(mpRideObject);
	SetColor(CColor(1.0, 1.0, 1.0, 1.0));
	mpRideObject = nullptr;
	mHpHit = false;

	if (mIsAttackItem)
	{
		mAttackTime -= Time::DeltaTime();
		if (mAttackTime <= 0.0f)
		{
			mIsAttackItem = false;
		}
	}
	else if (mIsHealingItem)
	{
		mHealingTime -= Time::DeltaTime();
		if (mHealingTime <= 0.0f)
		{
			mIsHealingItem = false;
		}
	}

	if (mDamaged)
	{
		CDamageColorTime();
	}

	if (mSpikyBall)
	{
		if (mState != EState::eAttackStrongWait && mpSpiky2 != nullptr)
		{
			mSpikRechargeTime -= Time::DeltaTime();
			if (mSpikRechargeTime <= 0.0f)
			{
				mSpik1 = false;
				mSpik2 = false;
				mpSpiky2 = nullptr;
				mSpikRechargeTime = 0.0f;
			}
		}
	}
	//SCDebugPrint::Print("mTime:%f\n", mSpikRechargeTime);
	// とげボールリチャージ
	//CDebugPrint::Print("spiktime:%f\n", mSpikRechargeTime);

	////////////////////////////////////////////////////////////////////////////////////////


	if (CGameManager::GameState() == EGameState::eStage1)
	{
		ChangeState(EState::eReady);
	}
	else if (CGameManager::GameState() == EGameState::eStage2)
	{
		ChangeState(EState::eReady);
	}
	else if (CGameManager::GameState() == EGameState::eStage3)
	{
		ChangeState(EState::eReady);
	}

	/*if (mState != EState::eJumpStart &&
		mState != EState::eJump &&
		mState != EState::eJumpEnd)
	{
		if (mMoveSpeedY <= -3.5f)
		{
			ChangeState(EState::eFalling);
		}
	}*/

	if (mMoveSpeedY <= -4.0f)
	{
		ChangeState(EState::eFalling);
	}

	if (!(mState == EState::eAttack || mState == EState::eAttackStrong ||
		mState == EState::eAttackWait || mState == EState::eAttackStrongWait))
	{
		if (mIsAttack)
		{
			mWeaponTime += Time::DeltaTime();
			if (mWeaponTime >= 6.0f)
			{
				mIsAttack = false;
				mWeaponTime = 0.0f;
				mpSword->AttachMtx(GetFrameMtx("Armature_mixamorig_Spine1"));
			}
		}
	}
	/*CDebugPrint::Print("mWeaponTime:%f\n", mWeaponTime);
	CDebugPrint::Print("mIsAttack: %s\n", mIsAttack ? "true" : "false");*/

	// 状態に合わせて、更新処理を切り替える
	switch (mState)
	{
		// 準備中の状態
	case EState::eReady:
		UpdateReady();
		break;
	case EState::eFirstAction:
		UpdateFirstAction();
		break;
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// 停止状態
	case EState::eStop:
		UpdateStop();
		break;
		// ダッシュ終了
	case EState::eDashEnd:
		UpdateDashEnd();
		break;
		// 攻撃
	case EState::eAttack:
		UpdateAttack();
		break;
		// 強攻撃開始
	case EState::eAttackStrongStart:
		UpdateAttackStrongStart();
		break;
		// 強攻撃
	case EState::eAttackStrong:
		UpdateAttackStrong();
		break;
		// 強攻撃終了待ち
	case EState::eAttackStrongWait:
		UpdateAttackStrongWait();
		break;
		// ダッシュアタック
	case EState::eAttackDash:
		UpdateDashAttack();
		break;
		// 攻撃終了待ち
	case EState::eAttackWait:
		UpdateAttackWait();
		break;
		// ダッシュアタック終了待ち
	case EState::eAttackDashWait:
		UpdateDashAttackWait();
		break;
		// 回避開始
	case EState::eRotate:
		UpdateRotate();
		break;
		// 回避終了
	case EState::eRotateEnd:
		UpdateRotateEnd();
		break;
		// 敵のダメージHit
	case EState::eHit:
		UpdateHit();
		break;
		// 敵の弾Hit
	case EState::eHitBullet:
		UpdateHitBullet();
		break;
		// 敵の剣Hit
	case EState::eHitSword:
		UpdateHitSword();
		break;
		// ダメージを受ける(オブジェクト)
	case EState::eHitObj:
		UpdateHitObj();
		break;
		// 落下ダメージ
	case EState::eFallDamege:
		UpdateFallDamage();
		break;
		// 登る状態
	case EState::eClimb:
		UpdateClimb();
		break;
		// 頂上まで登った
	case EState::eClimbedTop:
		UpdateClimbedTop();
		break;
		// 金属梯子に登る状態
	case EState::eMetalLadder:
		UpdateMetalLadder();
		break;
		// 金属梯子の頂上に登った状態
	case EState::eMetalLadderTop:
		UpdateMetalLaddertop();
		break;
		// 金網に登る状態
	case EState::eWireClimb:
		UpdateWireClimb();
		break;
		// 金網の頂上まで登った
	case EState::eWireClimbedTop:
		UpdateWireClimbedTop();
		break;
		// クリア
	case EState::eClear:
		UpdateClear();
		break;
		// クリア終了
	case EState::eClearEnd:
		UpdateClearEnd();
		break;
		// リザルト状態
	case EState::eResult:
		UpdateResult();
		break;
		// リザルト状態
	case EState::eResultEnd:
		UpdateResultEnd();
		break;
		// 死亡
	case EState::eDeath:
		UpdateDeath();
		break;
		// 死亡処理終了
	case EState::eDeathEnd:
		UpdateDeathEnd();
		break;
		// 再起
	case EState::eReStart:
		UpdateReStart();
		break;
		// 落下状態
	case EState::eFalling:
		UpdateFalling();
		break;
		// 立ち上がる
	case EState::eStandUp:
		UpdateStandUp();
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
		// 跳ねる開始
	case EState::eJumpingStart:
		UpdateJumpingStart();
		break;
		// 跳ねる
	case EState::eJumping:
		UpdateJumping();
		break;
		// 跳ねる終了
	case EState::eJumpingEnd:
		UpdateJumpingEnd();
		break;
		// 飛び跳ねる開始
	case EState::eHighJumpingStart:
		UpdateHighJumpingStart();
		break;
		// 飛び跳ねる
	case EState::eHighJumping:
		UpdateHighJumping();
		break;
		// 飛び跳ねる終了
	case EState::eHighJumpingEnd:
		UpdateHighJumpingEnd();
		break;
	case EState::eResultJumpStart:
		UpdateResultJumpStart();
		break;
	case EState::eResultJump:
		UpdateResultJump();
		break;
	case EState::eResultJumpEnd:
		UpdateResultJumpEnd();
		break;
	case EState::eStartStageJumpStart:
		UpdateStartStageJumpStart();
		break;
	case EState::eStartStageJump:
		UpdateStartStageJump();
		break;
	case EState::eStartStageJumpEnd:
		UpdateStartStageJumpEnd();
		break;
	case EState::eDashJumpStart:
		UpdateDashJumpStart();
		break;
	case EState::eDashJump:
		UpdateDashJump();
		break;
	case EState::eDashJumpEnd:
		UpdateDashJumpEnd();
		break;
	case EState::eMoveTo:
		UpdateMoveTo();
		break;
	case EState::eTargetStart:
		UpdateTargetPositionStart();
		break;
	case EState::eTarget:
		UpdateTargetPosition();
		break;
	case EState::eTargetEnd:
		UpdateTargetPositionEnd();
		break;
	case EState::eDeathJumpStart:
		UpdateDeathJumpStart();
		break;
	case EState::eDeathJump:
		UpdateDeathJump();
		break;
	case EState::eDeathJumpEnd:
		UpdateDeathJumpEnd();
		break;
	case EState::eRestart:
		UpdateRestart();
		break;
	case EState::eRestartEnd:
		UpdateRestartEnd();
		break;
	case EState::eReflection:
		UpdateReflection();
		break;
	}

	// 待機中とジャンプ中は、移動処理を行う
	if ((mState == EState::eIdle/* && mIsGrounded*/)
		|| mState == EState::eJumpStart
		|| mState == EState::eJump
		|| mState == EState::eJumpEnd
		|| mState == EState::eJumpingStart
		|| mState == EState::eJumping
		|| mState == EState::eJumpingEnd
		|| mState == EState::eHighJumpingStart
		|| mState == EState::eHighJumping
		|| mState == EState::eHighJumpingEnd
		|| mState == EState::eDashJumpStart
		|| mState == EState::eDashJump
		|| mState == EState::eDashJumpEnd
		|| mState == EState::eFalling)
	{
		UpdateMove();
	}

	// 準備中でなければ、移動処理などを行う
	if (mState != EState::eReady)
	{
		if (!mClimb)
		{
			mMoveSpeedY -= GRAVITY;
		}
		else if (mState != EState::eDeath || mState != EState::eDeathEnd)
		{
			mMoveSpeedY = 0.0f;
		}

		CVector moveSpeed = mMoveSpeed + CVector(0.0f, mMoveSpeedY, 0.0f);

		// 移動
		Position(Position() + moveSpeed * 60.0f * Time::DeltaTime());

		// アクションを起こせる状態であれば
		if (IsEnableAction())
		{
			// プレイヤーの向きを調整
			CVector current = VectorZ();
			CVector target = moveSpeed;
			float rotationSpeed = 0.125f;

			if (mState == EState::eClimb)
			{
				// 壁の法線の反対方向を向く
				target = -mClimbNormal;
			}
			else if (mState == EState::eWireClimb)
			{
				// 壁の法線の反対方向を向く
				target = -mClimbNormal;
			}
			else if (mState == EState::eMetalLadder)
			{
				target = -mClimbNormal;
			}
			else if (mState == EState::eReflection)
			{
				target = -mReflectionNormal;
			}
			else if (mState == EState::eAttackStrong)
			{
				if (CInput::Key('A'))
				{
					target = CVector::Cross(CVector::up, current);
					target.Normalize();
					rotationSpeed = 0.005f;
				}
				else if (CInput::Key('D'))
				{
					target = CVector::Cross(current, CVector::up);
					target.Normalize();
					rotationSpeed = 0.005f;
				}
				else
				{
					target = current;
				}
			}
			// それ以外の時は、プレイヤーの移動方向へ向ける
			else
			{
				target = moveSpeed;
				target.Y(0.0f);
				target.Normalize();
			}
			CVector forward = CVector::Slerp(current, target, rotationSpeed);
			Rotation(CQuaternion::LookRotation(forward));
		}
	}

	// 無敵状態だった場合の処理
	if (mInvincible)
	{
		float PosZ = Math::Rand(-10.0f, 10.0f);
		float PosX = Math::Rand(-10.0f, 10.0f);

		mInvincibleTime += Time::DeltaTime();

		// エフェクト生成の条件判定
		if (mInvincibleTime >= 0.25f && !mIsStageClear)
		{
			mInvincibleTime = 0.0f;
			// 無敵エフェクトを生成して、上方向へ飛ばす
			CInvincibleBuffs* invincible = new CInvincibleBuffs
			(
				this,
				Position() + CVector(PosX, 1.0f, PosZ),
				CVector::up, // 上方向に設定
				50.0f,
				20.0f
			);
			// 無敵エフェクトの色設定
			invincible->SetColor(CColor(0.8f, 0.8f, 0.0f, 0.5f));
			invincible->Rotation(0.0f, 90.0f, 0.0f);
			invincible->Scale(0.3f, 0.3f, 0.3f);
			invincible->SetParent(this);
		}

		SetColor(CColor(1.0, 1.0, 0.0, 1.0));
		mInvincibleStartTime -= Time::DeltaTime();

		if (mInvincibleStartTime <= 0.0f)
		{
			mpDamageCol->SetEnable(true);
			mInvincibleStartTime = 10.0f;
			mElapsedTime = 0.0f;
			mInvincible = false;
		}
	}

	// キャラクターのデバッグ表示
	static bool debug = false;
	if (CInput::PushKey('R'))
	{
		debug = !debug;
	}
	if (debug)
	{
		//CDebugPrint::Print(" レベル %d\n", mCharaMaxStatus.level);
		CDebugPrint::Print(" HP%d / %d\n", mCharaStatus.hp, mCharaMaxStatus.hp);
		CDebugPrint::Print(" 攻撃値%d\n", mCharaStatus.power);
		CDebugPrint::Print(" ST%d / %d\n", mCharaStatus.stamina, mCharaMaxStatus.stamina);
	}
	// 1キーを押しながら、↑ ↓ でHP増減
	if (CInput::Key('1'))
	{
		if (CInput::PushKey(VK_UP)) mCharaStatus.hp++;
		else if (CInput::PushKey(VK_DOWN)) mCharaStatus.hp--;
	}
	else if (CInput::Key('2'))
	{
		if (CInput::PushKey(VK_UP))
		{
			mIsStartStage2 = true;
			mIsStartStage3 = true;
			//mIsStartStage4 = true;
		}
		else if (CInput::PushKey(VK_DOWN))
		{
			mIsStartStage2 = false;
			mIsStartStage3 = false;
			mIsStartStage4 = false;
		}
	}

	// 現在のHPを設定
	mpHpGauge->SetValue(mCharaStatus.hp);
	// 現在のスタミナを設定
	mpStaminaGauge->SetSutaminaValue(mCharaStatus.stamina);

	if (mClimbWall && !mClimb && mIsGrounded)
	{
		// Eキーテキスト画像を表示
		CVector EkeyPos = Position() + CVector(20.0f, 20.0f, 0.0f);
		mpClimbUI->SetWorldPos(EkeyPos);
		mpClimbUI->SetShow(true);
	}
	else
	{
		mpClimbUI->SetShow(false);
	}

	// キャラクターの更新
	CXCharacter::Update();
	mpDamageCol->Update();
	mpColliderCapsule->Update();
	mpSword->UpdateAttachMtx();
	
	if (CGameManager::StageNo() == 1 ||
		CGameManager::StageNo() == 2 ||
		CGameManager::StageNo() == 3 ||
		CGameManager::StageNo() == 4)
	{
		mpHpGauge->SetShow(true);
		mpStaminaGauge->SetShow(true);
		mpScreenItem->SetShow(true);
		mpScreenItem->Open();
		mpSpikyBallUI->SetShow(true);
		mpSpikyBallUI->Open();
		mpMeat->SetShow(true);
		mpMeat->Open();
	}
	else if (CGameManager::StageNo() == 0)
	{
		mpHpGauge->SetShow(false);
		mpStaminaGauge->SetShow(false);
		mpScreenItem->SetShow(false);
		mpScreenItem->Close();
		mpSpikyBallUI->SetShow(false);
		mpSpikyBallUI->Close();
		mpMeat->SetShow(false);
		mpMeat->Close();
	}

	mIsGrounded = false;
	mClimbWall = false;
	mClimbWallTop = false;

	// 足元のオブジェクトとの衝突判定
	CheckUnderFootObject();

	// 足元の煙のエフェクト更新
	UpdateStepSmoke();

	// 前回のプレイヤーの座標を更新
	mLastPos = Position();
	
	//CDebugPrint::Print("mIStartStage2:%s\n", mIsStartStage2 ? "true" : "false");
	//CDebugPrint::Print("mIStartStage3:%s\n", mIsStartStage3 ? "true" : "false");
	//CDebugPrint::Print("mMoveDistance:%f\n", mMoveDistance);
	//CDebugPrint::Print("mIsGrounded:%s\n", mIsGrounded ? "true" : "false");
	/*CDebugPrint::Print("mIsGrounded:%s\n", mIsGrounded ? "true" : "false");*/
	//CDebugPrint::Print("mSpeedY:%f\n", mMoveSpeedY);
	//CDebugPrint::Print("Position: %f %f %f\n", Position().X(), Position().Y(), Position().Z());
}

// アイテムを取得
void CPlayer::AddItem(ItemType item)
{
	// アイテムを3つ持っていなかったら、
	// 追加
	if (mInventory[item] <= 3)
	{
		mInventory[item]++;
	}
}

// 取得したアイテムを判定
bool CPlayer::HasItem(ItemType item)
{
	if (mInventory.empty()) {
		return ItemType::NONE == item;
	}
	return mInventory.find(item) != mInventory.end() && mInventory[item] > 0;
}

// 取得したアイテムを判定
void CPlayer::ClearItems()
{
	mInventory.clear();
	//AddItem(ItemType::NONE);
}

// アイテムの取得の条件付けを今後行うための処理
void CPlayer::PickUpItem(ItemType item)
{
	AddItem(item);
}

// 無敵アイテムの使用
void CPlayer::UseInvincibleItem()
{
	if (HasItem(ItemType::INVINCIBLE)) {
		TakeInvincible();
		RemoveItem(ItemType::INVINCIBLE);
	}
}

// 回復薬の使用
void CPlayer::UseHealingItem()
{
	if (HasItem(ItemType::HEALING)) {
		TakeRecovery(1);
		RemoveItem(ItemType::HEALING);
	}
}

// 攻撃力アップアイテムの使用
void CPlayer::UseAttackPotion()
{
	if (HasItem(ItemType::ATTACK_UP)) {
		TakeAttackPotion(1);
		RemoveItem(ItemType::ATTACK_UP);
	}
}

// とげボールの使用
void CPlayer::UseSpikyBall()
{
}

// インベントリから特定のアイテムを削除
void CPlayer::RemoveItem(ItemType item)
{
	if (mInventory[item] > 0) {
		mInventory[item]--;
		if (mInventory[item] == 0) {
			mInventory.erase(item);	 // アイテムが0になったらインベントリから削除する
		}
	}
	else if (CGameManager::StageNo() == 0)
	{
		mInventory.erase(item);
	}
}

// 描画
void CPlayer::Render()
{
	// キャラ描画
	CXCharacter::Render();
}