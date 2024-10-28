#ifndef CRESULT_H
#define CRESULT_H

#include "CTask.h"

class CText;
class CStageTime;
class CScore;
class CImage;
class CFont;

class CResult : public CTask
{
public:
	// コンストラクタ
	CResult();
	// デストラクタ
	~CResult();

	//インスタンスのポインタの取得
	static CResult* Instance();

	// 時間とスコアを設定
	void SetResult(int remainingTime, int score);
	// 時間とスコアの合計を取得
	int GetTotalScore() const;

	// 初期スコアの設定
	void StartScoreAnimation();
	// スコアを増加させるアニメーションの設定
	void UpdateScoreAnimation();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// インスタンス
	static CResult* spInstance;

	// リザルトのテキスト
	CText* mpResultText;
	// 制限時間
	CStageTime* mpTime;
	// スコア
	CScore* mpScore;
	// フォントテキスト
	CFont* mpFont;

	// 時間
	int mRemainingTime;
	// スコア
	int mScore;
	// 現在のスコア
	int mCurrentDisplayedScore;
	// 目標スコア
	int mTargetScore;
	// スコアを増加させるアニメーションの速度
	int mScoreAnimationSpeed;
};
#endif