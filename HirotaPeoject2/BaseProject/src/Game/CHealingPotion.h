#ifndef CHEALINGPOTION_H
#define CHEALINGPOTION_H

#include "CObjectBase.h"
#include "CItemObjectBase.h"
#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CModel.h"
class CSound;
class CPlayer;

// 回復薬アイテムオブジェのベースクラス
class CHealingPotion : public CItemObjectBase
{
public:
	CHealingPotion();
	~CHealingPotion();

	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	//// 回復開始
	//void HealingStart();
	//// 回復終了
	//void HealingEnd();

	void OnTouch(CPlayer* player);

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	// モデル・素材関連
	// 回復薬モデル
	CModel* mpHealingPotion;
	// 回復判定用のコライダー
	CColliderSphere* mpHealingCol;

	// 回復したときのSE
	CSound* mpHealingSE;

	// 移動速度
	CVector mMoveSpeed;

	// 変数関連
	// 接地しているか
	bool mIsGround;
	// 回復したかどうか
	bool mHealingUsed;
	bool mIsHeld;
};
#endif