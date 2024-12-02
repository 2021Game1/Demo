#ifndef CRESULTANNOUNCEMENT_H
#define CRESULTANNOUNCEMENT_H

#include "CTask.h"
#include <vector>

class CImage;
class CExpandButton;
class CText;
class CFont;

// リザルト画面表示
// リザルト画面選択メニュー
class CResultAnnouncement : public CTask
{
public:
	// コンストラクタ
	CResultAnnouncement();
	// デストラクタ
	~CResultAnnouncement();

	//インスタンスのポインタの取得
	static CResultAnnouncement* Instance();

	// タイトル画面終了か
	bool IsEnd() const;
	// ゲームを開始するか
	bool IsStartGame() const;
	// ゲームを終了するか
	bool IsExitGame() const;

	// 開く
	void Open();
	// 閉じる
	void Close();

	// 開いたかどうか
	bool IsOpened() const;
	// 別のクラスでリザルトの状態を確認する用
	bool IsResultOpened() const;

	//  更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	static CResultAnnouncement* spInstance;

	// 何もしない状態
	void UpdateNone();
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
		eNone,		// 何もしない状態
		eIdle,		// 待機状態
		eOpen,		// メニューを開く
		eSelect,	// メニュー選択
		eFadeOut,	// フェードアウト
	};
	// 状態切り替え
	void ChangeState(EState state);
	// [CONTINUE]クリック時のコールバック関数
	void OnClickContinue();
	// [END]クリック時のコールバック関数
	void OnClickEnd();

	EState mState;			// 現在の状態
	int mStateStep;			// 状態内でのステップ管理用
	int mSelectIndex;		// 現在選択している項目
	float mElapsedTime;		// 経過時間計測用
	float mElapsedABCTime;	// A,B,C画像の経過時間計測用
	float mElapsedRankTime;	// ランク！画像の経過時間計測用
	float mAlpha;			// α値
	bool mIsEnd;			// タイトル画面終了フラグ
	bool mIsOpened;			// メニュー開閉フラグ
	bool mResultOpened;		// 別のクラスに伝えるようフラグ

	CText* mpStartText;						// 「CLICK TO START」のテキスト
	std::vector<CExpandButton*> mButtons;	// ボタンの画像配列

	// リザルトの画像
	enum Result
	{
		A,	// 最高
		B,	// 中間
		C,	// 最低
	};
	std::vector<std::pair<Result, CImage*>> mABCItems;

	// ランク！画像
	CText* mpRankText;
	CFont* mpRankFont;
};
#endif