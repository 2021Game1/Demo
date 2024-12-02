#ifndef CMAJICSWORDENEMY_H
#define CMAJICSWORDENEMY_H
#include "CObjectBase.h"
#include "CWeaponEnemy.h"
#include "CColliderLine.h"
#include "CModel.h"

// マジックソードクラス
class CMajicSwordEnemy :public CWeaponEnemy
{
public:
	CMajicSwordEnemy();
	~CMajicSwordEnemy();

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

	// 武器の行列を取得
	CMatrix Matrix() const override;

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	// マジックソードのモデル
	CModel* mpSword;
	// 攻撃判定用のコライダー
	CColliderLine* mpAttackCol;
};
#endif