#ifndef CNEEDLEUPDOWN_H
#define CNEEDLEUPDOWN_H

#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderMesh.h"


// 上下の針ギミック
// ニードルモデルの針の部分
class CNeedleUpDown : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">スケール</param>
	/// <param name="rot">回転</param>
	/// <param name="reactionTag">反応するオブジェクトタグ</param>
	/// <param name="reactionLayer">反応するオブジェクトレイヤー</param>
	CNeedleUpDown(const CVector& pos, const CVector& scale, const CVector& rot, const float endPos,
		ETag reactionTag, ELayer reactionLayer);

	// デストラクタ
	~CNeedleUpDown();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">自身</param>
	/// <param name="other">相手</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// ステージ開始時の位置を設定
	void SetStartPosition(const CVector& pos);

	// 攻撃開始
	void AttackStart() override;

	// 攻撃終了
	void AttackEnd() override;

	// 更新
	void Update() override;

	// 描画
	void Render();

private:

	// モデル・素材関連
	// 針のモデル
	CModel* mpNeedle;

	// 針モデルのコライダー
	CColliderMesh* mpColliderMesh;
	// 針モデルのベースコライダー
	CColliderMesh* mpColliderBaseMesh;

	// 状態関連
	// 針モデルの状態
	enum class EState
	{
		Idle,		// 待機状態
		Attack,		// 攻撃状態
		AttackEnd,	// 攻撃終了状態
	};
	// 状態を切り替える
	void ChangeState(EState state);
	// 待機状態の更新処理
	void UpdateIdle();
	// 攻撃状態
	void UpdateAttack();
	// 攻撃終了状態
	void UpdateAttackEnd();

	// 現在の状態
	EState mState;


	// ベクトル関連
	// 針モデルの初期位置
	CVector mStartPos;


	// 変数関連
	// 状態内のステップ
	int mStateStep;
	// 経過時間計測用
	float mElapsedTime;
	// 初期位置
	float mStartPosition;
	// 最後の位置
	float mEndPosition;


	// 待ち時間
	float mWait;
	// 攻撃後の待ち時間
	float mAttackWait;
	// 攻撃後の再起時間
	float mWaitAttackTime;
	// 衝突しているか
	bool mIsCollision;
	// プレイヤーを攻撃したか
	bool mIsAttack;
	// 触れた時に反応するおオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するオブジェクトのレイヤー
	ELayer mReactionLayer;
};

class CNeedleUpDownBase : public CObjectBase
{
public:
	CNeedleUpDownBase(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	~CNeedleUpDownBase();

	// ステージ開始時の位置を設定
	void SetStartPosition(const CVector& pos);
	
	void Update();
	void Render();
private:
	// 針のベースモデル
	CModel* mpNeedleBase;
	// 針モデルの初期位置
	CVector mStartPos;

	// 触れた時に反応するおオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するオブジェクトのレイヤー
	ELayer mReactionLayer;
};

#endif