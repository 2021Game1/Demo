#include "CResult.h"
#include "CText.h"
#include "CGameManager.h"
#include "CScore.h"
#include "CStageTime.h"
#include "CImage.h"
#include "CStageManager.h"
#include "CStageManager.h"
#include "CFont.h"

// ステージタイマーのインスタンス
CResult* CResult::spInstance = nullptr;

CResult* CResult::Instance()
{
	if (spInstance == nullptr)
	{
		spInstance = new CResult();
	}
	return spInstance;
}

// コンストラクタ
CResult::CResult()
	: mRemainingTime(0)
	, mScore(0)
	, mCurrentDisplayedScore(0)
	, mTargetScore(0)
	, mScoreAnimationSpeed(20)
	, mpTime(nullptr)
	, mpScore(nullptr)
{
	// インスタンスの設定
	spInstance = this;

	// タイトルロゴのフォントデータを生成
	mpFont = new CFont("res\\Font\\toroman.ttf");
	mpFont->SetFontSize(60);
	mpFont->SetAlignment(FTGL::TextAlignment::ALIGN_CENTER);
	mpFont->SetLineLength(WINDOW_WIDTH);

	// リザルトのテキストの設定
	mpResultText = new CText(mpFont, 60, CVector2(100.0f, 0.0f),
		CVector2(1250, 600), CColor(1.0f, 1.0f, 0.0f, 1.0f),
		ETaskPriority::eUI, 0, ETaskPauseType::eDefault, false, true);
	mpResultText->SetTextAlign(ETextAlignH::eLeft, ETextAlignV::eMiddle);
}

// デストラクタ
CResult::~CResult()
{
	spInstance = nullptr;
	SAFE_DELETE(mpResultText);
	SAFE_DELETE(mpFont);
}

// 時間とスコアの合計を設定
void CResult::SetResult(int remainingTime, int score)
{
	mRemainingTime = remainingTime;
	mScore = score;
	// 目標スコアに現在の合計スコアを代入
	mTargetScore = GetTotalScore();
}

// 時間とスコアの合計を取得
int CResult::GetTotalScore() const
{
	// 時間 × 10 + スコア
	return mRemainingTime * 10 + mScore;
}

// 初期スコアの設定
void CResult::StartScoreAnimation()
{
	mCurrentDisplayedScore = 0;
}

// スコアを増加させるアニメーションの設定
void CResult::UpdateScoreAnimation()
{
	// 現在のスコアが目標スコアより少なかったら
	if (mCurrentDisplayedScore < mTargetScore)
	{
		// アニメーション速度を可算
		mCurrentDisplayedScore += mScoreAnimationSpeed;
		// 現在のスコアが目標スコアより大きくなったら
		if (mCurrentDisplayedScore > mTargetScore)
		{
			// 現在のスコアと目標スコアを同じにする
			mCurrentDisplayedScore = mTargetScore;
		}
	}
}

// 更新処理
void CResult::Update()
{
	// 現在のステージ番号
	int currentStage = CGameManager::StageNo();

	// スコアと時間を合算して描画
	SetResult(mpTime->Instance()->GetTime(), mpScore->Instance()->GetScore());

	// ゲームステータスがリザルトだったら
	if (CGameManager::GameState() == EGameState::eResult)
	{
		// リザルト画面の開始時にスコアアニメーションを開始
		if (!mpResultText->IsShow())
		{
			SetResult(mpTime->Instance()->GetTime(), mpScore->Instance()->GetScore());
			StartScoreAnimation();
		}
		mpResultText->SetShow(true);
		UpdateScoreAnimation();
	}
	else
	{
		mpResultText->SetShow(false);
	}
}

// 描画処理
void CResult::Render()
{
	// アニメーションされたスコアを表示
	char buffer[64];
	sprintf_s(buffer, "RESULT ×  %04d", mCurrentDisplayedScore);
	mpResultText->SetText(buffer);

	//// 時間 × 10 ＋ スコア
	//int totalScore = mRemainingTime * 10 + mScore; // 残り時間に100をかけて、スコアに加える
	//char buffer[64];
	//sprintf_s(buffer, "RESULT:%04d", totalScore);
	//mpResultText->SetText(buffer);
}