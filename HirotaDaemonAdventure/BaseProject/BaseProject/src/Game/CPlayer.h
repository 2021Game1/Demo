#pragma once

//キャラクタクラスのインクルード
#include "CXCharacter.h"
#include "CColliderLine.h"
#include "CRideableObject.h"
#include "CColliderSphere.h"
#include "CColliderCapsule.h"
#include "CCutInDeath.h"
#include "CCutInClear.h"
#include <list>
#include <map>

class CUIGauge;
class CStaminaGauge;
class CMajicSword;
class CBullet;
class CClimbWall;
class CWireMeshClimbWall;
class CWireMeshMoveClimbWall;
class CFlamethrower;
class CStage3;
class CImage;
class CSound;
class CCutInDeath;
class CCutInClear;
class CCutInResult;
class CCutInDeathJump;
class CScreenItem;
class CSpikyBallUI;
class CSmoke;
class CHealingUpBuffs;
class CSeesaw;
class CMeatUI;
class CMetalLadder;
class COperationUI;
class CSpikyBall;

#define DEFOLT_CAMERA CVector(0.0f,50.0f,75.0f);

/*
プレイヤークラス
キャラクタクラスを継承
*/
class CPlayer : public CXCharacter
{
public:
	// プレイヤーが持っているアイテムのリスト
	enum class ItemType
	{
		NONE,		// なにも保持していない

		INVINCIBLE,	// 無敵アイテム
		HEALING,	// 回復アイテム
		ATTACK_UP,	// 攻撃力アップアイテム
		DEFENSE,	// 防御力アップアイテム
		ESPIKYBALL,	// とげボールアイテム
	};
	// インベントリを管理
	std::map<ItemType, int> mInventory;
	// アイテムを取得
	void AddItem(ItemType item);
	// 取得したアイテムを判定
	bool HasItem(ItemType item);
	// プレイヤーのアイテムを一括削除
	void ClearItems();
	// アイテムの取得の条件付けを今後行うための処理
	void PickUpItem(ItemType item);
	// 無敵アイテムの使用
	void UseInvincibleItem();
	// 回復薬アイテムの使用
	void UseHealingItem();
	// 攻撃力アップアイテムの使用
	void UseAttackPotion();
	// とげボールの使用
	void UseSpikyBall();
	// インベントリから特定のアイテムを削除
	void RemoveItem(ItemType item);

	//インスタンスのポインタの取得
	static CPlayer* Instance();

	// コンストラクタ
	CPlayer();
	// デストラクタ
	~CPlayer();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// damage == 受けるダメージ
	void TakeDamage(int damage) override;

	// recovery == 回復
	void TakeRecovery(int recovery) override;

	// 無敵状態にする(コライダーをオフにする)
	void TakeInvincible() override;

	// attack == 攻撃力
	void TakeAttackPotion(int attack) override;


	// レベル処理
	// レベルアップ
	void LevelUp();
	// レベル変更
	void ChangeLevel(int level);

	//	乗ることができるオブジェクトが削除されたときの処理
	void DeleteRideableObject(CTransform* rideObj);

	// ステージ開始時の位置を設定
	void SetStartPosition(const CVector& pos);

	// hp取得
	int GetHp();
	int GetMaxHp();

	// ジャンプをしたかどうか
	bool IsJumping();
	// 攻撃したかどうか
	bool IsAttack();
	// 死亡したかどうか(mIsDeath)
	bool IsDeath();
	// 死亡したかどうか(mDeath)
	bool IsMDeath();

	// ステージ1をクリアしたかどうか
	bool IsStage1Clear();
	// ステージ2をクリアしたかどうか
	bool IsStage2Clear();
	// ステージ3をクリアしたかどうか
	bool IsStage3Clear();
	// ステージ4をクリアしたかどうか
	bool IsStage4Clear();
	// ステージをクリアしたかどうか
	bool IsStageClear();

	// ステージフラグをfalseにする関数
	void StageFlagfalse();

	// ステージに入れるようにするフラグ
	// ステージ2に入れるかどうかのフラグ
	bool IsStartStage2();
	// ステージ3に入れるかどうかのフラグ
	bool IsStartStage3();
	// ステージ4に入れるかどうかのフラグ
	bool IsStartStage4();

