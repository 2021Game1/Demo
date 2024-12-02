#include "CTitleUI.h"
#include "CFont.h"
#include "CText.h"
#include "CImage.h"
#include "Maths.h"
#include "CInput.h"
#include "CFade.h"
#include "CExpandButton.h"
#include "Easing.h"
#include "CStageManager.h"
#include "CTaskManager.h"
#include "CSound.h"

// 「CLICK TO START」の点滅時間
#define START_TEXT_BLINK_TIME 1.0f
// 「CLICK TO START」の点滅間隔
#define START_TEXT_INTERVAL_TIME 3.0f
// タイトルメニューのアニメーション時間
#define OPEN_ANIM_TIME 0.25f
// タイトルメニューのアニメーション後の待ち時間
#define OPENED_WAIT_TIME 0.5f

// コンストラクタ
CTitleUI::CTitleUI()
	: CTask(ETaskPriority::eUI, 0, ETaskPauseType::eMenu)
	, mState(EState::eIdle)
	, mStateStep(0)
	, mElapsedTime(0.0f)
	, mFadeInTime(0.0f)
	, mFadeOutTime(0.0f)
	, mTutorialAlpha(0.0f)
	, mIsEnd(false)
	, mIsOpened(false)
	, mFadeOut(false)
	, mTutorialSE(false)
	, mpTutorialImage(nullptr)
{
	// チュートリアルSE取得
	mpOpenTutorial = CResourceManager::Get<CSound>("TutorialSound");

	// タイトルロゴのフォントデータを生成
	mpLogoFont = new CFont("res\\Font\\toroman.ttf");
	mpLogoFont->SetFontSize(128);
	mpLogoFont->SetAlignment(FTGL::TextAlignment::ALIGN_CENTER);
	mpLogoFont->SetLineLength(WINDOW_WIDTH);

	// タイトルロゴのテキストを生成
	mpTitleLogo = new CText
	(
		mpLogoFont, 128,
		CVector2(0.0f, 32.0f),
		CVector2(WINDOW_WIDTH, WINDOW_HEIGHT),
		CColor(0.11f, 0.1f, 0.1f),
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eDefault,
		false,
		false
	);
	mpTitleLogo->SetText("デーモンアドベンチャー");
	mpTitleLogo->SetEnableOutline(true);
	mpTitleLogo->SetOutlineColor(CColor(0.9f, 0.9f, 0.9f));

	// チュートリアル画像を設定
	mpTutorialImage = new CImage
	(
		"UI/Tutorial/Operating Instructions.png",
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eDefault,
		false,
		false
	);
	mpTutorialImage->SetSize(900.0f, 700.0f);
	mpTutorialImage->SetCenter(CVector2(WINDOW_WIDTH, WINDOW_HEIGHT) * 0.5f);
	mpTutorialImage->SetPos(CVector2(WINDOW_WIDTH * 0.65f, WINDOW_HEIGHT * 0.52f));
	mpTutorialImage->SetColor(1.0f, 1.0f, 1.0f, 0.0f);

	// 「CLICK TO START」のテキストを生成
	mpStartText = new CText
	(
		nullptr, 32,
		CVector2(0.0f, -64.0f),
		CVector2(WINDOW_WIDTH, WINDOW_HEIGHT),
		CColor(1.0f, 1.0f, 0.5f),
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eDefault,
		false,
		false
	);
	mpStartText->SetText("- CLICK TO START -");
	mpStartText->SetTextAlignH(ETextAlignH::eCenter);
	mpStartText->SetTextAlignV(ETextAlignV::eBottom);
	mpStartText->SetEnableShadow(true);
	mpStartText->SetShadowColor(CColor(0.25f, 0.125f, 0.0f));
	mpStartText->SetEnableOutline(true);
	mpStartText->SetOutlineColor(CColor(0.0f, 0.0f, 0.0f));

	// [START]ボタンを生成
	CExpandButton* btn1 = new CExpandButton
	(
		CVector2(WINDOW_WIDTH * 0.5f, 450.0f),
		CVector2(181.0f, 47.0f),
		ETaskPriority::eUI, 0, ETaskPauseType::eGame,
		false, false
	);
	// ボタンの画像を読み込み
	btn1->LoadButtonImage("UI/TitleUI/title_start0.png", "UI/TitleUI/title_start1.png");
	// ボタンクリック時に呼び出されるコールバック関数を設定
	btn1->SetOnClickFunc(std::bind(&CTitleUI::OnClickStart, this));
	// ボタンは最初は無効化して、スケール値を0にしておく
	btn1->SetEnable(false);
	btn1->SetScale(0.0f);
	// ボタンリストに追加
	mButtons.push_back(btn1);

	// [TUTORIAL]ボタンを生成
	CExpandButton* btn2 = new CExpandButton
	(
		CVector2(WINDOW_WIDTH * 0.5f, 550.0f),
		CVector2(181.0f, 47.0f),
		ETaskPriority::eUI, 0, ETaskPauseType::eGame,
		false, false
	);
	btn2->LoadButtonImage("UI/TitleUI/title_tutorial0.png", "UI/TitleUI/title_tutorial1.png");
	btn2->SetOnClickFunc(std::bind(&CTitleUI::OnClickTutorial, this));
	btn2->SetEnable(false);
	btn2->SetScale(0.0f);
	mButtons.push_back(btn2);

	// [QUIT]ボタンを生成
	CExpandButton* btn3 = new CExpandButton
	(
		CVector2(WINDOW_WIDTH * 0.5f, 650.0f),
		CVector2(181.0f, 47.0f),
		ETaskPriority::eUI, 0, ETaskPauseType::eGame,
		false, false
	);
	btn3->LoadButtonImage("UI/TitleUI/title_quit0.png", "UI/TitleUI/title_quit1.png");
	btn3->SetOnClickFunc(std::bind(&CTitleUI::OnClickQuit, this));
	btn3->SetEnable(false);
	btn3->SetScale(0.0f);
	mButtons.push_back(btn3);
}

