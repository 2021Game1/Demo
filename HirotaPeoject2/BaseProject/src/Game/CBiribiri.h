#ifndef CBIRIBIRI_H
#define CBIRIBIRI_H

#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderMesh.h"

// ビリビリエフェクト
class CBiribiri : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="owner">エフェクトを発生させたオブジェクト</param>
	/// <param name="pos">発生位置</param>
	CBiribiri(CObjectBase* owner, const CVector& pos);
	// デストラクタ
	~CBiribiri();

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	CObjectBase* mpOwner;	// このエフェクトの持ち主
	CModel* mpModel;		// エフェクトのモデルデータ
	CVector mMoveSpeed;		// 移動速度
	float mKillMoveDist;	// 移動したら消える距離
	float mMovedDist;		// 現在移動した距離
	float mElapsedTime;

	float mInitialRingSize; // 初期リングサイズ
	float mCurrentRingSize; // 現在のリングサイズ
	float mMaxRingSize;     // 最大リングサイズ
	
	CColliderMesh* mpMesh;
};
#endif