#ifndef CMEAT2_H
#define CMEAT2_H

#include "CObjectBase.h"
#include "CMeatObjectBase.h"
#include "CColliderSphere.h"
#include "CModel.h"

// 骨付き肉クラス
class CMeat2 : public CMeatObjectBase
{
public:
	// コンストラクタ
	CMeat2(const CVector& pos, const CVector& rot, const CVector& scale);
	// デストラクタ
	~CMeat2();

	// 衝突処理
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	//インスタンスのポインタの取得
	static CMeat2* Instance();

	// 肉を取得したか
	bool IsMeat2() const;

	// スコアを設定
	static void SetScore(int score);
	// スコアを取得
	static int GetScore();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// インスタンス
	static CMeat2* spInstance;
	// スコア
	static int sScore;

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

	CVector2 mPosition;

	// 変数
	// 状態内のステップ
	int mStateStep;
	// 計測時間
	float mElapsedTime;
	// 取得時のカメラからの距離
	float mGetCameraDist;
	// 二つ目の肉
	bool mMeat2;
	// 床に接地しているか
	bool mIsGround;
};
#endif