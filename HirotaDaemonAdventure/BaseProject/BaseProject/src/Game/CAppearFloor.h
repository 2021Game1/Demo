#ifndef CAPPEARFLOOR_H
#define CAPPEARFLOOR_H


#include "CRideableObject.h"
#include "CModel.h"
#include "CColliderMesh.h"

// 現れる床クラス
class CAppearFloor : public CRideableObject
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">初期位置</param>
	/// <param name="scale">床のスケール値</param>
	/// <param name="reactionTag">触れると反応するオブジェクトのタグ</param>
	/// <param name="reactionLayer">触れると反応するコライダーのレイヤー</param>
	CAppearFloor(const CVector& pos, const CVector& scale,
		ETag reactionTag, ELayer reactionLayer);

	// デストラクタ
	~CAppearFloor();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:

	// モデル・素材関連
	// 現れる床のモデル
	CModel* mpModel;
	// 消える床のコライダー
	CColliderMesh* mpColliderMesh;


	// 状態関連
	// 現れる床の状態
	enum class EState
	{
		Idle,		// 待機状態
		Appeared,	// 現れている状態
	};
	// 状態を切り替える
	void ChangeState(EState state);
	// 待機状態の更新処理
	void UpdateIdle();
	// 現れている状態の更新処理
	void UpdateAppeared();
	// 現在の状態
	EState mState;


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