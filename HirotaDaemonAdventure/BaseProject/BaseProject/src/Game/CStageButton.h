#ifndef CSTAGEBUTTON_H
#define CSTAGEBUTTON_H

#include "CColliderMesh.h"
#include "CRideableObject.h"
class CStageMenu;
class CModel;

// ステージ選択ボタン
class CStageButton : public CRideableObject
{
public:
	// コンストラクタ
	CStageButton(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	// デストラクタ
	~CStageButton();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">自身</param>
	/// <param name="other">相手</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	// ステージ選択ボタン
	CModel* mpModel;
	// ステージ選択ボタンのコライダー
	CColliderMesh* mpColliderMesh;

	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;

	CStageMenu* mpStageMenu;
};
#endif