	// 攻撃力アップアイテムを使用したかどうか
	bool IsAttackItem();
	// 回復アップアイテムを使用したかどうか
	bool IsHealingItem();

	// とげボールを使用するかどうか
	bool IsSpikyBall();
	// とげボールを出現させているかどうか
	bool IsSpikyBallAppearance();
	// とげボールのリチャージ時間
	float GetSpikyTime() const;
	float GetSpikyBallSpeed() const;
	float GetSpikyBallDistance() const;
	float GetSpikyBallInitialVelocityY() const;


	// 他のクラスで使っている為publicに置いておく
	// ジャンプ開始1
	void UpdateJumpStart();
	// ジャンプ中1
	void UpdateJump();
	// ジャンプ終了1
	void UpdateJumpEnd();
	// 跳ねる開始
	void UpdateJumpingStart();
	// 跳ねる
	void UpdateJumping();
	// 跳ねる終了
	void UpdateJumpingEnd();
	// 飛び跳ねる開始
	void UpdateHighJumpingStart();
	// 飛び跳ねる
	void UpdateHighJumping();
	// 飛び跳ねる終了
	void UpdateHighJumpingEnd();
	// 目的位置までジャンプ開始
	void UpdateTargetPositionStart();
	// 目的位置までジャンプ
	void UpdateTargetPosition();
	// 目的位置までジャンプ終了
	void UpdateTargetPositionEnd();
	// 跳ね返させる処理
	void UpdateReflection();

	// 死亡
	void UpdateDeath();
	// 死亡処理終了
	void UpdateDeathEnd();

	// 指定された位置まで移動開始
	void MoveTo(const CVector& pos);
	// 指定された位置までの移動が出来るかどうか
	bool CanMoveTo() const;
	// 指定された番号のステージを開始
	void StartStage(int stageNo);

	// 移動速度を取得
	CVector Velocity() const;

	// 更新
	void Update();
	// 描画
	void Render();
	
private:
	// モデル・ポインター・素材関連
	// カメラ関連
	// 状態関連
	// アニメーション関連
	// ベクトル関連
	// キー入力関連
	// 変数関連

	// プレイヤーのインスタンス
	static CPlayer* spInstance;

	//// モデル・ポインター・素材関連 /////////////////////////////////
	
	// コライダー
	// 縦のコライダーライン
	CColliderLine* mpColliderLine;
	// 一時的な当たり判定を取るコライダー
	// カプセルコライダーが完成したら変更
	CColliderCapsule* mpColliderCapsule;
	//ダメージを受けるコライダ
	CColliderSphere* mpDamageCol;
	// 登れるコライダーとの当たり判定を取るコライダー
	CColliderLine* mpClimbCol;

	// オブジェクトアイテム
	// マジックソードモデル
	CMajicSword* mpSword;

	// とげとげボール
	CSpikyBall* mpSpiky1;
	CSpikyBall* mpSpiky2;
	
	// UI
	// HPゲージ
	CUIGauge* mpHpGauge;
	// スタミナゲージ
	CStaminaGauge* mpStaminaGauge;
	// スクリーンアイテム画像
	CScreenItem* mpScreenItem;
	// とげボール画像
	CSpikyBallUI* mpSpikyBallUI;
	// 肉アイテム画像
	CMeatUI* mpMeat;

	COperationUI* mpClimbUI;

	// SE
	// 剣の振りかざし攻撃時のSE
	CSound* mpSlashSE;
	// 敵の攻撃が当たった時のSE
	CSound* mpHitDamageSE;

	// エフェクト
	// 火炎放射エフェクト
	CFlamethrower* mpFlamethrower;
	// 回復バフeffect
	CHealingUpBuffs* mpHealingUpBuffs;
	
	// 壁のポインター
	// 登っている壁のポインター
	CClimbWall* mpClimbWall;
	// 登っている金網のポインター
	CWireMeshClimbWall* mpWireWall;
	// 登っている動く金網のポインター
	CWireMeshMoveClimbWall* mpWireMoveWall;
	// 登っている金属の梯子のポインター
	CMetalLadder* mpMetalLadder;

