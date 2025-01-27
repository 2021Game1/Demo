#ifndef CPLAYER_H
#define CPLAYER_H
#include "CXCharacter.h"
#include "CColliderCapsule.h"

class CInteractObject;
class CGaugeUI;
class CDebugFieldOfView;

/*
プレイヤークラス
キャラクタクラスを継承
*/
class CPlayer2 : public CXCharacter
{
public:
	// インスタンスのポインタの取得
	static CPlayer2* Instance();

	//コンストラクタ
	CPlayer2();
	//デストラクタ
	~CPlayer2();

	// オブジェクト削除を伝える
	void DeleteObject(CObjectBase* obj) override;

	//更新処理
	void Update() override;

	// ステータスを整数にして取得する
	int GetState();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突した時の情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// ダメージ処理
	void TakeDamege(int damage);

	//描画処理
	void Render() override;

private:
	// キーの入力情報から移動ベクトルを求める
	CVector CalcMoveVec() const;

	// 待機状態
	void UpdateIdle();
	// ジャンプ開始
	void UpdateJumpStart();
	// ジャンプ中
	void UpdateJump();
	// ジャンプ終了
	void UpdateJumpEnd();
	// 転倒処理
	void UpdateFall();
	// 死亡処理
	void UpdateDeath();

	// 移動の更新処理
	void UpdateMove();

	//アニメーションの種類
	enum class EAnimType
	{
		None = -1,

		eTPose,		// Tポーズ
		eIdle,		// 待機
		eWalk,		// 歩行
		eRun,		// 走行
		eJumpStart,	// ジャンプ開始
		eJumping,	// ジャンプ中
		eJumpEnd,	// ジャンプ終了
		eFall,		// 転倒
		eDeath,		// 死亡

		eCrawl,		// 這う
		eSneak,		// しゃがみ移動
		eCrouch_up, // しゃがんで拾う

		Num
	};
	//アニメーション切り替え
	void ChangeAnimation(EAnimType type);

	//プレイヤーのインスタンス
	static CPlayer2* spInstatnce;

	//アニメーションデータ
	struct AnimData
	{
		std::string path;	//アニメーションデータのパス
		bool loop;			//ループするかどうか
		float framelength;	//アニメーションのフレーム数
	};
	//アニメーションデータのテーブル
	static const AnimData ANIM_DATA[];

	// プレイヤーの状態
	enum class EState
	{
		eTPose,		// Tポーズ
		eIdle,		// 待機
		eWalk,		// 歩行
		eRun,		// 走行
		eJumpStart,	// ジャンプ開始
		eJump,		// ジャンプ
		eJumpEnd,	// ジャンプ終了
		eFall,		// 転倒
		eDeath,		// 死亡

		eCrawl,		// 這う
		eSneak,		// しゃがみ移動
		eCrouch_up, // しゃがんで拾う
	};

	int mMaxSt;	// スタミナの最大値
	int mSt;	// スタミナ
	//int mSan;	// 正気度

	std::string ToString(EState state);

	EState mState;	// プレイヤーの状態
	int mStateStep;	// 状態内のステップ管理用

	CVector mMoveSpeed;	// 前後左右の移動速度
	float mMoveSpeedY;	// 重力やジャンプによる上下の移動速度

	CVector mJunpStartPos;// ジャンプ開始時の位置
	CVector mJunpEndPos;	// ジャンプ終了時の位置

	bool mIsGrounded;	// 接地しているかどうか
	CVector mGroundNormal;	// 接地している地面の法線

	CColliderCapsule* mpColliderCapsule;	//カプセルコライダー

	CTransform* mpRideObject;	// 乗ることの出来るオブジェクトか

	// 一番近くにある調べられるオブジェクトを取得
	CInteractObject* GetNearInteractObj() const;
	// 近くにある調べられるオブジェクトのリスト
	std::list<CInteractObject*> mNearInteractObjs;
	CCollider* mpSearchCol;	// 調べるオブジェクトを探知するコライダ―

	float mFovAngle;	// 視野範囲の角度

	CGaugeUI* mpHpGauge;	// HPゲージ
	CGaugeUI* mpStGauge;	// スタミナゲージ

	CDebugFieldOfView* mpDebugFov;	// 視野範囲のデバッグ表示

};

#endif // !CPLAYER_H

