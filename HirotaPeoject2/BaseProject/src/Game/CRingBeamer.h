#ifndef CRINGBEAMER_H
#define CRINGBEAMER_H

#include "CObjectBase.h"
#include "CModel.h"

// リングビーマ
class CRingBeamerUpper : public CObjectBase
{
public:

	CRingBeamerUpper(const CVector& pos, const CVector& scale, const CVector& rot);
	~CRingBeamerUpper();

	void Update() override;
	void Render() override;

private:
	// リングビーマモデル
	CModel* mpRingBeamerUpper;

	// 状態関連
	// リングビーマの状態
	enum class EState
	{
		eIdle,		// 待機状態
		eAttack,	// 攻撃状態
		eAttackEnd,	// 攻撃終了状態
	};
	// 状態を切り替える
	void ChangeState(EState state);
	// 待機状態の更新処理
	void UpdateIdle();
	// 攻撃状態
	void UpdateAttack();
	// 攻撃終了状態
	void UpdateAttackEnd();

	// 現在の状態
	EState mState;

	// ベクトル関連
	CVector mStartPos;

	// 変数関連
	// 状態内のステップ
	int mStateStep;
	// 攻撃のカウント
	int mAttackCount;
	// 経過時間計測用
	float mElapsedTime;
	// 初期位置
	float mStartPosition;
	// 最後の位置
	float mEndPosition;
	// 攻撃待ち時間
	float mAttackWait;
	// 攻撃終了後の待ち時間
	float mAttackEndWait;
	// 衝撃波は一度だけ
	bool mIsAttackWave;

	// プレイヤーを見つけたか
	bool IsFoundPlayer() const;
};

class CRingBeamerLower : public CObjectBase
{
public:
	CRingBeamerLower(const CVector& pos, const CVector& scale, const CVector& rot);
	~CRingBeamerLower();

	void Update() override;
	void Render() override;
private:
	// リングビーマモデル(下)
	CModel* mpRingBeamerLower;

	CVector mStartPos;
};
#endif