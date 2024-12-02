#ifndef CSTAGE2MENUOBJECT_H
#define CSTAGE2MENUOBJECT_H

#include "CObjectBase.h"
#include "CColliderSphere.h"
#include "CModel.h"

// ステージメニューオブジェクト
class CStage2MenuObject : public CObjectBase
{
public:
	// コンストラクタ
	CStage2MenuObject(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	// デストラクタ
	~CStage2MenuObject();

	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// 状態
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

	// キノコモデル
	CModel* mpKinokoModel;
	// キノコのコライダー
	CColliderSphere* mpColliderSphere;

	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;
};
#endif