	///////////////////////////////////////////////////////

	//// オブジェクト関連 /////////////////////////////////

	// 足元のオブジェクトのポインター
	CObjectBase* mpUnderFootObject;

	void CheckUnderFootObject();

	///////////////////////////////////////////////////////

	//// プレイヤーのエフェクト関連 ///////////////////////

	/// <summary>
	/// 足元に煙のエフェクトを発生
	/// </summary>
	void PlayStepSmoke();
	/// <summary>
	/// 足元の煙エフェクトの更新
	/// </summary>
	void UpdateStepSmoke();
	/// <summary>
	/// 足元の煙エフェクトを表示する状態かどうか
	/// </summary>
	/// <returns></returns>
	bool IsEnableStepSmoke() const;

	// 煙のリスト
	std::list<CSmoke*> mSmokeList;

	///////////////////////////////////////////////////////

	//// カメラ関連 ///////////////////////////////////////

	// 死亡時のカメラ
	CCutInDeath* mpCutInDeath;
	// ステージクリア時のカメラ
	CCutInClear* mpCutInClear;
	// リザルト時のカメラ
	CCutInResult* mpCutInResult;
	// 死亡ジャンプ時のカメラ
	CCutInDeathJump* mpCutInDeathJump;

	///////////////////////////////////////////////////////
	

	//// 状態関連 /////////////////////////////////////////
	
	// 準備中の状態
	void UpdateReady();
	// 最初のアクション
	void UpdateFirstAction();
	// 待機状態
	void UpdateIdle();
	// 停止状態
	void UpdateStop();
	// 移動状態
	void UpdateMove();
	// ダッシュ終了
	void UpdateDashEnd();
	// 攻撃
	void UpdateAttack();
	// 攻撃終了待ち
	void UpdateAttackWait();
	// 強攻撃開始
	void UpdateAttackStrongStart();
	// 強攻撃
	void UpdateAttackStrong();
	// 強攻撃終了待ち
	void UpdateAttackStrongWait();
	// ダッシュアタック
	void UpdateDashAttack();
	// ダッシュアタック終了
	void UpdateDashAttackWait();
	//回避開始
	void UpdateRotate();
	//回避終了待ち
	void UpdateRotateEnd();
	// クリア
	void UpdateClear();
	// クリア終了
	void UpdateClearEnd();
	// リザルト状態
	void UpdateResult();
	// リザルト終了状態
	void UpdateResultEnd();
	// 再起
	void UpdateReStart();
	// 敵の攻撃Hit
	void UpdateHit();
	// 敵の弾Hit
	void UpdateHitBullet();
	// 敵の剣攻撃hit
	void UpdateHitSword();
	// ダメージを受ける(オブジェクト)
	void UpdateHitObj();
	// 落下ダメージオブジェクト
	void UpdateFallDamage();
	// 登る状態
	void UpdateClimb();
	// 頂上まで登った
	void UpdateClimbedTop();
	// 金属梯子に登る状態
	void UpdateMetalLadder();
	// 金属梯子の頂上に登った状態
	void UpdateMetalLaddertop();
	// 金網に登る状態
	void UpdateWireClimb();
	// 金網の頂上に登った状態
	void UpdateWireClimbedTop();
	// 落下状態
	void UpdateFalling();
	// 立ち上がる
	void UpdateStandUp();
	// ステージ開始時のジャンプ開始
	void UpdateStartStageJumpStart();
	// ステージ開始時のジャンプ
	void UpdateStartStageJump();
	// ステージ開始時のジャンプ終了
	void UpdateStartStageJumpEnd();
	// リザルト前のジャンプ開始
	void UpdateResultJumpStart();
	// リザルト前のジャンプ
	void UpdateResultJump();
	// リザルト前のジャンプ終了
	void UpdateResultJumpEnd();
	// ダッシュジャンプスタート
	void UpdateDashJumpStart();
	// ダッシュジャンプ
	void UpdateDashJump();
	// ダッシュジャンプ終了
	void UpdateDashJumpEnd();
	// 指定した位置まで移動する
	void UpdateMoveTo();
	// 死亡ジャンプ開始
	void UpdateDeathJumpStart();
	// 死亡ジャンプ
	void UpdateDeathJump();
	// 死亡ジャンプ終了
	void UpdateDeathJumpEnd();
	// restart状態
	void UpdateRestart();
	// restart
	void UpdateRestartEnd();

