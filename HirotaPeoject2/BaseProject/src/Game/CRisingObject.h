#ifndef CRISINGOBJECT_H
#define CRISINGOBJECT_H

#include "CRideableObject.h"
#include "CModel.h"
#include "CColliderMesh.h"

// 上昇する床クラス
class CRisingObject : public CRideableObject
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">初期位置</param>
	/// <param name="scale">床のスケール値</param>
	/// <param name="reactionTag">触れると反応するオブジェクトのタグ</param>
	/// <param name="reactionLayer">触れると反応するコライダーのレイヤー</param>
	CRisingObject(const CVector& pos, const CVector& scale,
		ETag reactionTag, ELayer reactionLayer);

	// デストラクタ
	~CRisingObject();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// ステージ開始時の位置を設定
	void SetStartPosition(const CVector& pos);

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:

	// モデル・素材関連
	// 上昇する床のモデル
	CModel* mpModel;
	// 上昇する床のコライダー
	CColliderMesh* mpColliderMesh;


	// 状態関連
	// 上昇する床の状態
	enum class EState
	{
		Idle,		// 待機状態
		Rising,		// 上昇状態
	};
	// 状態を切り替える
	void ChangeState(EState state);
	// 待機状態の更新処理
	void UpdateIdle();
	// 上昇状態の更新処理
	void UpdateRising();
	// 現在の状態
	EState mState;


	// ベクトル関連
	// 移動速度
	CVector mMoveSpeed;
	// 位置を設定
	CVector mStartPos;


	// 変数関連
	// 状態内のステップ
	int mStateStep;
	// フェード時間
	float mFadeTime;
	// 待ち時間
	float mWaitTime;
	// 衝突しているか
	bool mIsCollision;
	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;
};
#endif