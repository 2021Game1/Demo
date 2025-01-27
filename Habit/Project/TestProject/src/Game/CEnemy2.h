#pragma once
#include "CXCharacter.h"
#include "CCollider.h"
#include "CModel.h"

// 視野範囲のデバッグ表示クラスの前宣言
class CDebugFieldOfView;
class CNavNode;

/*
エネミー2クラス
キャラクタクラスを継承
*/
class CEnemy2 : public CXCharacter
{
public:
	// コンストラクタ
	CEnemy2(std::vector<CVector> patrolPoints);
	// デストラクタ
	~CEnemy2() override;

	// オブジェクト削除を伝える関数
	void DeleteObject(CObjectBase* obj) override;
	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突した時の情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

private:
	// アニメーションの種類
	enum class EAnimType
	{
		None = -1,

		eIdle,		// 待機
		eWalk,		// 歩行
		eRun,		// 走行
		eAttack,	// 攻撃

		Num			// アニメーションの種類の数
	};
	// アニメーションの切り替え
	void ChangeAnimation(EAnimType type, bool trstart = false);

	// アニメーションデータ
	struct AnimData
	{
		std::string path;	// アニメーションデータのパス
		bool loop;			// ループするかどうか
		float framelength;	// アニメーションのフレーム数
	};

	// アニメーションデータのテーブル
	static const AnimData ANIM_DATA[];

	enum class EState
	{
		eIdle,		// 待機
		ePatrol,	// 巡回中
		eChase,		// プレイヤーを追いかける
		eLost,		// プレイヤーを見失う
		eAttack,	// プレイヤー攻撃
	};

	// 状態を切り替え
	void ChangeState(EState state);

	// プレイヤーが視野範囲内に入ったかどうか
	bool IsFoundPlayer() const;
	// 現在位置からプレイヤーが見えているかどうか
	bool IsLookPlayer() const;
	// プレイヤーを攻撃できるかどうか
	bool CanAttackPlayer() const;

	// 指定した位置まで移動する
	bool MoveTo(const CVector& targetPos, float speed);

	// 次に巡回するポイントを変更する
	void ChangePatrolPoint();

	// 待機状態時の更新処理
	void UpdateIdle();
	// 巡回中の更新処理
	void  UpdatePatrol();
	// 追跡時の更新処理
	void UpdateChase();
	// プレイヤーを見失った時の更新処理
	void UpdateLost();
	// 攻撃時の更新処理
	void UpdateAttack();

	// 状態の文字列を取得
	std::string GetStateStr(EState state) const;
	// 状態の色を取得
	CColor GetStateColor(EState state) const;

	EState mState;	// 敵の状態
	int mStateStep;	// 状態内のステップ管理用
	float mElapsedTime;	// 経過時間計測用

	float mFovAngle;	// 視野範囲の角度
	float mFovLength;	// 視野範囲の距離
	CDebugFieldOfView* mpDebugFov;	// 視野範囲のデバッグ表示

	CNavNode* mpLostPlayerNode;	// プレイヤーを見失った位置のノード

	//CVector mAttackStartPos;// 攻撃開始時の位置
	//CVector mAttackEndPos;	// 攻撃終了時の位置

	// 巡回ポイントのリスト
	std::vector<CNavNode*> mPatrolPoints;
	int mNextPatrolIndex;	// 次に巡回する番号

	std::vector<CNavNode*> mMoveRoute;	//求めた最短経路記憶用
	int mNextMoveIndex;					// 次に移動するノードのインデックス値

	CCollider* mpColliderCapsule;	//カプセルコライダー
	CCollider* mpAttackCollider;	// 攻撃時のコライダー

	bool mAttackHit;	// 攻撃が当たったかどうか
};