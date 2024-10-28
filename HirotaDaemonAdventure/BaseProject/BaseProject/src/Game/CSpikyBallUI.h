#ifndef CSPIKYBALLUI_H
#define CSPIKYBALLUI_H

#include "CTask.h"
#include <vector>

class CImage;
class CPlayer;

// とげボール使用画像
class CSpikyBallUI : public CTask
{
public:
	// コンストラクタ
	CSpikyBallUI();
	// デストラクタ
	~CSpikyBallUI();

	// 開く
	void Open();
	// 閉じる
	void Close();

	// 開いているかどうか
	bool IsOpened() const;

	// プレイヤーオブジェクトへのポインタを設定する関数
	void SetPlayer(CPlayer* player);

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	// 使用待機状態
	void UpdateIdle();
	// 使用済み待機状態
	void UpdateUsed();

	enum class EState
	{
		eIdle,	// 使用待機状態
		eUsed,	// 使用済み待機状態
	};
	// 状態切り替え
	void ChangeState(EState state);

	// とげボール枠の画像
	CImage* mpSpikyFrame;
	// とげボールの画像
	CImage* mpSpikyBallUI;
	// CTRL画像
	CImage* mpCTRL;

	// 現在の状態
	EState mState;
	// プレイヤーのポインター
	CPlayer* mpPlayer;
	// 状態内でのステップ管理用
	int mStateStep;
	// 経過時間計測用
	float mElapsedTime;
	// 開いているかどうか
	bool mIsOpened;
};
#endif