// デストラクタ
CTitleUI::~CTitleUI()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpLogoFont);
	SAFE_DELETE(mpTitleLogo);
	SAFE_DELETE(mpTutorialImage);
	SAFE_DELETE(mpStartText);

	// 削除されるときにメニューが開いたままであれば
	// メニューを閉じる
	if (mIsOpened)
	{
		Close();
	}

	int size = mButtons.size();
	for (int i = 0; i < size; i++)
	{
		CButton* btn = mButtons[i];
		mButtons[i] = nullptr;
		SAFE_DELETE(btn);
	}
	mButtons.clear();
}

// 開く
void CTitleUI::Open()
{
	// 既に開いていたら、処理しない
	if (mIsOpened) return;

	if (!mTutorialSE)
	{
		mTutorialSE = true;
		// チュートリアルSEを再生
		mpOpenTutorial->Play(1.0f, false, 0.0f);
	}

	// メニュー開いたフラグを上げる
	mIsOpened = true;

	//CTaskManager::Instance()->Pause(PAUSE_MENU_OPEN);
}

// 閉じる
void CTitleUI::Close()
{
	// すでに閉じていたら、処理しない
	if (!mIsOpened) return;

	mElapsedTime = 0.0f;
	mFadeInTime = 0.0f;
	mFadeOutTime = 0.0f;

	mFadeOut = false;
	mTutorialSE = false;

	// メニューを開いたフラグを下す
	mIsOpened = false;
	// タイトル終了フラグを下す
	mIsEnd = false;

	//ChangeState(EState::eIdle);

	//CTaskManager::Instance()->UnPause(PAUSE_MENU_OPEN);
}

// 開いているかどうか
bool CTitleUI::IsOpened() const
{
	return mIsOpened;
}

// タイトル画面終了か
bool CTitleUI::IsEnd() const
{
	return mIsEnd;
}

// ゲームを開始するか
bool CTitleUI::IsStartGame() const
{
	// 選択項目が1つ目ならば、ゲーム開始
	return mSelectIndex == 0;
}

// 操作説明を開く
bool CTitleUI::IsTutorial() const
{
	// 選択項目が二つ目ならば、操作説明を開く
	return mSelectIndex == 1;
}

// ゲームを終了するか
bool CTitleUI::IsExitGame() const
{
	// 選択項目が3つ目ならば、ゲーム終了
	return mSelectIndex == 2;
}

// 状態切り替え
void CTitleUI::ChangeState(EState state)
{
	if (state == mState) return;
	mState = state;
	mStateStep = 0;
	mElapsedTime = 0.0f;
}

// [START]クリック時のコールバック関数
void CTitleUI::OnClickStart()
{
	if (mIsEnd) return;

	mSelectIndex = 0;
	mIsEnd = true;
}

// [TUTORIAL]クリック時のコールバック関数
void CTitleUI::OnClickTutorial()
{
	if (mIsEnd) return;

	mSelectIndex = 1;
	mIsEnd = true;
}

// [QUIT]クリック時のコールバック関数
void CTitleUI::OnClickQuit()
{
	if (mIsEnd) return;

	mSelectIndex = 2;
	mIsEnd = true;
}

// 待機状態
void CTitleUI::UpdateIdle()
{
	// 待機状態をステップ管理
	switch (mStateStep)
	{
		// ステップ0：「CLICK TO START」の点滅待ち
	case 0:
		mpStartText->SetAlpha(1.0f);
		if (mElapsedTime < START_TEXT_INTERVAL_TIME)
		{
			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			mElapsedTime = 0.0f;
			mStateStep = 1;
		}
		break;
		// ステップ1：「CLICK TO START」の点滅
	case 1:
		if (mElapsedTime < START_TEXT_BLINK_TIME)
		{
			// サインカーブで点滅
			float per = sinf(M_PI * mElapsedTime / START_TEXT_BLINK_TIME);
			mpStartText->SetAlpha(1.0f - per);
			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			mElapsedTime = 0.0f;
			mpStartText->SetAlpha(1.0f);
			mStateStep = 0;
		}
		break;
	}

	// フェードが終わっている
	if (!CFade::IsFading())
	{
		// 左クリックすると、メニューを開く
		if (CInput::PushKey(VK_LBUTTON))
		{
			ChangeState(EState::eOpen);
		}
	}
}

