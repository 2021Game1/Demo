#include "CStageTime.h"
#include "CText.h"
#include "CImage.h"
#include "CGameManager.h"
#include "CTaskManager.h"
#include "CPlayer.h"
#include "CStageManager.h"

#define STAGE_1 300
#define STAGE_2 300
#define STAGE_3 400
#define STAGE_4 500

#define STAR_STAGE_TIME 1.0f

// ステージタイマーのインスタンス
CStageTime* CStageTime::spInstance = nullptr;

CStageTime* CStageTime::Instance()
{
    if (spInstance == nullptr)
    {
        spInstance = new CStageTime();
    }
    return spInstance;
}

// コンストラクタ
CStageTime::CStageTime() 
    : mTime(0)
    , mpTimer(nullptr)
	, mIsStage1(false)
	, mIsStage2(false)
	, mIsStage3(false)
    , mIsStage4(false)
{
    // インスタンスの設定
    spInstance = this;

    // タイトルロゴのフォントデータを生成
    mpLogoFont = new CFont("res\\Font\\toroman.ttf");
    mpLogoFont->SetFontSize(40);
    //mpLogoFont->SetAlignment(FTGL::TextAlignment::ALIGN_CENTER);
    mpLogoFont->SetLineLength(WINDOW_WIDTH);

    mpTimerText = new CText
    (
        mpLogoFont, 40,
        CVector2(1000, 30),
        CVector2(400, 300),
        CColor(1.0f, 1.0f, 1.0f, 1.0f),
        ETaskPriority::eUI,
        0
    );
    mpTimerText->SetEnableOutline(true);
    mpTimerText->SetOutlineColor(CColor(0.0f, 0.0f, 0.0f));
    //mpTimerText->SetTextAlign(ETextAlignH::eRight, ETextAlignV::eTop);

    // 時計の画像を設定
    mpTimer = new CImage("Timer");
    mpTimer->SetSize(100.0f, 70.0f);
    mpTimer->SetUV(0, 0, 1, 1);
    mpTimer->SetPos(900, 30);
    mpTimer->SetColor(CColor(1.0f, 1.0f, 1.0f, 1.0f));
    mpTimer->SetShow(false);
}

// デストラクタ
CStageTime::~CStageTime()
{
    CStageManager::RemoveTask(this);
    spInstance = nullptr;
    SAFE_DELETE(mpLogoFont);
    SAFE_DELETE(mpTimerText);
    SAFE_DELETE(mpTimer);
}

// 時間を取得
void CStageTime::Time(int time) {
    mTime = time;
}

// 更新処理
void CStageTime::Update()
{
    int currentStage = CGameManager::StageNo();
    bool paused = CTaskManager::Instance()->IsPaused();

    CPlayer* palyer = CPlayer::Instance();

    // ステージが0の場合はタイマーをリセット
    if (currentStage == 0)
    {
        mIsStage1 = false;
        mIsStage2 = false;
        mIsStage3 = false;
        //mTime = 0;
    }
    else if (!paused) // ポーズ中でなければタイマー更新
    {
        // ステージ1, 2, 3の場合の処理
        if (currentStage == 1 && !mIsStage1)
        {
            mTime = STAGE_1;
            mIsStage1 = true;
            mIsStage2 = false;
            mIsStage3 = false;
            mIsStage4 = false;
        }
        else if (currentStage == 2 && !mIsStage2)
        {
            mTime = STAGE_2;
            mIsStage1 = false;
            mIsStage2 = true;
            mIsStage3 = false;
            mIsStage4 = false;
        }
        else if (currentStage == 3 && !mIsStage3)
        {
            mTime = STAGE_3;
            mIsStage1 = false;
            mIsStage2 = false;
            mIsStage3 = true;
            mIsStage4 = false;
        }
        else if (currentStage == 4 && !mIsStage4)
        {
            mTime = STAGE_4;
            mIsStage1 = false;
            mIsStage2 = false;
            mIsStage3 = false;
            mIsStage4 = true;
        }

        // ゲーム時間の更新
        static float startTime = STAR_STAGE_TIME;
        if(CGameManager::GameState() == EGameState::eGame)
        startTime -= Time::DeltaTime();
        if (startTime <= 0.0f)
        {
            if (mTime > 0)
            {
                mTime--; // タイマーを減らす
                startTime = STAR_STAGE_TIME; // タイマーをリセット
            }

            // タイマーが0になったらプレイヤーを死亡させる
            if (mTime == 0)
            {
                palyer->UpdateDeath();
            }
        }
    }

    // ステージ1,2,3,4のみ表示
    if (currentStage == 1 ||
        currentStage == 2 ||
        currentStage == 3 ||
        currentStage == 4)
    {
        mpTimer->SetShow(true);
        mpTimerText->SetShow(true);
    }
    else
    {
        mpTimer->SetShow(false);
        mpTimerText->SetShow(false);
    }
}

// 描画処理
void CStageTime::Render()
{
    char buffer[16];
    sprintf_s(buffer, "TIME  %03d", mTime);
    mpTimerText->SetText(buffer);
}