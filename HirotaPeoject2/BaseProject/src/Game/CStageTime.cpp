#include "CStageTime.h"
#include "CText.h"
#include "CImage.h"
#include "CGameManager.h"
#include "CTaskManager.h"
#include "CPlayer.h"
#include "CStageManager.h"
#include "CSound.h"

// ステージ事の時間
#define STAGETIME_1 300
#define STAGETIME_2 300
#define STAGETIME_3 400
#define STAGETIME_4 500

// ステージ番号
#define STAGE_0 0
#define STAGE_1 1
#define STAGE_2 2
#define STAGE_3 3
#define STAGE_4 4

// 残り時間
#define REMAININGTIME 100

#define START_STAGE_TIME 1.0f

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

    // 時間SE取得
    mpTimeSound = CResourceManager::Get<CSound>("TimeSound");

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

    CPlayer* player = CPlayer::Instance();
    if (player == nullptr) return;

    const int stageTimes[] = { 0, STAGETIME_1, STAGETIME_2, STAGETIME_3, STAGETIME_4 };
    static float startTime = START_STAGE_TIME;

    // ステージが0の場合はタイマーをリセット
    if (currentStage == STAGE_0)
    {
        mIsStage1 = mIsStage2 = mIsStage3 = mIsStage4 = false;
    }
    // ポーズ中でなければタイマー更新
    else if (!paused)
    {
        if (currentStage >= STAGE_1 && currentStage <= STAGE_4)
        {
            // タイマー設定
            if (!mIsStage1 && currentStage == STAGE_1) 
            {
                mIsStage1 = true; 
                mTime = stageTimes[1]; 
            }
            else if (!mIsStage2 && currentStage == STAGE_2)
            { 
                mIsStage2 = true; 
                mTime = stageTimes[2]; 
            }
            else if (!mIsStage3 && currentStage == STAGE_3)
            {
                mIsStage3 = true; 
                mTime = stageTimes[3]; 
            }
            else if (!mIsStage4 && currentStage == STAGE_4)
            {
                mIsStage4 = true; 
                mTime = stageTimes[4];
            }

            // ゲーム時間の更新
            if (CGameManager::GameState() == EGameState::eGame)
                startTime -= Time::DeltaTime();

            if (startTime <= 0.0f && mTime > 0)
            {
                if (mTime >= REMAININGTIME)
                {
                    // 時間SEを再生
                    mpTimeSound->Play(0.01f, true, 0.0f);
                }
                else
                {
                    // 時間SEを再生
                    mpTimeSound->Play(0.1f, true, 0.0f);
                }
                // タイマーを減らす
                mTime--;
                // タイマーをリセット
                startTime = START_STAGE_TIME;
                if (mTime == 0)
                {
                    // タイマーが0ならプレイヤーを死亡させる
                    player->UpdateDeath();
                }
            }
        }

        //// ステージ1, 2, 3の場合の処理
        //if (currentStage == 1 && !mIsStage1)
        //{
        //    mTime = STAGETIME_1;
        //    mIsStage1 = true;
        //    mIsStage2 = false;
        //    mIsStage3 = false;
        //    mIsStage4 = false;
        //}
        //else if (currentStage == 2 && !mIsStage2)
        //{
        //    mTime = STAGETIME_2;
        //    mIsStage1 = false;
        //    mIsStage2 = true;
        //    mIsStage3 = false;
        //    mIsStage4 = false;
        //}
        //else if (currentStage == 3 && !mIsStage3)
        //{
        //    mTime = STAGETIME_3;
        //    mIsStage1 = false;
        //    mIsStage2 = false;
        //    mIsStage3 = true;
        //    mIsStage4 = false;
        //}
        //else if (currentStage == 4 && !mIsStage4)
        //{
        //    mTime = STAGETIME_4;
        //    mIsStage1 = false;
        //    mIsStage2 = false;
        //    mIsStage3 = false;
        //    mIsStage4 = true;
        //}

        //// ゲーム時間の更新
        //static float startTime = START_STAGE_TIME;
        //if(CGameManager::GameState() == EGameState::eGame)
        //startTime -= Time::DeltaTime();
        //if (startTime <= 0.0f)
        //{
        //    if (mTime > 0)
        //    {
        //        mTime--; // タイマーを減らす
        //        startTime = START_STAGE_TIME; // タイマーをリセット
        //    }

        //    // タイマーが0になったらプレイヤーを死亡させる
        //    if (mTime == 0)
        //    {
        //        player->UpdateDeath();
        //    }
        //}
    }

    // タイマー表示の切り替え
    bool showTimer = (currentStage >= STAGE_1 && currentStage <= STAGE_4);
    mpTimer->SetShow(showTimer);
    mpTimerText->SetShow(showTimer);

    //// ステージ1,2,3,4のみ表示
    //if (currentStage == 1 ||
    //    currentStage == 2 ||
    //    currentStage == 3 ||
    //    currentStage == 4)
    //{
    //    mpTimer->SetShow(true);
    //    mpTimerText->SetShow(true);
    //}
    //else
    //{
    //    mpTimer->SetShow(false);
    //    mpTimerText->SetShow(false);
    //}
}

// 描画処理
void CStageTime::Render()
{
    char buffer[16];
    sprintf_s(buffer, "TIME  %03d", mTime);
    mpTimerText->SetText(buffer);
}