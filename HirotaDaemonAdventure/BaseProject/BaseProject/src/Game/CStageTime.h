#ifndef CSTAGETIME_H
#define CSTAGETIME_H

#include "CTask.h"

class CText;
class CImage;
class CFont;

class CStageTime : public CTask
{
public:
	// コンストラクタ
	CStageTime();
	// デストラクタ
	~CStageTime();

	//インスタンスのポインタの取得
	static CStageTime* Instance();

	// 時間を設定
	void Time(int time);
	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

	// 時間を取得
	int GetTime() const { return mTime; }
private:
	// インスタンス
	static CStageTime* spInstance;


	// 時間のテキスト
	CText* mpTimerText;
	// フォント
	CFont* mpLogoFont;
	// 時計の画像
	CImage* mpTimer;

	// 時間
	int mTime;

	// ステージ1か
	bool mIsStage1;
	// ステージ2か
	bool mIsStage2;
	// ステージ3か
	bool mIsStage3;
	// ステージ4火
	bool mIsStage4;
};
#endif