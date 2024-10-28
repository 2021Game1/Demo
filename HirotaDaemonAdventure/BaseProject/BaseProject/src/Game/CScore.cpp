#include "CScore.h"
#include "CText.h"
#include "CGameManager.h"
#include "CTaskManager.h"
#include "CVanguard.h"
#include "CBlueMedal.h"
#include "CMeat1.h"
#include "CMeat2.h"
#include "CMeat3.h"
#include "CStageManager.h"

// スコアのインスタンス
CScore* CScore::spInstance = nullptr;

CScore* CScore::Instance()
{
    if (spInstance == nullptr)
    {
        spInstance = new CScore();
    }
    return spInstance;
}

// インスタンス
CScore::CScore()
	: mScore(0)
	, mIsStage1(false)
	, mIsStage2(false)
	, mIsStage3(false)
    , mIsStage4(false)
{
	// インスタンスの設定
	spInstance = this;

    // タイトルロゴのフォントデータを生成
    mpLogoFont = new CFont("res\\Font\\toroman.ttf");
    mpLogoFont->SetFontSize(30);
    //mpLogoFont->SetAlignment(FTGL::TextAlignment::ALIGN_CENTER);
    mpLogoFont->SetLineLength(WINDOW_WIDTH);

    // スコアのテキスト
    mpScoreText = new CText
    (
        mpLogoFont, 30,
        CVector2(1050, 100),
        CVector2(400, 300),
        CColor(1.0f, 1.0f, 1.0f, 1.0f),
        ETaskPriority::eUI,
        0
    );
    mpScoreText->SetEnableOutline(true);
    mpScoreText->SetOutlineColor(CColor(0.0f, 0.0f, 0.0f));
}

// デストラクタ
CScore::~CScore()
{
    CStageManager::RemoveTask(this);
	spInstance = nullptr;
    SAFE_DELETE(mpLogoFont);
    SAFE_DELETE(mpScoreText);
}

// スコアの設定
void CScore::Score(int score)
{
    mScore = score;
}

// 更新処理
void CScore::Update()
{
    // 現在のステージ番号
    int currentStage = CGameManager::StageNo();
    // ポーズをしているかどうか
    bool pose = CTaskManager::Instance()->IsPaused();

    // 現在のステージ番号が0だったら
    if (currentStage == 0)
    {
        // 各ステージフラグをfalseにする
        mIsStage1 = false;
        mIsStage2 = false;
        mIsStage3 = false;
        mIsStage4 = false;
        // スコアテキストを非表示に設定
        mpScoreText->SetShow(false);
        // ステージ0の場合は他の処理をスキップ
        return;
    }
    
    // ポーズじゃなかったら
    if (!pose)
    {
        // ステージ1
        if (currentStage == 1 && !mIsStage1)
        {
            mIsStage1 = true;
            mIsStage2 = false;
            mIsStage3 = false;
            mIsStage4 = false;
            mpScoreText->SetShow(true);
        }
        // ステージ2
        else if (currentStage == 2 && !mIsStage2)
        {
            mIsStage1 = false;
            mIsStage2 = true;
            mIsStage3 = false;
            mIsStage4 = false;
            mpScoreText->SetShow(true);
        }
        // ステージ3
        else if (currentStage == 3 && !mIsStage3)
        {
            mIsStage1 = false;
            mIsStage2 = false;
            mIsStage3 = true;
            mIsStage4 = false;
            mpScoreText->SetShow(true);
        }
        // ステージ3
        else if (currentStage == 4 && !mIsStage4)
        {
            mIsStage1 = false;
            mIsStage2 = false;
            mIsStage3 = false;
            mIsStage4 = true;
            mpScoreText->SetShow(true);
        }
        
        // ステージ1,2,3に入っている時のみスコアの計算を行う
        if (mIsStage1 || 
            mIsStage2 || 
            mIsStage3 ||
            mIsStage4)
        {
            // 現在のスコアの計算
            // ヴァンガードスコア + ブルーメダルスコア
            mScore = CVanguard::GetScore() 
                + CBlueMedal::GetScore()
                + CMeat1::GetScore()
                + CMeat2::GetScore()
                + CMeat3::GetScore();
        }
    }

    // スコアの設定
    Score(mScore);

    //printf("mScore:%d\n", mScore);
}

// 描画処理
void CScore::Render()
{
    // スコアが0であることを確認
    // 0だったら0000と表示
    if (mScore == 0)
    {
        mpScoreText->SetText("SCORE  0000");
    }
    // 0以外だったらスコアを描画
    else
    {
        char buffer[16];
        sprintf_s(buffer, "SCORE  %04d", mScore);
        mpScoreText->SetText(buffer);
    }
}