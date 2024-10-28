#ifndef CSIGNBOARDPAUSE_H
#define CSIGNBOARDPAUSE_H

#include "CTask.h"
#include "CInput.h"
#include "CImage.h"

class CSignboardPause : public CTask
{
private:
	// プレイヤーのインスタンス
	static CSignboardPause* spInstance;
	bool mIsPaused;			//ポーズ中かどうか
	int mPauseStep;			//ポーズ処理のステップ
	float mElapsedTime;		//経過時間計測用
	float mPauseTextAlpha;	//PAUSEテキストのアルファ値保存用

	CImage* mFadeBg;		//フェード背景のイメージ
	CImage* mPauseText;		//PAUSEテキストのイメージ

public:
	//インスタンスのポインタの取得
	static CSignboardPause* Instance();

	
	//コンストラクタ
	CSignboardPause();
	//デストラクタ
	~CSignboardPause();

	void StartPause();
	void TogglePause();
	void EndPause();
	bool IsPauseInProgress();

	//更新
	void Update();
	//描画
	void Render();
};
#endif