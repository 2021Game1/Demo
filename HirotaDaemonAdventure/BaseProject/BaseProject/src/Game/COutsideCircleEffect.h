#ifndef COUTSIDECIRCLEEFFECT_H
#define COUTSIDECIRCLEEFFECT_H

#include "CObjectBase.h"
#include "CModel.h"
#include "CWeapon.h"

// サークル状のエフェクト
class COutsideCircleEffect : public CWeapon
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="angle"></param>
	/// <param name="dist"></param>
	COutsideCircleEffect(float angle, float dist);
	~COutsideCircleEffect();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;
private:
	// エフェクトのモデル
	CModel* mpCircleModel;

	// 経過時間観測用
	float mElapsedTime;
	float mAngle;
	float mDistance;
};
#endif