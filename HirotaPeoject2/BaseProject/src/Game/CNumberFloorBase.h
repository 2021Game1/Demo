#ifndef CNUMBERFLOORBASE_H
#define CNUMBERFLOORBASE_H

#include "CModel.h"
#include "CCollider.h"
#include "CObjectBase.h"

// 回数で消滅する床Base
class CNumberFloorBase : public CObjectBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	CNumberFloorBase(const CVector& pos, const CVector& scale, const CVector& rot);
	// デストラクタ
	virtual ~CNumberFloorBase();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した相手のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

protected:

	// 床オブジェクトモデルデータ
	CModel* mpModel;
	// 床オブジェクトのコライダー
	CCollider* mpCollider;

	// 待機状態
	void UpdateIdle();
	// プレイヤー待機状態
	virtual void UpdateWaiting();
	// 落下状態
	void UpdateFalling();

	// 元の位置に戻る際のモデルパス設定
	virtual void SetModelPath(const std::string& path);
	std::string mModelPath;

	// 状態
	enum class EState
	{
		Idle,	// 待機状態
		Waiting,// プレイヤー待機状態
		Falling,// 落下状態
	};
	// 状態を切り替える
	void ChangeState(EState state);
	// 現在の状態
	EState mState;

	// 移動速度
	CVector mMoveSpeed;
	// 初期位置
	CVector mStartPos;

	// 状態内のステップ
	int mStateStep;
	// 点滅回数
	int mSwitchCount;
	// 落下状態のステップ
	int mFallingSwitch;
	// フェード時間
	float mFadeTime;
	// 待ち時間
	float mWaitTime;
	// 計測時間
	float mElapsedTime;
	// 衝突しているか
	bool mIsCollision;
	// case 0が終わったか
	bool mCase0End;
	// case 1が終わったか
	bool mCase1End;
};
#endif