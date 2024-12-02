#ifndef CYUKARI_H
#define CYUKARI_H

//キャラクタクラスのインクルード
#include "CXCharacter.h"
#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CRideableObject.h"
#include "CEffect.h"

class CGun;
class CBullet;
class CPlayer;
class CYukariFrame;
class CYukariGauge;

/*
プレイヤークラス
キャラクタクラスを継承
*/

class CYukari : public CXCharacter
{
public:
	//インスタンスのポインタの取得
	static CYukari* Instance();

	// コンストラクタ
	CYukari();
	// デストラクタ
	~CYukari();

	// 待機状態
	void UpdateIdle();
	// 攻撃
	void UpdateAttack();
	// 攻撃終了待ち
	void UpdateAttackWait();
	// ジャンプ開始
	void UpdateJumpStart();
	// ジャンプ中
	void UpdateJump();
	// ジャンプ終了
	void UpdateJumpEnd();
	// 追跡
	void UpdateChase();

	// 更新
	void Update();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 描画
	void Render();

	// 被ダメージ処理
	// damage == 受けるダメージ
	void TakeDamage(int damage) override;

	// レベル処理
	void LevelUp();	//	レベルアップ
	void ChangeLevel(int level);	// レベル変更

private:
	// アニメーションの種類
	enum class EAnimType
	{
		None = -1,

		eIdle,		// 待機
		eWalk,		// 歩行
		eAttack,	// 攻撃
		eReload,	// リロード
		eJumpStart,	// ジャンプ開始
		eJump,		// ジャンプ中
		eJumpEnd,	// ジャンプ終了

		Num
	};
	// アニメーション切り替え
	void ChangeAnimation(EAnimType type);

	// プレイヤーのインスタンス
	static CYukari* spInstance;

	// アニメーションデータ
	struct AnimData
	{
		std::string path;	// アニメーションデータのパス
		bool loop;			// ループするかどうか
		float frameLength;	// アニメーションのフレーム数
	};
	// アニメーションデータのテーブル
	static const AnimData ANIM_DATA[];

	// 状態
	enum class EState
	{
		eIdle,		// 待機
		eAttack,	// 攻撃
		eAttackWait,// 攻撃終了待ち
		eJumpStart,	// ジャンプ開始
		eJump,		// ジャンプ中
		eJumpEnd,	// ジャンプ終了
		eChase,		// 追跡
	};
	EState mState;	// プレイヤーの状態

	CVector mTargetDir;	// キャラクターの見る方向
	CVector mMoveSpeed;	// 移動速度
	bool mIsGrounded;	// 接地しているかどうか
	bool IsFoundPlayer() const;	//プレイヤーを見つけたか

	CVector mPoint;

	CColliderLine* mpColliderLine;
	CTransform* mpRideObject;
	CColliderSphere* mpDamageCol;	//ダメージを受けるコライダ

	CVector playerPosition;		// 目標地点
	CVector yukariPosition;		// 自分の地点

	CGun* mpGun;	// 銃のモデル


	int mTimeShot;
	int mTimeShotEnd;
	float mElapsedTime;	// 経過時間計測用

	CYukariFrame* mpFrame;
	CYukariGauge* mpGauge;

};
#endif