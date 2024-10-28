#ifndef CALWAYSVERTICALNEEDLE_H
#define CALWAYSVERTICALNEEDLE_H

#include "CObjectBase.h"
#include "CColliderMesh.h"
#include "CModel.h"

// 常時出ている針クラス
class CAlwaysVerticalNeedle : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	CAlwaysVerticalNeedle(const CVector& pos, const CVector& scale, const CVector& rot);

	// デストラクタ
	~CAlwaysVerticalNeedle();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">自身</param>
	/// <param name="other">相手</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// 常時出ている針モデル
	CModel* mpNeedleBase;
	// 常時出ている針モデルのコライダー
	CColliderMesh* mpNeedleBaseCol;
	// 常時出ている針モデルの針コライダー
	CColliderMesh* mpNeedleCol;

	// 攻撃後の再起時間
	float mWaitAttackTime;
	// 衝突しているか
	bool mIsCollision;
	// プレイヤーを攻撃したか
	bool mIsAttack;
};
#endif