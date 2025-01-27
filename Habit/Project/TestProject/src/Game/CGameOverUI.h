#pragma once
#include "CTask.h"

class CFont;
class CImage;
class CExpandButton;

class CGameOverUI : public CTask
{
public:
	// コンストラクタ
	CGameOverUI();
	// デストラクタ
	~CGameOverUI();

	// ゲームオーバー画面終了か
	bool IsEnd() const;
	// ゲームをコンティニューするか
	bool IsContinue() const;
	// ゲームを終了するか
	bool IsExitGame() const;

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	// 待機状態
	void UpdateIdle();
	// フェードアウト
	void UpdateFadeOut();

	// シーンの状態
	enum class EState
	{
		eIdle,		// 待機状態
		eFadeOut,	// フェードアウト
	};

	// 状態切り替え
	void ChangeState(EState state);

	// [START]クリック時のコールバック関数
	void OnClickStart();
	// [QUIT]クリック時のコールバック関数
	void OnClickQuit();

	EState mState;		// 現在の状態
	int mStateStep;		// 状態内でのステップ管理用
	float mElapsedTime;	// 経過時間計測用
	bool mIsEnd;		// ゲームオーバー画面終了フラグ
	int mSelectIndex;	// 現在選択している項目

	CImage* mpGameOverBg;	// ゲームオーバー背景イメージ
	std::vector<CExpandButton*> mButtons;
};