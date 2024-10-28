#ifndef CVANGUAD_H
#define CVANGUAD_H

#include "CXCharacter.h"
#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CRideableObject.h"

class CExclamationMark;
class CVanguardGauge;
class CMajicSwordEnemy;

/*
ヴァンガードクラス
キャラクタクラスを継承
*/

class CVanguard : public CXCharacter
{
public:

	// インスタンスのポインタ取得
	static CVanguard* Instance();

	// コンストラクタ
	CVanguard();
	// デストラクタ
	~CVanguard();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突した情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	/// <summary>
	/// ダメージ処理
	/// </summary>
	/// <param name="damage">受けるダメージ</param>
	void TakeDamage(int damage) override;

	// レベル処理
	// レベルアップ
	void LevelUp();
	/// <summary>
	/// レベル変更
	/// </summary>
	/// <param name="level">ヴァンガードレベル</param>
	void ChangeLevel(int level);

	// ヴァンガードの方向をランダムに変更する処理
	void ChangeDerection();

	// フレームとHPゲージの表示の確認をする処理
	void UpdateGaugeAndFrame();

	// ビックリマークの表示の確認をする処理
	void UpdateExclamation();

	// 1%の確率を求める処理
	bool ShouldTransitionWander();
	// 上記と同様
	bool ShouldTransition();

	/// <summary>
	/// 360度の角度を求めて、x軸とy軸から計算する
	/// </summary>
	/// <param name="angleDegrees">角度</param>
	/// <returns></returns>
	CVector CalculateDirection(float angleDegrees);

	// ヴァンガードを勝手に移動させる処理
	void Move();

	//敵のスコアを設定
	static void SetScore(int score);
	//敵のスコアを取得
	static int GetScore();


	// 更新
	void Update();
	// 描画
	void Render();

private:
	// モデル・素材関連
	// 状態関連
	// アニメーション関連
	// ベクトル関連
	// 変数関連

	// ヴァンガードのインスタンス
	static CVanguard* spInstance;
	// ヴァンガードのスコア
	static int sScore;


	//// モデル・素材関連 /////////////////////////////////

	// フィールドとの当たり判定を取るコライダー
	CColliderLine* mpColliderLine;
	// 一時的な当たり判定を取るコライダー
	// カプセルコライダが完成したら変更
	CColliderSphere* mpColliderSphere;
	// ダメージを受けるコライダー
	CColliderSphere* mpDamageCol;
	// ダメージを与えるコライダー
	CColliderSphere* mpAttackCol;

	// マジックソードモデル
	CMajicSwordEnemy* mpSword;

	// ゲージ
	CVanguardGauge* mpGauge;
	// ビックリマーク
	CExclamationMark* mpExclamationMark;

	///////////////////////////////////////////////////////


	//// 状態関連 /////////////////////////////////////////

