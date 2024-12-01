#pragma once
#include "CTask.h"

class CFont;
class CImage;
class CExpandButton;
class CSound;

class CTitleUI : public CTask
{
public:
	// コンストラクタ
	CTitleUI();
	// デストラクタ
	~CTitleUI();

	// 開く
	void Open();
	// 閉じる
	void Close();
	// 開いているかどうか
	bool IsOpened() const;

	// タイトル画面終了か
	bool IsEnd() const;
	// ゲームを開始するか
	bool IsStartGame() const;
	// 操作説明を開く
	bool IsTutorial() const;
	// ゲームを終了するか
	bool IsExitGame() const;

	// 更新
	void Update() override;
	// 描画
	void Render() override;

private:
	// 待機状態
	void UpdateIdle();
	// メニューを開く
	void UpdateOpen();
	// メニュー選択
	void UpdateSelect();
	// フェードアウト
	void UpdateFadeOut();

	// タイトルの状態
	enum class EState
	{
		eIdle,		// 待機状態
		eOpen,		// メニューを開く
		eSelect,	// メニュー選択
		eFadeOut,	// フェードアウト
	};
	// 状態切り替え
	void ChangeState(EState state);

	// [START]クリック時のコールバック関数
	void OnClickStart();
	// [TUTORIAL]クリック時のコールバック関数
	void OnClickTutorial();
	// [QUIT]クリック時のコールバック関数
	void OnClickQuit();

	EState mState;		// 現在の状態
	int mStateStep;		// 状態内でのステップ管理用
	float mElapsedTime;	// 経過時間計測用
	// フェードイン用の経過時間計測用
	float mFadeInTime;
	// フェードアウト用の経過時間計測用
	float mFadeOutTime;
	float mTutorialAlpha;
	float mTutorialAlphaMax;
	bool mIsEnd;		// タイトル画面終了フラグ
	bool mFadeOut;
	int mSelectIndex;	// 現在選択している項目

	CFont* mpLogoFont;	// タイトルロゴのフォント
	CText* mpTitleLogo;	// タイトルロゴ
	CImage* mpTitleBg;	// タイトル背景イメージ
	CText* mpStartText;	// 「CLICK TO START」のテキスト
	std::vector<CExpandButton*> mButtons;

	// 操作説明画像
	CImage* mpTutorialImage;
	CSound* mpOpenTutorial;
	// 開いているかどうかのフラグ
	bool mIsOpened;
	bool mTutorialSE;
};