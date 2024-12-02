#ifndef CSOLDIER_H
#define CSOLDIER_H

//キャラクタクラスのインクルード
#include "CXCharacter.h"
#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CColliderCapsule.h"
#include "CRideableObject.h"

class CGun;
class CBullet;
class CPlayer;
class CSoldierFrame;
class CSoldierGauge;
class CExclamationMark;
class CEffect;

// ソルジャークラス(銃タイプ)
class CSoldier : public CXCharacter
{
public:

	//インスタンスのポインタの取得
	CSoldier* Instance();

	// コンストラクタ
	CSoldier();
	// デストラクタ
	~CSoldier();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	/// <summary>
	/// 被ダメージ処理
	/// </summary>
	/// <param name="damage">受けるダメージ量</param>
	void TakeDamage(int damage) override;

	// レベルアップ
	void LevelUp();
	/// <summary>
	/// レベル変更処理
	/// </summary>
	/// <param name="level">レベル変更量</param>
	void ChangeLevel(int level);

	// 初期設定
	// 開始時の中心座標と範囲を設定
	void SetCenterPoint(CVector& center, const float radius);

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	
	// ソルジャーのインスタンス
	static CSoldier* spInstance;

	// 移動処理
	// ソルジャーを勝手に移動させる処理
	void Move();
	/// <summary>
	/// 360度の角度を求めて、x軸とy軸から計算する
	/// </summary>
	/// <param name="angleDegrees">角度</param>
	/// <returns></returns>
	CVector CalculateDirection(float angleDegrees);
	// ソルジャーの方向をランダムに変更する処理
	void ChangeDerection();

	// 移動の条件処理
	// 待機状態に遷移する条件
	bool WaitingCondition();
	// 徘徊状態に遷移する条件
	bool WanderingConditions();
	// プレイヤー追跡処理
	bool IsFoundPlayer() const;

	// UI処理
	// フレームとHPゲージの表示の確認をする処理
	void UpdateGaugeAndFrame();
	// ビックリマークの表示の確認をする処理
	void UpdateExclamation();

	// 時間処理
	// キックの待ち時間
	void KickWaitTime();
	// バックステップの待ち時間
	void BackStepWaitTime();
	// プレイヤーを発見した後の待ち時間
	void DiscoveryWaitTime();

	// 縦の線分コライダー
	CColliderLine* mpColliderLine;
	// 壁やオブジェクトとの当たり判定を取るコライダー
	CColliderCapsule* mpColliderCapsule;
	// ダメージを与えるコライダー
	CColliderSphere* mpAttackCol;
	// ダメージを受けるコライダー
	CColliderSphere* mpDamageCol;

	// 銃モデル
	CGun* mpGun;

	// フレーム
	CSoldierFrame* mpFrame;
	// ゲージ
	CSoldierGauge* mpGauge;
	// ビックリマーク
	CExclamationMark* mpExclamationMark;

	// 準備中の状態
	void UpdateReady();
	// 待機状態
	void UpdateIdle();

	// 攻撃状態
	void UpdateAttack();
	// 攻撃終了待ち状態
	void UpdateAttackWait();
	// キック状態
	void UpdateKick();
	// キック終了状態
	void UpdateKickWait();
	// エイム解除状態
	void UpdateAimDwon();

	// プレイヤー発見状態
	void UpdateDiscovery();
	// 追跡状態
	void UpdateChase();
	// 徘徊状態
	void UpdateWander();
	// バックステップ状態
	void UpdateBackStep();
	
	// プレイヤーの攻撃Hit状態
	void UpdateHit();
	// 死亡状態
	void UpdateDeth();
	// 死亡処理終了状態
	void UpdateDethEnd();
	
	// 状態
	enum class EState
	{
		eReady,		// 準備中
		eIdle,		// 待機
		eAttack,	// 攻撃
		eAttackWait,// 攻撃終了待ち
		eKick,		// キック
		eKickWait,	// キック終了
		eAimDwon,	// エイム解除
		eDiscovery,	// プレイヤー発見
		eChase,		// 追跡
		eWander,	// 徘徊処理
		eBackStep,	// バックステップ
		eHit,		// プレイヤーの攻撃Hit
		eDeth,		// 死亡
		eDethEnd,	// 死亡終了
	};
	// 状態変更
	void ChangeState(EState state);
	// プレイヤーの状態
	EState mState;
	// 乗れるオブジェクトに乗っているか
	CTransform* mpRideObject;

	// アニメーションの種類
	enum class EAnimType
	{
		None = -1,

		eTpose,		// Tポーズ
		eIdle,		// Idle時
		eRifleIdle,	// ライフルIdle時
		eWalk,		// 移動
		eAlert,		// 警戒
		eAttack,	// プレイヤー発見時攻撃
		eKick,		// 格闘
		eReload,	// リロード
		eAimDwou,	// エイム解除
		eHit,		// ダメージHit
		eDeth,		// 死亡
		eBackStep,	// バックステップ

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

	// ソルジャーの見る方向
	CVector mTargetDir;
	// 移動速度
	CVector mMoveSpeed;
	// 初期位置の保存
	CVector mInitialPosition;
	// 開始時の中心点
	CVector mCenterPoint;

	// 状態内のステップ
	int mStateStep;
	// 銃の弾の開始値
	int mTimeShot;
	// 銃の弾の終わり値
	int mTimeShotEnd;
	// 経過時間計測用
	float mElapsedTime;
	// 解除時間計測用
	float mElapsedTime_End;
	// 方向転換時間計測用
	float mChangeTime;
	// ランダム時間計測用
	float mRandomCalculationTime;
	// キックの時間計測用
	float mKickTime;
	// バックステップの時間計測用
	float mBackStepTime;
	// プレイヤー発見時の時間計測用
	float mDiscoveryTime;
	// プレイヤー発見時の終了時間計測用
	float mDiscoveryTimeEnd;
	// 開始時の半径の設定用
	float mMaxRadius;
	// 接地しているかどうか
	bool mIsGrounded;
	// キックの待ち時間が終わったかどうか
	bool mKickWaitingEnd;
	// プレイヤーを発見して一定時間経ったかどうか
	bool mDiscovery;
	// プレイヤーを発見し終わった後の時間がどれくらい経ったかどうか
	bool mDiscoveryEnd;
	// バックステップをするかどうか
	bool mBackStep;
	// 開始時の範囲内に入ったかどうか
	bool mEnteredTheRange;

};
#endif