	// 準備中の状態
	void UpdateReady();
	// 待機状態1
	void UpdateIdle();
	// 移動状態
	void UpdateWalk();
	// 移動状態(Mutant)
	void UpdateWalkMutant();
	// 移動状態(武器持ち状態)
	void UpdateWalkWeapon();
	// 移動状態(盾持ち状態)
	void UpdateWalkShield();
	// 移動状態1(盾持ち後ろ状態)
	void UpdateWalkBackShield1();
	// 移動状態2(盾持ち後ろ状態)
	void UpdateWalkBackShield2();
	// ダッシュ状態
	void UpdateDash();
	// 小走り状態
	void UpdateDashBrisk();
	// 盾走り状態
	void UpdateDashShield();
	// ダッシュ終了
	void UpdateDashEnd();
	// 回避行動
	void UpdateRolling();
	// ジャンプ開始状態
	void UpdateJumpStart();
	// ジャンプ中
	void UpdateJump();
	// 走りジャンプ開始状態
	void UpdateRunJumpStart();
	// 走りジャンプ中状態
	void UpdateRunJump();
	// ダッシュジャンプ開始状態
	void UpdateRunDashJumpStart();
	// ダッシュジャンプ中状態
	void UpdateRunDashJump();
	// ジャンプ終了
	void UpdateJumpEnd();
	// 立ち上がり状態
	void UpdateStandUp();
	// 武器持ち待機状態
	void UpdateIdleWeapon();
	// 攻撃状態
	void UpdateAttack();
	// スピン攻撃1
	void UpdateAttackSpin1();
	// スピン攻撃2
	void UpdateAttackSpin2();
	// 振り上げ攻撃
	void UpdateAttackSwing();
	// 3連攻撃
	void UpdateAttacks3();
	// 右足キック
	void UpdateAttackKick();
	// 右足キック終了
	void UpdateAttackKickEnd();
	// ジャンプ攻撃1
	void UpdateAttackJump1();
	// ジャンプ攻撃2
	void UpdateAttackJump2();
	// 攻撃終了待ち
	void UpdateAttackEnd();
	// 武器を後ろにしまう1
	void UpdateSwordSheathing1();
	// 武器を後ろにしまう2
	void UpdateSwordSheathing2();
	// 盾構え
	void UpdateShield();
	// 武器防御
	void UpdateSwordGuard();
	// 武器を取り出す1
	void UpdateSwordDrawn1();
	// 武器を取り出す2
	void UpdateSwordDrawn2();
	// 武器を後ろから取り出す
	void UpdateSwordBackDrawn();
	// 微ダメージ1
	void UpdateHitSlight1();
	// 微ダメージ2
	void UpdateHitSlight2();
	// 微ダメージ3
	void UpdateHitSlight3();
	// ガッツポーズ1
	void UpdateGutsPose1();
	// ガッツポーズ2
	void UpdateGutsPose2();
	// プレイヤー発見
	void UpdateDiscovery();
	// 追跡
	void UpdateChase();
	// 徘徊処理
	void UpdateWander();
	// 見失い状態
	void UpdateLoseSight();
	// 指さし
	void UpdatePointing();
	// 死亡状態
	void UpdateDeath();
	// 死亡状態終了
	void UpdateDeathEnd();

	// 状態
	enum class EState
	{
		eReady,				// 準備中
		eIdle,				// 待機状態1
		eWalk,				// 移動状態
		eWalkMutant,		// 怪物歩き
		eWalkWeapon,		// 武器歩き
		eWalkShield1,		// 盾歩き
		eWalkBackShield1,	// 盾後ろ歩き1
		eWalkBackShield2,	// 盾後ろ歩き2
		eDash,				// 走る
		eDashBrisk,			// 小走り
		eDashShield,		// 盾走り
		eDashEnd,			// 走り止め
		eRolling,			// 回避行動
		eJumpStart,			// ジャンプ開始
		eJump,				// ジャンプ中
		eRunDashJumpStart,	// 走りジャンプ開始
		eRunDashJump,		// 走りジャンプ中
		eDashJumpStart,		// ダッシュジャンプ開始
		eDashJump,			// ダッシュジャンプ中
		eJumpEnd,			// ジャンプ終了
		eStandUp,			// 立ち上がる
		eIdleWeapon,		// 武器持ち待機
		eAttack,			// 攻撃状態
		eAttackSpin1,		// スピン攻撃1
		eAttackSpin2,		// スピン攻撃2
		eAttackSwing,		// 振り上げ攻撃
		eAttacks3,			// 3連攻撃
		eAttackKick,		// 右足キック
		eAttackKickEnd,		// 右足キック終了
		eAttackJump1,		// ジャンプ攻撃1
		eAttackJump2,		// ジャンプ攻撃2
		eAttackEnd,			// 攻撃終了待ち
		eSwordSheathing1,	// 武器を後ろにしまう1
		eSwordSheathing2,	// 武器を後ろにしまう2
		eShield,			// 盾構え
		eSwordGuard,		// 武器防御
		eSwordDrawn1,		// 武器を取り出す1
		eSwordDrawn2,		// 武器を取り出す2
		eSwordBackDrawn,	// 武器を後ろから取り出す
		eHitSlight1,		// 微ダメージ1
		eHitSlight2,		// 微ダメージ2
		eHitSlight3,		// 微ダメージ3
		eGutsPose1,			// ガッツポーズ1
		eGutsPose2,			// ガッツポーズ2
		eDiscovery,			// プレイヤーを発見
		eChase,				// 追跡状態
		eWander,			// 徘徊状態
		eLoseSight,			// 見失い状態
		ePointing,			// 指さし
		eDeath,				// 死亡
		eDeathEnd,			// 死亡終了
	};
	// 状態変更
	void ChangeState(EState state);
	// ヴァンガードの状態
	EState mState;
	// 乗れるオブジェクトに乗っているか
	CTransform* mpRideObject;

