#include "CMoveToNbFl2.h"
#include "CStageManager.h"

// rotの後にモデルパスを選択できる
CMoveToNbFl2::CMoveToNbFl2(const CVector& scale, const CVector& rot
	, float waitTime)
	: CNumberFloor2(CVector::zero, scale, rot)
	, mMoveState(EMoveState::eIdle)
	, mIsReturn(false)
	, mIsReturnMove(false)
	, mMoveStartIndex(0)
	, mMoveEndIndex(0)
	, mWaitTime(waitTime)
	, mMoveElapsedTime(0.0f)
{
}

CMoveToNbFl2::~CMoveToNbFl2()
{
	CStageManager::RemoveTask(this);
}

// 移動ポイントを追加
void CMoveToNbFl2::AddMovePoint(const CVector& point, float time)
{
	MovePoint mp;
	mp.point = point;
	mp.time = time;
	mMovePoints.push_back(mp);

	// 1つ目のポイントであれば、現在の座標に反映できる
	if (mMovePoints.size() == 1)
	{
		Position(point);
	}
}

// 最後の移動ポイントに移動後、逆ルートに戻るかどうか
void CMoveToNbFl2::SetReturnRoute(bool isReturn)
{
	mIsReturn = isReturn;
}

// 状態を切り替える
void CMoveToNbFl2::ChangeMoveState(EMoveState state)
{
	if (state == mMoveState) return;
	mMoveState = state;
}

// 移動ルートを更新
void CMoveToNbFl2::UpdateMoveRoute()
{
	// 順ルートで移動中
	if (!mIsReturnMove)
	{
		// 移動先は、現在の移動ポイント + 1
		mMoveEndIndex = mMoveStartIndex + 1;
		// 移動先のインデックス値が移動ポイントの数を超えたら
		if (mMoveEndIndex >= mMovePoints.size())
		{
			// 逆ルートで移動する場合
			if (mIsReturn)
			{
				// 現在の移動ポイント - 1
				mMoveEndIndex = mMoveStartIndex - 1;
				// 逆ルート移動中のフラグをオン
				mIsReturnMove = true;
			}
			// 開始位置に戻す
			else
			{
				mMoveEndIndex = 0;
			}
		}
	}
	// 逆ルートで移動中
	else
	{
		// 移動先は、現在の移動ポイント - 1
		mMoveEndIndex = mMoveStartIndex - 1;
		// 現在の移動ポイントより手前の移動ポイントが存在しない場合
		if (mMoveEndIndex < 0)
		{
			// 移動先は、現在の移動ポイント + 1
			mMoveEndIndex = mMoveStartIndex + 1;
			// 逆ルート移動フラグをオフにする
			mIsReturnMove = false;
		}
	}
}

// 待機状態の更新処理
void CMoveToNbFl2::UpdateIdle()
{
	// 待ち時間を経過していない
	if (mMoveElapsedTime < mWaitTime)
	{
		mMoveElapsedTime += Time::DeltaTime();
	}
	// 待ち時間を経過した
	else
	{
		// 経過時間から待ち時間分減少
		mMoveElapsedTime -= mWaitTime;
		// 次に移動するポイントを決定
		UpdateMoveRoute();
		// 移動状態へ移行
		ChangeMoveState(EMoveState::eMove);
	}
}

// 移動状態の更新処理
void CMoveToNbFl2::UpdateMove()
{
	// 開始地点と終了地点の移動ポイントを取得
	// &を付けないとコピーされるので2倍メモリを使ってしまう
	const MovePoint& start = mMovePoints[mMoveStartIndex];
	const MovePoint& end = mMovePoints[mMoveEndIndex];
	// 移動時間を取得(順ルートと逆ルートで参照先を変える)
	float moveTime = mIsReturnMove ? start.time : end.time;

	// 移動時間を経過していない
	if (mMoveElapsedTime < moveTime)
	{
		// 移動時間の割合で、現在位置を求める
		float percent = mMoveElapsedTime / moveTime;
		CVector pos = CVector::Lerp(start.point, end.point, percent);
		Position(pos);

		// 時間を経過
		mMoveElapsedTime += Time::DeltaTime();
	}
	// 移動時間が経過した
	else
	{
		// 終了位置に配置
		Position(end.point);
		// 現在のインデックス値に移動先のインデックス値を設定
		mMoveStartIndex = mMoveEndIndex;

		mMoveElapsedTime -= moveTime;
		// 待機状態へ移行
		ChangeMoveState(EMoveState::eIdle);
	}
}

// 更新
void CMoveToNbFl2::Update()
{
	if (mState != EState::Falling)
	{
		switch (mMoveState)
		{
		case EMoveState::eIdle:
			UpdateIdle();
			break;
		case EMoveState::eMove:
			UpdateMove();
			break;
		}
	}
	else
	{

	}

	CNumberFloor2::Update();
}