#include "CTutorialUI.h"
#include "CImage.h"
#include "CStageManager.h"
#include "CTaskManager.h"
#include "CInput.h"

CTutorialUI::CTutorialUI()
    : CTask(ETaskPriority::eUI, 0, ETaskPauseType::eMenu)
	, mIsOpened(false)
    , mCurrentImage(nullptr)
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
    image2->SetColor(1.0f, 1.0f, 1.0f, 1.0f);
    mTutorialItems.push_back(image2);

    // 最初の画像をセット
    if (!mTutorialItems.empty())
        mCurrentImage = mTutorialItems[0];
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
        delete image;
    mTutorialItems.clear();
}

// 開く
void CTutorialUI::Open()
{
    // 既に開いていたら、処理しない
    if (mIsOpened) return;

    mCurrentImage = mTutorialItems[0];

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

    // キー入力処理（仮想キーコードに応じて適宜変更）
    if (CInput::PushKey(VK_RIGHT))
    {
        auto it = std::find(mTutorialItems.begin(), mTutorialItems.end(), mCurrentImage);
        if (it != mTutorialItems.end() && (it + 1) != mTutorialItems.end())
        {
            mCurrentImage = *(it + 1); // 次の画像に切り替え
        }
    }
    else if (CInput::PushKey(VK_LEFT))
    {
        auto it = std::find(mTutorialItems.begin(), mTutorialItems.end(), mCurrentImage);
        if (it != mTutorialItems.begin())
        {
            mCurrentImage = *(it - 1); // 前の画像に切り替え
        }
    }
    else if (CInput::PushKey(VK_RETURN))
    {
        if (mCurrentImage == mTutorialItems.back())
        {
            Close(); // チュートリアル終了
        }
    }
    mCurrentImage->Update();
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
        mCurrentImage->SetShow(true);
        mCurrentImage->SetEnable(true);
        mCurrentImage->Render();
    }
}