	///////////////////////////////////////////////////////


	//// アニメーション関連 ///////////////////////////////

	enum class EAnimType
	{
		None = -1,

		eTpose,				// Tポーズ
		eIdle1,				// 待機状態1
		eIdle2,				// 待機状態2
		eWalk1,				// 移動状態1
		//eWalkBack1,			// 後ろ移動1
		eWalkMutant,		// 怪物歩き
		eWalkWeapon,		// 武器歩き
		eWalkShield1,		// 盾歩き
		eWalkBackShield1,	// 盾後ろ歩き1
		eWalkBackShield2,	// 盾後ろ歩き2
		eDash,				// 走る
		eDashBrisk,			// 小走り
		eDashShield,		// 盾走り
		eJump,				// ジャンプ
		eRunDashJump,		// 走りジャンプ
		eDashJump,			// ダッシュジャンプ
		eStandUp,			// 立ち上がる
		eIdleWeapon,		// 武器持ち待機
		eAttackSpin1,		// スピン攻撃1
		eAttackSpin2,		// スピン攻撃2
		eAttackSwing,		// 振り上げ攻撃
		eAttacks3,			// 3連攻撃
		eAttackKick,		// 右足キック
		eAttackJump1,		// ジャンプ攻撃1
		eAttackJump2,		// ジャンプ攻撃2
		eSwordSheathing1,	// 武器を後ろにしまう1
		eSwordSheathing2,	// 武器を後ろにしまう2
		eShield,			// 盾構え
		eSwordGuard,		// 武器防御
		eSwordDrawn1,		// 武器を取り出す
		eSwordDrawn2,		// 武器を取り出す2
		eSwordBackDrawn,	// 武器を後ろから取り出す
		eRolling,			// 回避行動
		eHitSlight1,		// 微ダメージ1
		eHitSlight2,		// 微ダメージ2
		eHitSlight3,		// 微ダメージ3
		eGutsPose1,			// ガッツポーズ1
		eGutsPose2,			// ガッツポーズ2
		eLoseSight,			// 見失い状態
		ePointing,			// 指さし
		eDeath,				// 死亡


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

	// ヴァンガードの見る方向
	CVector mTargetDir;
	// 移動方向
	CVector mMoveVector;
	// 移動速度
	CVector mMoveSpeed;
	// 初期位置の保存
	CVector mInitialPosition;

	///////////////////////////////////////////////////////


	//// 変数関連 /////////////////////////////////////////

	// 状態内のステップ
	int mStateStep;
	// 経過時間観測用
	float mElapsedTime;
	// 解除時間計測用
	float mElapsedTime_End;
	// キックの時間計測
	float mKickTime;
	// バックステップの時間計測
	float mBackStepTime;
	// プレイヤー発見時の時間計測
	float mDiscoveryTime;
	// プレイヤー発見時の終了時間計測
	float mDiscoveryTime_End;
	// ランダム時間計算
	float mTimeToChange;
	// 回避の時間計測
	float mTimeRolling;
	// 設置しているかどうか
	bool mIsGrounded;
	// キックの待ち時間が終了したかどうか
	bool mKickTimeEnd;
	// プレイヤを発見して一定時間経ったかどうか
	bool mDiscovery;
	// プレイヤーを発見し終わった後の時間が取れ倉至ったか
	bool mDiscoveryEnd;
	// 回避時間が終了したk
	bool mRollingEnd;
	// ダメージを受けたか
	bool mDamage;

	// プレイヤーを見つけたかどうか
	bool IsFoundPlayer() const;

	///////////////////////////////////////////////////////
};
#endif