// メニューを開く
void CTitleUI::UpdateOpen()
{
	switch (mStateStep)
	{
		// ステップ0：メニューの入場アニメーション
	case 0:
		if (mElapsedTime < OPEN_ANIM_TIME)
		{
			// スケール値を一旦1.0より大きくして、1.0へ戻るイージングアニメーション
			float scale = Easing::BackOut(mElapsedTime, OPEN_ANIM_TIME, 0.0f, 1.0f, 2.0f);
			for (CExpandButton* btn : mButtons)
			{
				btn->SetScale(scale);
			}
			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			for (CExpandButton* btn : mButtons)
			{
				btn->SetScale(1.0f);
			}
			mStateStep++;
			mElapsedTime = 0.0f;
		}
		break;
		// ステップ1：メニュー入場後の待ち
	case 1:
		if (mElapsedTime < OPENED_WAIT_TIME)
		{
			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			// 一定時間待ったら、ボタンをオンにしてタッチできるようにする
			// （誤タッチを防ぐための待ち時間）
			for (CExpandButton* btn : mButtons)
			{
				btn->SetEnable(true);
			}
			ChangeState(EState::eSelect);
		}
		break;
	}
}

// メニュー選択
void CTitleUI::UpdateSelect()
{
}

// フェードアウト
void CTitleUI::UpdateFadeOut()
{
}

#define TUTORIAL_FADEINTIME 1.0f
#define TUTORIAL_FADEOUTIME 1.0f

// 更新
void CTitleUI::Update()
{
	switch (mState)
	{
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// メニューを開く
	case EState::eOpen:
		UpdateOpen();
		break;
		// メニュー選択
	case EState::eSelect:
		UpdateSelect();
		break;
		// フェードアウト
	case EState::eFadeOut:
		UpdateFadeOut();
		break;
	}
	mpTitleLogo->Update();

	if (mIsOpened)
	{		
		if (mFadeInTime < TUTORIAL_FADEINTIME)
		{
			mpTutorialImage->SetAlpha(0.0f);
			if (mFadeInTime >= TUTORIAL_FADEINTIME)
			{
				mpTutorialImage->SetAlpha(1.0f);
			}
			else
			{
				mFadeInTime += Time::DeltaTime();
				mpTutorialImage->SetAlpha(0.0f + mFadeInTime);
			}
		}
		else
		{
			mpTutorialImage->SetAlpha(1.0f);
		}
		if (CInput::PullKey(VK_LBUTTON) && !mFadeOut)
		{
			mFadeOut = true;
		}
		else if (CInput::PullKey(VK_RETURN) && !mFadeOut)
		{
			mFadeOut = true;
		}

		if (mFadeOut)
		{
			if (mFadeOutTime < TUTORIAL_FADEOUTIME)
			{
				if (mFadeOutTime >= TUTORIAL_FADEOUTIME)
				{
					mpTutorialImage->SetAlpha(0.0f);
				}
				else
				{
					mFadeOutTime += Time::DeltaTime();
					mpTutorialImage->SetAlpha(1.0f - mFadeOutTime);
				}
			}
			else
			{
				mpTutorialImage->SetAlpha(0.0f);
				Close();
			}
		}
	}
	mpTutorialImage->Update();
	mpStartText->Update();
	for (CButton* btn : mButtons)
	{
		btn->Update();
	}
}

// 描画
void CTitleUI::Render()
{
	// 描画順：
	// 背景→タイトルロゴ→「CLICK TO START」かメニューボタン

	// 背景描画
	if (mIsOpened)
	{
		mpTutorialImage->Render();
		mpTutorialImage->SetShow(true);
		mpTutorialImage->SetEnable(true);

		mpTitleLogo->SetShow(false);
		mpTitleLogo->SetEnable(false);
	}
	else
	{
		// タイトルロゴ描画
		mpTitleLogo->Render();
		mpTitleLogo->SetShow(true);
		mpTitleLogo->SetEnable(true);

		// 待機状態ならば、「CLICK TO START」を表示
		if (mState == EState::eIdle)
		{
			mpStartText->Render();
		}
		// 待機状態以外は、メニューボタンを表示
		else
		{
			for (CButton* btn : mButtons)
			{
				btn->Render();
			}
		}

		mpTutorialImage->SetShow(false);
		mpTutorialImage->SetEnable(false);
	}
}