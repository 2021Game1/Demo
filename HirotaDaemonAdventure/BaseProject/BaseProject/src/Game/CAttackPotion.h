#ifndef CATTACKPOTION_H
#define CATTACKPOTION_H

#include "CObjectBase.h"
#include "CAttackObjectBase.h"
#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CModel.h"
class CSound;
class CPlayer;

// 攻撃力アップポーション
// ポーションのmtlにはTextures/を先頭に入れる
class CAttackPotion : public CAttackObjectBase
{
public:
	CAttackPotion();
	~CAttackPotion();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">自身</param>
	/// <param name="other">相手</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	// 更新処理
	void Update();
	// 描画処理
	void Render();
private:
	 
	void UpdateGet();

	// モデル・素材関連
	CModel* mpAttackPotion;
	// コライダー
	CColliderSphere* mpFieldCol;
	CColliderSphere* mpAttackCol;


	// ベクトル関連
	// 移動方向
	CVector mMoveVector;
	// 移動速度
	CVector mMoveSpeed;
	// 見る方向
	CVector mTargetDir;
	CVector mStartPos;


	// 変数関連
	// 計測時間処理
	float mElapsedTime;
	// 床に接地しているか
	bool mIsGround;
	// 無敵になったかどうか
	bool mAttackUsed;
	// 保持されているか
	bool mIsHeld;

};
#endif