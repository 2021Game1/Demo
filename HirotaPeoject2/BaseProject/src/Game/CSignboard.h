#ifndef CSIGNBOARD_H
#define CSIGNBOARD_H

#include "CColliderMesh.h"
#include "CRideableObject.h"
class CImage;
class CModel;
class CSignboardUI;

// 看板クラス
class CSignboard : public CRideableObject
{
public:
	// インスタンスのポインタの取得
	static CSignboard* Instance();

	CSignboard(const CVector& position, const CVector& scale, const CVector& rot,
		ETag reactionTag, ELayer reactionLayer);
	~CSignboard();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">自身</param>
	/// <param name="other">相手</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	//プレイヤーを見つけたか
	bool IsFoundPlayer() const;

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:
	// プレイヤーのインスタンス
	static CSignboard* spInstance;


	// モデル・素材関連
	// 看板モデル
	CModel* mpModel;
	// 看板モデルのコライダー
	CColliderMesh* mpColliderMesh;

	// テキストイメージ
	CImage* mUkyeText;
	// PAUSEテキストのイメージ
	CImage* mPauseText;
	// 看板のテキスト画像
	CImage* mText;
	// Uキーのテキスト画像
	CSignboardUI* mpUkye;


	// 状態関連
	// 看板の状態
	enum class EState
	{
		Idle,		// 待機状態
		Appeared,	// 現れている状態
	};
	// 現在の状態
	EState mState;


	// 変数関連
	//ポーズ中かどうか
	bool mIsPaused;
	//経過時間計測用
	float mElapsedTime;
	//PAUSEテキストのアルファ値保存用
	float mPauseTextAlpha;
	// 触れた時に反応するオブジェクトのタグ
	ETag mReactionTag;
	// 触れた時に反応するレイヤー
	ELayer mReactionLayer;

	

};
#endif