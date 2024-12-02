#ifndef UNITYCHAN_H
#define UNITYCHAN_H
//キャラクタクラスのインクルード
#include "CXCharacter.h"
#include "CColliderLine.h"
#include "CRideableObject.h"

/*
プレイヤークラス
キャラクタクラスを継承
*/
class CUnityChan : public CXCharacter
{
public:
	//インスタンスのポインタの取得
	static CUnityChan* Instance();

	// コンストラクタ
	CUnityChan();
	// デストラクタ
	~CUnityChan();

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

private:
	// アニメーションの種類
	enum class EAnimType
	{
		None = -1,


		eIdle,		// 待機
		eWalk,		// 歩行
		eAttack,	// 攻撃
		eJumpStart,	// ジャンプ開始
		eJump,		// ジャンプ中
		eJumpEnd,	// ジャンプ終了

		Num
	};
	// アニメーション切り替え
	void ChangeAnimation(EAnimType type);

	// プレイヤーのインスタンス
	static CUnityChan* spInstance;

	// アニメーションデータ
	struct AnimData
	{
		std::string path;	// アニメーションデータのパス
		bool loop;			// ループするかどうか
		float frameLength;	// アニメーションのフレーム数
	};
	// アニメーションデータのテーブル
	static const AnimData ANIM_DATA[];

	// プレイヤーの状態
	enum class EState
	{
		eIdle,		// 待機
		eAttack,	// 攻撃
		eAttackWait,// 攻撃終了待ち
		eJumpStart,	// ジャンプ開始
		eJump,		// ジャンプ中
		eJumpEnd,	// ジャンプ終了
	};
	EState mState;	// プレイヤーの状態

	CVector mMoveSpeed;	// 移動速度
	bool mIsGrounded;	// 接地しているかどうか

	CColliderLine* mpColliderLine;
	CTransform* mpRideObject;
};
#endif