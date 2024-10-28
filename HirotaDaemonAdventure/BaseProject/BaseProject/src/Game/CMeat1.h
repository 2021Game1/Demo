#ifndef CMeat1_H
#define CMeat1_H

#include "CObjectBase.h"
#include "CMeatObjectBase.h"
#include "CColliderSphere.h"
#include "CModel.h"
class CMeat1Event;

// 骨付き肉クラス
class CMeat1 : public CMeatObjectBase
{
public:
	// コンストラクタ
	CMeat1(const CVector& pos, const CVector& rot, const CVector& scale);
	// デストラクタ
	~CMeat1();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">自身</param>
	/// <param name="other">相手</param>
	/// <param name="hit">衝突情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	//インスタンスのポインタの取得
	static CMeat1* Instance();

	// 肉を取得したか
	bool IsMeat1();

	// スコアを設定
	static void SetScore(int score);
	// スコアを取得
	static int GetScore();

	// 管理されているイベントを設定
	void SetEvent(CMeat1Event* ev);

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// インスタンス
	static CMeat1* spInstance;
	// スコア
	static int sScore;

	// イベントのポインター
	CMeat1Event* mpEvent;

	// モデル関連
	// 肉のモデル
	CModel* mpMeat;
	// 肉のコライダーモデル
	CColliderSphere* mpMeatSphere;

	// 状態関連
	// 肉の状態
	enum class EState
	{
		eIdle,	// 待機状態
		eGet,	// 取得状態
	};
	EState mState;
	// 状態を変化させる処理
	void ChangeState(EState state);
	// 待機状態更新処理
	void UpdateIdle();
	// 取得状態更新処理
	void UpdateGet();

	// ベクトル関連
	// 取得開始時のアイテムの座標
	CVector mGetStartPos;
	// 取得時のアイテムの移動先の座標
	CVector mGetTargetPos;
	// 初期位置
	CVector mStartPos;

	// 変数
	// 状態内のステップ
	int mStateStep;
	// 計測時間
	float mElapsedTime;
	// 取得時のカメラからの距離
	float mGetCameraDist;
	// 一つ目の肉
	bool mMeat1;
	// 床に接地しているか
	bool mIsGround;
};
#endif