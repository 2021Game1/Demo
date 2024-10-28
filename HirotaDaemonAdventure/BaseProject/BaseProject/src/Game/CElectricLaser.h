#ifndef CELECTRICLASER_H
#define CELECTRICLASER_H

#include "CObjectBase.h"
#include "CTexture.h"
#include "CColliderLine.h"

class CLineEffect;

// 電流ギミック
class CElectricLaser : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="move">移動量</param>
	/// <param name="moveTime">移動時間</param>
	/// <param name="laserStartPos">レーザーの開始位置</param>
	/// <param name="laserEndPos">レーザーの終了位置</param>
	/// <param name="colliderPos1">コライダーの開始位置</param>
	/// <param name="colliderPos2">コライダーの終了位置</param>
	CElectricLaser(const CVector& pos, const CVector& move, float moveTime,
		const CVector& laserStartPos, const CVector& laserEndPos,
		const CVector& colliderPos1, const CVector& colliderPos2);
	// デストラクタ
	~CElectricLaser();

	// オブジェクト削除処理
	void DeleteObject(CObjectBase* obj) override;

	// 更新処理
	void Update() override;

private:
	// ラインエフェクト
	CLineEffect* mpLineEffect;
	// 電流のアニメデータ
	TexAnimData mEffectAnimData;

	// コライダーライン
	CColliderLine* mpLine;

	// 初期位置
	CVector mStartPos;
	// 移動量
	CVector mMoveVec;
	// 移動時間
	float mMoveTime;
	// 計測時間
	float mElapsedTime;
};
#endif