#ifndef CINVINCIBLE_H
#define CINVINCIBLE_H

#include "CObjectBase.h"
#include "CInvincibleObjectBase.h"
#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CModel.h"
class CSound;
class CPlayer;

// 無敵アイテム
class CInvincible : public CInvincibleObjectBase
{
public:
	CInvincible();
	~CInvincible();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突したときの情報</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	// 移動処理
	// 手前
	void MoveFront();
	// 奥
	void MoveBack();
	// 右
	void MoveRight();
	// 左
	void MoveLeft();

	void OnTouch(CPlayer* player);

	// 更新処理
	void Update();
	// 描画処理
	void Render();


	// 無敵オブジェの行列を取得
	//CMatrix Matrix() const override;

private:

	enum class EState
	{
		Idle,	// 待機状態
		Get,	// 取得状態
	};
	EState mState;
	int mStateStep;
	void ChangeState(EState state);
	void UpdateIdle();
	void UpdateGet();

	// 取得処理に必要なメンバ変数
	CVector mGetStartPos;	// 取得開始時のアイテムの座標
	CVector mGetTargetPos;	// 取得時のアイテムの移動先の座標
	float mGetCameraDist;	// 主と育児のカメラからの距離
	
	// モデル・素材関連
	// 無敵アイテムのモデル
	CModel* mpInvincibleModel;
	// 無敵アイテムのコライダー
	CColliderSphere* mpInvincibleCol;
	CColliderSphere* mpFieldCol;

	// 無敵アイテムを取った時のSE
	CSound* mpInvincibleSE;


	// ベクトル関連
	// 移動方向
	CVector mMoveVector;
	// 移動速度
	CVector mMoveSpeed;
	// 見る方向
	CVector mTargetDir;
	CVector mStartPos;
	CVector mTotalMovement;

	CVector2 mPosition;


	// 変数関連
	// カウント
	int mSwitchCounter;
	// 計測時間処理
	float mElapsedTime;
	// 床に接地しているか
	bool mIsGround;
	// 無敵になったかどうか
	bool mInvincibleUsed;
	// 保持されているか
	bool mIsHeld;
};
#endif