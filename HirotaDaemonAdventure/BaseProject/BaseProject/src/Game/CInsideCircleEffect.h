#ifndef CINSIDECIRCLEEFFECT
#define CINSIDECIRCLEEFFECT

#include "CObjectBase.h"
#include "CModel.h"
#include "CWeapon.h"

// サークル状のエフェクト
class CInsideCircleEffect : public CWeapon
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="angle"></param>
	/// <param name="dist"></param>
	CInsideCircleEffect(float angle, float dist);
	~CInsideCircleEffect();

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