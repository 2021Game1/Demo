#ifndef CSCORE_H
#define CSCORE_H

#include "CTask.h"

class CText;
class CFont;

class CScore : public CTask
{
public:
	// コンストラクタ
	CScore();
	// デストラクタ
	~CScore();

	//インスタンスのポインタの取得
	static CScore* Instance();

	// スコアを設定
	void Score(int score);

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

	// スコアを取得
	int GetScore() const { return mScore; }
private:
	static CScore* spInstance;

	// スコアのテキスト
	CText* mpScoreText;
	// フォントテキスト
	CFont* mpLogoFont;

	// スコア
	int mScore;

	// ステージ1か
	bool mIsStage1;
	// ステージ2か
	bool mIsStage2;
	// ステージ3か
	bool mIsStage3;
	// ステージ4か
	bool mIsStage4;
};
#endif