#ifndef CHATENABLOCK_H
#define CHATENABLOCK_H

#include "CRideableObject.h"
#include "CModel.h"
#include "CColliderSphere.h"

class CRecoveryObject;
class CInvincible;
class CSound;

// ハテナブロック
class CHatenaBlock : public CRideableObject
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">スケール</param>
	/// <param name="reactionTag">反応するオブジェクトタグ</param>
	/// <param name="reactionLayer">反応するオブジェクトレイヤー</param>
	CHatenaBlock(const CVector& pos, const CVector& scale,
		ETag reactionTag, ELayer reactionLayer);

	// デストラクタ
	~CHatenaBlock();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">自身</param>
	/// <param name="other">相手</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// ステージ開始時の位置を設定
	void SetStartPosition(const CVector& pos);

	// 更新
	void Update() override;

	// 描画
	void Render();

private:

	// モデル・素材関連
	// ハテナブロックのモデル
	CModel* mpModel;
	// ハテナブロックのコライダー
	CColliderSphere* mpColliderSphere;

	// 回復アイテムのポインター
	CRecoveryObject* mpHeart;
	// 無敵アイテムのポインター
	CInvincible* mpStar;
	// ブロックを叩いた時のSE
	CSound* mpHitBlockSE;
	

	// 状態関連
	// ハテナブロックの状態
	enum class EState
	{
		Idle,	// 待機状態
		Hit,	// プレイヤーが触れた状態
		After,	// 当たった後
	};
	// 状態を切り替える
	void ChangeState(EState state);
	// 待機状態の更新処理
	void UpdateIdle();
	// 当たった時の更新処理
	void UpdateHit();
	// 当たった後の更新処理
	void UpdateAfter();

	// 現在の状態
	EState mState;

	
	// ベクトル関連
	// 移動速度
	CVector mMoveSpeed;
	// ハテナブロックの初期位置の保存
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
	// 触れた時に反応するオブジェクトのレイヤー
	ELayer mReactionLayer;
};
#endif