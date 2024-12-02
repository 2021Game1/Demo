#include "CTutorialUI.h"
#include "CImage.h"
#include "CStageManager.h"
#include "CTaskManager.h"
#include "CInput.h"
#include "Maths.h"

#define ALPHA_CHANGE_TIME 1.0f

CTutorialUI::CTutorialUI()
    : CTask(ETaskPriority::eUI, 0, ETaskPauseType::eMenu)
	, mIsOpened(false)
    , mIsTransitioning(false)
    , mElapsedTime(0.0f)
    , mIsChangeImage(false)
    , mpCurrentImage(nullptr)
{
    // チュートリアル画像を読み込み
    CImage* image1 = new CImage
    (
        "UI/Tutorial/Tutorial1.png",
        ETaskPriority::eUI, 0, ETaskPauseType::eGame,
        false, false
    );
    image1->SetSize(900.0f, 700.0f);
    image1->SetCenter(CVector2(WINDOW_WIDTH, WINDOW_HEIGHT) * 0.5f);
    image1->SetPos(CVector2(WINDOW_WIDTH * 0.65f, WINDOW_HEIGHT * 0.52f));
    image1->SetColor(1.0f, 1.0f, 1.0f, 1.0f);
    mTutorialItems.push_back(image1);

    CImage* image2 = new CImage
    (
        "UI/Tutorial/Tutorial2.png",
        ETaskPriority::eUI, 0, ETaskPauseType::eGame,
        false, false
    );
    image2->SetSize(900.0f, 700.0f);
    image2->SetCenter(CVector2(WINDOW_WIDTH, WINDOW_HEIGHT) * 0.5f);
    image2->SetPos(CVector2(WINDOW_WIDTH * 0.65f, WINDOW_HEIGHT * 0.52f));
    image2->SetColor(1.0f, 1.0f, 1.0f, 0.0f);
    mTutorialItems.push_back(image2);

    // 最初の画像をセット
    if (!mTutorialItems.empty())
    {
        mpCurrentImage = mTutorialItems[0];
    }
}

// デストラクタ
CTutorialUI::~CTutorialUI()
{
    CStageManager::RemoveTask(this);
    // 削除されるときにメニューが開いたままであれば、
    // メニューを閉じる
    if (mIsOpened)
    {
        Close();
    }

    for (auto image : mTutorialItems)
    {
        SAFE_DELETE(image);
    }
    mTutorialItems.clear();
}

// 開く
void CTutorialUI::Open()
{
    // 既に開いていたら、処理しない
    if (mIsOpened) return;

    mpCurrentImage = mTutorialItems[0];

    CTaskManager::Instance()->Pause(PAUSE_MENU_OPEN);

    SetEnable(true);
    SetShow(true);
    // メニュー開いたフラグを上げる
    mIsOpened = true;
}

// 閉じる
void CTutorialUI::Close()
{
    // すでに閉じていたら、処理しない
    if (!mIsOpened) return;

    CTaskManager::Instance()->UnPause(PAUSE_MENU_OPEN);

    SetEnable(false);
    SetShow(false);
    // メニューを開いたフラグを下す
    mIsOpened = false;
}

// 開いているかどうか
bool CTutorialUI::IsOpened() const
{
    return mIsOpened;
}

// 更新処理
void CTutorialUI::Update()
{
    if (!mIsOpened) return;

    auto it = std::find(mTutorialItems.begin(), mTutorialItems.end(), mpCurrentImage);

    if (mIsTransitioning)
    {
        if (mElapsedTime < ALPHA_CHANGE_TIME)
        {
            mpCurrentImage->SetAlpha(1.0f);
            // サインカーブで点滅
            float per = sinf(M_PI * mElapsedTime / ALPHA_CHANGE_TIME);
            mpCurrentImage->SetAlpha(1.0f - per);
            mElapsedTime += Time::DeltaTime();
            if (mpCurrentImage->GetAlpha() <= 0.0f)
            {
                if (mIsChangeImage)
                {
                    mpCurrentImage->SetAlpha(0.0f);
                    mpCurrentImage = *(it + 1); // 次の画像に切り替え
                }
                else if (!mIsChangeImage)
                {
                    mpCurrentImage->SetAlpha(0.0f);
                    mpCurrentImage = *(it - 1); // 前の画像に切り替え
                }
            }
        }
        else
        {
            mpCurrentImage->SetAlpha(1.0f);
            mIsTransitioning = false;
        }
    }
    else if (mpCurrentImage->GetAlpha() >= 1.0f)
    {
        if (CInput::PushKey(VK_RIGHT) && it != mTutorialItems.end() && (it + 1) != mTutorialItems.end())
        {
            mIsChangeImage = true;
            mIsTransitioning = true;
            mElapsedTime = 0.0f;
        }
        else if (CInput::PushKey(VK_LEFT) && it != mTutorialItems.begin())
        {
            mIsChangeImage = false;
            mIsTransitioning = true;
            mElapsedTime = 0.0f;
        }
        else if (CInput::PushKey(VK_RETURN))
        {
            if (mpCurrentImage == mTutorialItems.back())
            {
                Close(); // チュートリアル終了
            }
        }
    }

    mpCurrentImage->Update();
    for (CImage* tutorial : mTutorialItems)
    {
        tutorial->Update();
    }
}

// 更新処理
void CTutorialUI::Render()
{
    if (mIsOpened)
    {
        mpCurrentImage->SetShow(true);
        mpCurrentImage->SetEnable(true);
        mpCurrentImage->Render();
    }
}