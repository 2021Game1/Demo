#ifndef CEXSTAGEBUTTON_H
#define CEXSTAGEBUTTON_H

#include "CColliderMesh.h"
#include "CObjectBase.h"

class CModel;
class COperationUI;

// EXステージ選択ボタン
class CEXStageButton : public CObjectBase
{
public:
	// コンストラクタ
	CEXStageButton(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	// デストラクタ
	~CEXStageButton();

	// インスタンスのポインタの取得
	static CEXStageButton* Instance();

	// 衝突処理
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// ステージを選択したことを伝える
	bool IsEXStageButton();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// インスタンス
	static CEXStageButton* spInstance;

	// EXステージ選択ボタン
	CModel* mpEXStageButtonModel;
	// EXステージ選択ボタンコライダー
	CColliderMesh* mpColliderMesh;

	// エンターキーのUI画像
	COperationUI* mpEnter;

	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;

	// 経過時間
	float mElapsedTime;
	// EXステージに移行するかどうか
	bool mIsEXStageButton;
	// プレイヤーが触れているかどうか
	bool mIsPlayerCollision;
};
#endif