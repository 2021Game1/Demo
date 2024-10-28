#ifndef CKICK_H
#define CKICK_H
#include "CObjectBase.h"
#include "CWeaponEnemy.h"
#include "CColliderSphere.h"
#include "CXCharacter.h"
class CModel;

// 足のコライダークラス
class CKick :public CWeaponEnemy
{
public:
	CKick();
	~CKick();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した自身のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	// 攻撃開始
	void AttackStart() override;

	// 攻撃終了
	void AttackEnd() override;

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	// モデルデータ
	CModelX* mpModel;
	// 攻撃判定用のコライダー
	CColliderSphere* mpAttackCol;

	// くっつける行列のポインター
	const CMatrix* mpAttachMtx;
	// くっつける行列の本体
	CMatrix mAttachMtx;
};
#endif