	// コライダーの時間計測
	void CColliderTime();
	// 点滅する時間計測用
	void CDamageColorTime();
	// アニメーション終わりの体力判定処理
	void CHPJudgment();
	// ジャンプ中に体力が0以下になった場合の処理
	void JumpingHpJudgment();
	// ステージクリア時のアイテム削除処理
	void ItemDeletion();

	// プレイヤーの状態
	enum class EState
	{
		eReady,				 // 準備中
		eFirstAction,		 // 最初のアクション
		eIdle,				 // 待機
		eStop,				 // 停止
		eClearJump,			 // リザルト前のアニメーション
		eAttack,			 // 攻撃
		eAttackStrongStart,	 // 強攻撃開始
		eAttackStrong,		 // 強攻撃
		eAttackDash,		 // ダッシュアタック
		eAttackWait,		 // 攻撃終了待ち
		eAttackStrongWait,	 // 強攻撃終了待ち
		eAttackDashWait,	 // ダッシュアタック終了待ち
		eJumpStart,			 // ジャンプ開始
		eJump,				 // ジャンプ中
		eJumpEnd,			 // ジャンプ終了
		eJumpingStart,		 // 跳ねる開始
		eJumping,			 // 跳ねる
		eJumpingEnd,		 // 跳ねる終了
		eHighJumpingStart,	 // 飛び跳ねる開始
		eHighJumping,		 // 飛び跳ねる
		eHighJumpingEnd,	 // 飛び跳ねる終了
		eRotate,			 // 回避開始
		eRotateEnd,			 // 回避終了待ち
		eDashEnd,			 // ダッシュ終了
		eClear,				 // クリア状態
		eClearEnd,			 // クリア終了
		eResult,			 // リザルト状態	
		eResultEnd,			 // リザルト終了状態
		eDeath,				 // 死亡
		eDeathEnd,			 // 死亡終了
		eReStart,			 // 再起
		eHit,				 // ダメージヒット
		eHitBullet,			 // 敵の弾ヒット
		eHitSword,			 // 敵の剣ヒット
		eHitObj,			 // ダメージを受ける(オブジェクト)
		eFallDamege,		 // 落下ダメージ
		eClimb,				 // 登る状態
		eClimbedTop,		 // 頂上まで登った
		eMetalLadder,		 // 金属梯子に登る状態
		eMetalLadderTop,	 // 金属梯子の頂上まで登った
		eWireClimb,			 // 金網に登る状態
		eWireClimbedTop,	 // 金網の頂上まで登った
		eFalling,			 // 落下状態
		eStandUp,			 // 立ち上がる
		eStartStageJumpStart,// ステージ開始時のジャンプ開始
		eStartStageJump,	 // ステージ開始時のジャンプ
		eStartStageJumpEnd,	 // ステージ開始時のジャンプ終了
		eResultJumpStart,	 // リザルト前のジャンプ開始
		eResultJump,		 // リザルト前のジャンプ
		eResultJumpEnd,		 // リザルト前のジャンプ終了
		eDashJumpStart,		 // ダッシュジャンプ開始
		eDashJump,			 // ダッシュジャンプ
		eDashJumpEnd,		 // ダッシュジャンプ終了
		eMoveTo,			 // 指定した位置まで移動する
		eTargetStart,		 // 目的位置までジャンプ開始
		eTarget,			 // 目的位置までジャンプ
		eTargetEnd,			 // 目的位置までジャンプ終了
		eDeathJumpStart,	 // 死亡ジャンプ開始
		eDeathJump,			 // 死亡ジャンプ
		eDeathJumpEnd,		 // 死亡ジャンプ終了
		eRestart,			 // restart状態
		eRestartEnd,		 // restart終了状態
		eReflection,		 // 跳ね返っている状態
	};
	// 現在の状態を切り替え
	void ChangeState(EState state);
	// プレイヤーの状態
	EState mState;
	CTransform* mpRideObject;

