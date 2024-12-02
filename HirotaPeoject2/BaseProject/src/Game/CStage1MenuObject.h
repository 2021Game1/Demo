#ifndef CSTAGE1MENUOBJECT_H
#define CSTAGE1MENUOBJECT_H

#include "CObjectBase.h"
#include "CColliderSphere.h"
#include "CModel.h"

// ステージメニュー1オブジェクト
class CStage1MenuObject : public CObjectBase
{
public:
	// コンストラクタ
	CStage1MenuObject(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	// デストラクタ
	~CStage1MenuObject();

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
	enum class EState
	{
		eIdle,
		eReaction,
	};
	EState mState;
	int mStateStep;
	bool mIsCollisionPlayer;
	float mElapsedTime;
	CVector mStartScale;
	CVector mShrinkScale;

	void ChangeState(EState state);
	void UpdateIdle();
	void UpdateReaction();

	// 回数制限床モデル
	CModel* mpSkyModel;
	// 回数制限床コライダー
	CColliderSphere* mpColliderSphere;

	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;

};
#endif