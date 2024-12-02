#ifndef CSTAGE1BUTTON_H
#define CSTAGE1BUTTON_H

#include "CColliderMesh.h"
#include "CObjectBase.h"

class CModel;
class COperationUI;

// ステージ1選択ボタン
class CStage1Button : public CObjectBase
{
public:
	// コンストラクタ
	CStage1Button(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	// デストラクタ
	~CStage1Button();

	// インスタンスのポインタの取得
	static CStage1Button* Instance();

	// 衝突処理
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// ステージを選択したことを伝える
	bool IsStage1Button();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// インスタンス
	static CStage1Button* spInstance;

	// ステージ1選択ボタン
	CModel* mpStage1ButtonModel;
	// ステージ1選択ボタンコライダー
	CColliderMesh* mpColliderMesh;

	// エンターキーのUI画像
	COperationUI* mpEnter;

	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;

	// 経過時間
	float mElapsedTime;
	// ステージ1に移行するかどうか
	bool mIsStage1Button;
	// プレイヤーが触れているかどうか
	bool mIsPlayerCollision;
};
#endif