	///////////////////////////////////////////////////////
	
	
	//// アニメーション関連 ///////////////////////////////

	// アニメーションの種類
	enum class EAnimType
	{
		None = -1,

		eTPose,			// Tポーズ
		eIdle,			// 休憩
		eWalk,			// 歩行
		eAttack,		// 攻撃
		eAttackStrong,	// 強攻撃
		eAttackDash,	// ダッシュアタック
		eJumpStart,		// ジャンプ開始
		eJump,			// ジャンプ中
		eJumpEnd,		// ジャンプ終了
		eDashJumpStart,	// ダッシュジャンプ開始
		eDashJump,		// ダッシュジャンプ
		eDashJumpLoop,	// ダッシュジャンプループ
		eDashJumpEnd,	// ダッシュジャンプ終了
		eDash,			// ダッシュ
		eDashStop,		// ダッシュ終了
		eRotate,		// 回避
		eGuts,			// ガッツポーズ
		eHit,			// 敵の攻撃Hit
		eHitJ,			// 敵の弱攻撃Hit
		eDeath,			// 死亡
		eClimb,			// 壁を登る
		eClimbedTop,	// 壁を登り切った時
		eFalling,		// 落下状態
		eFallingFlat,	// 落下状態から着地した
		eStandUp,		// 立ち上がる

		Num
	};

	// アニメーション切り替え
	void ChangeAnimation(EAnimType type);

	// アニメーションデータ
	struct AnimData
	{
		std::string path;	// アニメーションデータのパス
		bool loop;			// ループするかどうか
		float frameLength;	// アニメーションのフレーム数
	};
	// アニメーションデータのテーブル
	static const AnimData ANIM_DATA[];

	///////////////////////////////////////////////////////


	//// ベクトル関連 /////////////////////////////////////

	CVector mMoveSpeed;			// 移動速度(X,Z)
	CVector mStartPos;			// プレイヤーの初期位置
	CVector mGroundNormal;		// 設置している地面の法線
	CVector mClimbNormal;		// 登っている壁の法線
	CVector mReflectionNormal;	// 反射する壁の法線
	CVector mClimbedStartPos;	// 頂上まで登り切った時の座標
	CVector mClimbedMovedUpPos;	// 頂上まで登り切った後の上方向移動後の座標
	CVector mClimbedMovedPos;	// 頂上まで登り切った後の移動後の座標
	CVector mMoveStartPos;		// 指定された位置まで移動するときの移動開始位置
	CVector mMoveTargetPos;		// 指定された位置まで移動するときの移動終了位置
	CVector mLastPos;			// プレイヤーの前回の位置
	CVector mAttackStrongPos;	// 強攻撃開始位置

	///////////////////////////////////////////////////////


	//// キー入力関連 /////////////////////////////////////

	/// <summary>
	/// キーの入力情報から移動ベクトルを求める
	/// </summary>
	/// <returns></returns>
	CVector CalcMoveVec() const;
	/// <summary>
	/// キーの入力情報から壁移動ベクトルを求める
	/// </summary>
	/// <returns></returns>
	CVector ClimbMoveVec() const;
	/// <summary>
	/// キーの入力情報から壁移動ベクトル(上下)を求める
	/// </summary>
	/// <returns></returns>
	CVector ClimbMoveUpVec() const;
	/// <summary>
	/// プレイヤーがアクションを起こせるかどうか
	/// </summary>
	/// <returns></returns>
	bool IsEnableAction() const;

	///////////////////////////////////////////////////////


	//// 変数関連 /////////////////////////////////////////

	// 状態内のステップ
	int mStateStep;

