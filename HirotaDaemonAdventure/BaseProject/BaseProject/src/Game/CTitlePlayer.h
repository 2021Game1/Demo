#ifndef CTITLEPLAYER_H
#define CTITLEPLAYER_H

#include "CXCharacter.h"
#include "CColliderLine.h"

// タイトルプレイヤークラス
class CTitlePlayer : public CXCharacter
{
public:
	//インスタンスのポインタの取得
	static CTitlePlayer* Instance();

	// コンストラクタ
	CTitlePlayer();
	// デストラクタ
	~CTitlePlayer();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// プレイヤーのインスタンス
	static CTitlePlayer* spInstance;

	// 縦のコライダーライン
	CColliderLine* mpColliderLine;

	// 準備中の状態
	void UpdateReady();
	// 待機状態
	void UpdateIdle();

	// プレイヤーの状態
	enum class EState
	{
		eReady,				 // 準備中
		eIdle,				 // 待機
	};
	// 現在の状態を切り替え
	void ChangeState(EState state);
	// プレイヤーの状態
	EState mState;
	CTransform* mpRideObject;

	// アニメーションの種類
	enum class EAnimType
	{
		None = -1,

		eTPose,			// Tポーズ
		eIdle,			// 休憩

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

	CVector mGroundNormal;		// 設置している地面の法線

	// 状態内のステップ
	int mStateStep;

	// 重力やジャンプによるY軸の移動速度
	float mMoveSpeedY;

	// 接地しているかどうか
	bool mIsGrounded;
};
#endif