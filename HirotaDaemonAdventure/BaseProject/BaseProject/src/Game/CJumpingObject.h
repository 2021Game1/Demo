#ifndef CJUMPINGOBJECT_H
#define CJUMPINGOBJECT_H

#include "CModel.h"
#include "CCollider.h"
#include "CObjectBase.h"

// プレイヤーを跳ねさせるオブジェクトBase
class CJumpingObject : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	CJumpingObject(const CVector& pos, const CVector& scale, const CVector& rot);
	// デストラクタ
	virtual ~CJumpingObject();

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

protected:
	// モデル・素材関連
	// 跳ねるオブジェクトモデルデータ
	CModel* mpModel;
	// 跳ねるオブジェクトのコライダー
	CCollider* mpCollider;

	// 状態関連
	// 跳ねさせる床の状態
	enum class EState
	{
		eIdle,			// 待機状態
		eBounce,		// 跳ねさせる状態
	};
	// 状態を切り替える
	void ChangeState(EState state);
	
	// 待機状態の更新処理
	void UpdateIdle();

	// 跳ねさせる状態の開始処理
	void BounceStart();
	// 跳ねさせる状態の更新処理
	void UpdateBounce();
	// 現在の状態
	EState mState;

	// ベクトル関連
	// 初期の大きさ
	CVector mStartScale;
	// 縮む大きさ
	CVector mShrinkScale;

	// 変数関連
	// 状態内のステップ
	int mStateStep;
	// 経過時間計測用
	float mElapsedTime;
	// SPACEを押したときの経過時間
	float mJumpedElapsedTime;
	// 衝突しているか
	bool mIsCollisionPlayer;
};
#endif