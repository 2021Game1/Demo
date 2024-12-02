#ifndef CFALLINGOBJECTS_H
#define CFALLINGOBJECTS_H


#include "CRideableObject.h"
#include "CModel.h"
#include "CColliderMesh.h"

// 落下する床クラス
class CFallingObjects : public CRideableObject
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">初期位置</param>
	/// <param name="scale">床のスケール値</param>
	/// <param name="reactionTag">触れると反応するオブジェクトのタグ</param>
	/// <param name="reactionLayer">触れると反応するコライダーのレイヤー</param>
	CFallingObjects(const CVector& pos, const CVector& scale,
		ETag reactionTag, ELayer reactionLayer);

	// デストラクタ
	~CFallingObjects();

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
	// 落下する床のモデル
	CModel* mpModel;
	// 落下する床のコライダー
	CColliderMesh* mpColliderMesh;


	// 状態関連
	// 落下する床の状態
	enum class EState
	{
		Idle,		// 待機状態
		Falling,	// 落下状態
	};
	// 状態を切り替える
	void ChangeState(EState state);
	// 待機状態の更新処理
	void UpdateIdle();
	// 落下状態の更新処理
	void UpdateFalling();
	// 現在の状態
	EState mState;


	// ベクトル関連
	// 移動速度
	CVector mMoveSpeed;
	// 位置を設定する
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