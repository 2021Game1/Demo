#ifndef CSTAGE4BUTTON_H
#define CSTAGE4BUTTON_H

#include "CColliderMesh.h"
#include "CObjectBase.h"

class CModel;
class COperationUI;

// ステージ4選択ボタン
class CStage4Button : public CObjectBase
{
public:
	CStage4Button(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	~CStage4Button();

	// インスタンスのポインタの取得
	static CStage4Button* Instance();

	// 衝突処理
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// ステージを選択したことを伝える
	bool IsStage4Button();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// インスタンス
	static CStage4Button* spInstance;

	// ステージ4選択ボタン
	CModel* mpStage4ButtonModel;
	// ステージ4選択ボタン
	CColliderMesh* mpColliderMesh;

	// エンターキーのUI画像
	COperationUI* mpEnter;

	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;

	// 経過時間
	float mElapsedTime;
	// ステージ4に移行するかどうか
	bool mIsStage4Button;
	// プレイヤーが触れているかどうか
	bool mIsPlayerCollision;
};
#endif