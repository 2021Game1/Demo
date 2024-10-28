#ifndef CROTATEFLOORGIMMICK_H
#define CROTATEFLOORGIMMICK_H

#include "CRideableObject.h"
#include "CColliderMesh.h"
class CPlayer;
class CModel;

// マリオ風の回転ギミック(プレイヤー反応)
class CRotateFloorGimmick : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// <param name="reactionTag">触れると反応するオブジェクトのタグ</param>
	/// <param name="reactionLayer">触れると反応するオブジェクトのレイヤー</param>
	CRotateFloorGimmick(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);

	// デストラクタ
	~CRotateFloorGimmick();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit)override;

	// 状態を切り替える
	void ChangeRotationState();

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:

	// モデル・素材関連
	// 回転する床のモデル
	CModel* mpRotateFloor;
	// 回転する床の表側のコライダー
	CColliderMesh* mpFrontFloorCol;
	// 回転する床の裏側のコライダー
	CColliderMesh* mpBackFloorCol;


	// 状態関連
	// 回転する床の状態
	enum class EState
	{
		Idle,		// 待機状態
		Rotate,
	};
	// 状態を切り替える
	void ChangeState(EState state);
	// 待機状態の更新処理
	void UpdateIdle();
	// 回転状態の更新処理
	void UpdateRotate();
	// 現在の状態
	EState mState;


	// ベクトル関連
	// 移動速度
	CVector mMoveSpeed;
	// 位置を設定する
	CVector mStartPos;
	// 初期回転値
	CQuaternion mDefaultRot;


	// 変数関連
	// 状態内のステップ
	int mStateStep;
	// 衝突しているか
	bool mIsCollision;
	// プレイヤーがジャンプをしたかどうか
	bool mIsJumping;
	// 次の状態
	bool mNextRotateIsRotate2;
	// 回転した角度を保持する変数
	float mRotationAngle;
	// 回転開始時の角度
	float mRotateStartAngle;
	// 回転終了時の角度
	float mRotateEndAngle;
	// 経過時間を計測するよう
	float mElapsedTime;
	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;

	//プレイヤーを見つけたか
	bool IsFoundPlayer() const;
};
#endif