	// 計測時間
	float mElapsedTime;
	// 計測時間終了
	float mElapsedTimeEnd;
	// とげボール計測時間
	float mSpikTime;
	// とげボールリチャージ時間
	float mSpikRechargeTime;
	// 点滅時間計測用
	float mBlinkElapsedTime;
	// コライダーの計測時間
	float mColElapsedTime;
	// 無敵状態開始時間
	float mInvincibleStartTime;
	// 壁登り中のスタミナ計測時間
	float mClimbStaminaTime;
	// 最初のダッシュの計測時間
	float mStartDashTime;
	// 武器をしまう時間
	float mWeaponTime;
	// 重力やジャンプによるY軸の移動速度
	float mMoveSpeedY;
	// プレイヤーの大きさ変更計測時間
	float mScaleTime;
	// 準備が終わった後の経過時間
	float mStageElapsedTime;
	// リザルトジャンプの経過時間
	float mResultElapsedTime;
	// プレイヤーが移動した距離
	float mMoveDistance;
	// 無敵エフェクトの計測時間
	float mInvincibleTime;
	// 攻撃エフェクトの計測時間
	float mAttackTime;
	// 回復エフェクトの計測時間
	float mHealingTime;
	// 登っている状態で着地しているかどうかの計測用
	float mClimbTime;
	// 反射移動時間
	float mReflectTime;

	// 接地しているかどうか
	bool mIsGrounded;
	// 無敵かどうか
	bool mInvincible;
	// スタミナが上限値に到達した場合のフラグ
	bool mStaminaDepleted;
	// スタミナが下限値に到達した場合のフラグ
	bool mStaminaLowerLimit;
	// ダメージを与えるフラグ
	bool mDamageObject;
	// ダメージを与えるフラグ(敵)
	bool mDamageEnemy;
	// 回復したか
	bool mHpHit;
	// スラッシュのSEを再生したか
	bool mIsPlayedSlashSE;
	// 攻撃が当たったか
	bool mIsPlayedHitDamageSE;
	// 攻撃中か
	bool mIsAttack;
	// ダッシュ状態か
	bool mDash;
	// 壁を登っているか
	bool mClimb;
	// 登れる壁に触れているか
	bool mClimbWall;
	// 登れる壁の頂上に触れているか
	bool mClimbWallTop;
	// ジャンプをしたか
	bool mIsJumping;
	// 中間地点
	bool mSavePoint1;
	// 中間地点2
	bool mSavePoint2;
	// スラッシュエフェクトを鳴らしたか
	bool mIsSpawnedSlashEffect;
	// 落下ダメージを受けたか
	bool mFallDamage;
	// ダッシュジャンプに移行できるかどうか
	bool mIsDashJump;
	// 死亡したか
	bool mDeath;
	// 他クラスに死亡下かどうかを伝えるよう
	bool mIsDeath;
	// 攻撃力アップアイテムを仕様したか
	bool mIsAttackItem;
	// 体力回復アイテムを使用したか
	bool mIsHealingItem;
	// 無敵アイテムを使用したか


	// ダメージを受けたかどうか
	bool mDamaged;
	// とげとげボールを使用するかどうか
	bool mSpikyBall;
	// とげとげボールを出現させているか
	bool mSpik1;
	bool mSpik2;


	// 自クラス
	// ステージ1をクリアしたか
	bool mStage1Clear;
	// マネージャークラスに伝える用
	bool mIsStage1Clear;
	// ステージ2をクリアしたか
	bool mStage2Clear;
	// マネージャークラスに伝える用
	bool mIsStage2Clear;
	// ステージ3をクリアしたか
	bool mStage3Clear;
	// マネージャークラスに伝える用
	bool mIsStage3Clear;
	// ステージ4をクリアしたか
	bool mStage4Clear;
	// マネージャークラスに伝える用
	bool mIsStage4Clear;
	// (全てのステージ)クリアしたかマネージャークラスに伝えるよう
	bool mIsStageClear;

	// ステージ1に入るかどうか
	bool mStartStage1;
	// ステージ2に入るかどうか
	bool mStartStage2;
	// ステージ3に入るかどうか
	bool mStartStage3;
	// ステージ4に入るかどうか
	bool mStartStage4;

	// 他クラスで確認用
	// ステージ2に入れるか(別クラス用)
	bool mIsStartStage2;
	// ステージ3に入れるか(別クラス用)
	bool mIsStartStage3;
	// ステージ4に入れるか(別クラス用)
	bool mIsStartStage4;

	///////////////////////////////////////////////////////
};
