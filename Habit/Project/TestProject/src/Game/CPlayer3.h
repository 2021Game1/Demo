#pragma once
//キャラクタクラスのインクルード
#include "CXCharacter.h"
#include "CColliderCapsule.h"

class CInteractObject;
class CGaugeUI;
class CDebugFieldOfView;

/*
プレイヤークラス
キャラクタクラスを継承
*/
class CPlayer3 : public CXCharacter
{
public:
	// インスタンスのポインタの取得
	static CPlayer3* Instance();

	// コンストラクタ
	CPlayer3();
	// デストラクタ
	~CPlayer3();

	// 更新処理
	void Update() override;

	// ステータスを整数にして取得する
	int GetState();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突した時の情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// ダメージ処理
	void TakeDamege(int damage);

	//描画処理
	void Render() override;

private:
	//アニメーションの種類
	enum class EAnimType
	{
		None = -1,

		eTPose,		// Tポーズ
		eIdle,		// 待機

		Num
	};

	//アニメーション切り替え
	void ChangeAnimation(EAnimType type);

	//プレイヤーのインスタンス
	static CPlayer3* spInstatnce;

	//アニメーションデータ
	struct AnimData
	{
		std::string path;	//アニメーションデータのパス
		bool loop;			//ループするかどうか
		float framelength;	//アニメーションのフレーム数
	};
	//アニメーションデータのテーブル
	static const AnimData ANIM_DATA[];

	// プレイヤーの状態
	enum class EState
	{
		eTPose,		// Tポーズ
		eIdle,		// 待機
	};

	EState mState;	// プレイヤーの状態

};
