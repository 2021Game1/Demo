#ifndef CSTAGE2BUTTON_H
#define CSTAGE2BUTTON_H

#include "CColliderMesh.h"
#include "CObjectBase.h"

class CModel;
class COperationUI;

// ステージ2選択ボタン
class CStage2Button : public CObjectBase
{
public:
	// コンストラクタ
	CStage2Button(const CVector& pos, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	// デストラクタ
	~CStage2Button();

	// インスタンスのポインタの取得
	static CStage2Button* Instance();

	// 衝突処理
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// ステージを選択したことを伝える
	bool IsStage2Button();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// インスタンス
	static CStage2Button* spInstance;

	// ステージ2選択ボタン
	CModel* mpStage2ButtonModel;
	// ステージ2選択ボタンコライダー
	CColliderMesh* mpColliderMesh;

	// エンターキーのUI画像
	COperationUI* mpEnter;

	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;

	// 計測時間
	float mElapsedTime;
	// ステージ2に移行するか
	bool mIsStage2Button;
	// プレイヤーが触れているか
	bool mIsPlayerCollision;
};
#endif