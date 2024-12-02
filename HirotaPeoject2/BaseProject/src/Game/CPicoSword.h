#ifndef CPICOSWORD_H
#define CPICOSWORD_H

#include "CObjectBase.h"
#include "CWeaponEnemy.h"
#include "CColliderLine.h"
#include "CModel.h"

class CPicoChan;

// ピコちゃんソードクラス
class CPicoSword : public CWeaponEnemy
{
public:
	CPicoSword();
	~CPicoSword();

	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 攻撃開始
	void AttackStart() override;

	// 攻撃終了
	void AttackEnd() override;

	void SetPicoChanInstance(CPicoChan* pPicoChan);

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

	CPicoChan* mpPicoChan;
};
#endif