#ifndef CMOVETONBFL2_H
#define CMOVETONBFL2_H

#include "CNumberFloor2.h"

// 指定した移動ポイント間を移動する制限床(2回)
class CMoveToNbFl2 : public CNumberFloor2
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// <param name="waitTime">移動待ち時間</param>
	CMoveToNbFl2(const CVector& scale, const CVector& rot, float waitTime);
	// デストラクタ
	virtual ~CMoveToNbFl2();

	/// <summary>
	/// 移動ポイントを追加
	/// </summary>
	/// <param name="point">移動先の座標</param>
	/// <param name="time">移動にかかる時間</param>
	void AddMovePoint(const CVector& point, float time);

	// 最後の移動ポイントに移動後、逆ルートに戻るかどうか
	void SetReturnRoute(bool isReturn);

	// 更新処理
	void Update() override;

private:
	// 待機状態の更新処理
	void UpdateIdle();
	// 移動状態の更新処理
	void UpdateMove();
	// 移動ルートを更新
	void UpdateMoveRoute();
	// 状態
	enum EMoveState
	{
		eIdle,	// 待機状態
		eMove,	// 移動状態
	};
	// 状態を切り替える
	void ChangeMoveState(EMoveState state);
	// 現在の状態
	EMoveState mMoveState;

	// 移動ポイントのデータ
	struct MovePoint
	{
		CVector point;	// 移動先の座標
		float time;		// 移動にかかる時間
	};
	// 移動ポイントのリスト
	std::vector<MovePoint> mMovePoints;

	// 逆ルートで戻るかどうか
	bool mIsReturn;
	// 逆ルートで戻っている途中かどうか
	bool mIsReturnMove;
	// 移動開始時の移動ポイントのインデックス値
	int mMoveStartIndex;
	// 移動先の移動ポイントのインデックス値
	int mMoveEndIndex;
	// 移動待ち時間
	float mWaitTime;
	// 移動時間計測用
	float mMoveElapsedTime;
};
#endif