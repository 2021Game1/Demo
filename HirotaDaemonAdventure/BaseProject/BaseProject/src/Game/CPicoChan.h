#ifndef CPICOCHAN_H
#define CPICOCHAN_H

#include "CXCharacter.h"
#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CColliderCapsule.h"
#include "CRideableObject.h"
#include "CEffect.h"

class CPicoSword;
class CPicoChanUI;

// ピコちゃんクラス
class CPicoChan : public CXCharacter
{
public:

	//インスタンスのポインタの取得
	CPicoChan* Instance();

	// コンストラクタ
	CPicoChan();
	// デストラクタ
	~CPicoChan();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
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
	/// <param name="level">ソルジャーレベル</param>
	void ChangeLevel(int level);

	// ピコちゃんの方向をランダムに変更する処理
	void ChangeDerection();

	// フレームとHPゲージの表示の確認をする処理
	void UpdateGaugeAndFrame();

	//// ビックリマークの表示の確認をする処理
	//void UpdateExclamation();

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

	// 中心座標と範囲を設定
	void SetCenterPoint(CVector& center, const float radius);

	// ピコちゃんを勝手に移動させる処理
	void Move();

	// 攻撃を開始して、武器を持つかどうか
	bool IsAttack();

	// 更新
	void Update();
	// 描画
	void Render();

private:

	// ピコちゃんのインスタンス
	static CPicoChan* spInstance;

	// フィールドとの当たり判定を取るコライダー
	CColliderLine* mpLine;
	// 壁との当たり判定を取るコライダー
	CColliderCapsule* mpCapsule;
	// ダメージを受けるコライダー
	CColliderSphere* mpDamageCol;
	// ダメージを与えるコライダー
	CColliderSphere* mpAttackCol;

	// マジックソードモデル
	CPicoSword* mpSword;

	// UI
	CPicoChanUI* mpUI;


	// 準備中の状態
	void UpdateReady();
	// 待機状態
	void UpdateIdle();
	// ダッシュ状態
	//void UpdateDash();
	// 攻撃状態
	void UpdateAttack();
	// 攻撃終了待ち
	void UpdateAttackEnd();
	// 弱攻撃状態
	void UpdateWeakAttack();
	// 回転攻撃状態
	void UpdateSpinAttack();
	// 武器を取り出す状態
	void UpdateDrawn();
	// 武器をしまう状態
	void UpdatePutAway();
	// ジャンプ開始
	//void UpdateJumpStart();
	// ジャンプ中
	//void UpdateJump();
	// ジャンプ終了
	//void UpdateJumpEnd();
	// プレイヤー発見
	void UpdateDiscovery();
	// 追跡
	void UpdateChase();
	// キック
	void UpdateKick();
	// キック終了
	void UpdateKickEnd();
	// プレイヤーの攻撃hit
	void UpdateHit();
	// 死亡
	void UpdateDeath();
	// 死亡処理終了
	void UpdateDeathEnd();
	// 徘徊処理
	void UpdateWander();
	// バックステップ
	//void UpdateBackStep();

	// 状態
	enum class EState
	{
		eReady,		// 準備中
		eIdle,		// 待機
		eDash,		// 走る
		eAttack,	// 攻撃
		eAttackEnd,	// 攻撃終了
		eWeakAttack,// 弱攻撃
		eSpinAttack,// 回転攻撃
		eAttackWait,// 攻撃終了待ち
		eDrawn,		// 武器を取り出す
		ePutAway,	// 武器をしまう
		eDiscovery,	// プレイヤー発見
		eChase,		// 追跡
		eKick,		// キック
		eKickEnd,	// キック終了
		eHit,		// ダメージHit
		eDeath,		// 死亡
		eDeathEnd,	// 死亡終了
		eWander,	// 徘徊処理
		eBackStep,	// バックステップ
		eJumpStart,	// ジャンプ開始
		eJump,		// ジャンプ中
		eJumpEnd,	// ジャンプ終了
	};
	// 状態変更
	void ChangeState(EState state);
	// ピコちゃんの状態
	EState mState;
	// 乗れるオブジェクトに乗っているか
	CTransform* mpRideObject;

	// アニメーションの種類
	enum class EAnimType
	{
		None = -1,

		eTpose,		// Tポーズ
		eIdle1,		// Idle1
		eIdle2,		// Idle2
		eWalk,		// 歩く
		eWeaponWalk,// 武器持ち歩き
		eRun,		// 走る
		eWeaponDash,// 武器持ち走り
		eBackJump,	// バックジャンプ
		eDashJump,	// ダッシュジャンプ
		eDeath1,	// 死亡1
		eDeath2,	// 死亡2
		eKick,		// キック
		ePutAway,	// 武器をしまう
		eWeaponDraw,// 武器取り出し(後ろから)
		eWeakAttack,// 弱攻撃
		eSpinAttack,// 回転攻撃
		eTurn180,	// 振り返る
		eAlert1,	// 警戒1(武器持ち)
		eAlert2,	// 警戒2
		eHit,		// 被弾

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

	// ピコちゃんの見る方向
	CVector mTargetDir;
	// 移動速度
	CVector mMoveSpeed;
	// 初期位置の保存
	CVector mInitialPosition;
	// 中心点
	CVector mCenterPoint;

	// 状態内のステップ
	int mStateStep;
	// 経過時間計測用
	float mElapsedTime;
	// 解除時間計測用
	float mElapsedTimeEnd;
	// ランダム時間計算
	float mTimeToChange;
	// キックの時間計測用
	float mKickTime;
	// バックステップの時間計測
	float mBackStepTime;
	// プレイヤー発見時の時間計測
	float mDiscoveryTime;
	// プレイヤー発見時の終了時間計測
	float mDiscoveryTimeEnd;
	// 半径
	float mMaxRadius;
	// 接地しているかどうか
	bool mIsGrounded;
	// キックの待ち時間が終わったかどうか
	bool mKickTimeEnd;
	// プレイヤーを発見して一定時間経ったかどうか
	bool mDiscovery;
	// プレイヤーを発見し終わった後の時間がどれくらい経ったか
	bool mDiscoveryEnd;
	// バックステップをするか
	bool mBackStep;
	// 半径に入ったか
	bool mIsLerping;

	bool mDash;
	float mDashTime;
	bool mIsAttack;

	// プレイヤーを見つけたか
	bool IsFoundPlayer() const;
};
#endif