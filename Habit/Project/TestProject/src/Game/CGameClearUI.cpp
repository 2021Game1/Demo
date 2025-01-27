#include "CGameClearUI.h"
#include "CFont.h"
#include "CText.h"
#include "CImage.h"
#include "Maths.h"
#include "CInput.h"
#include "CFade.h"
#include "CExpandButton.h"
#include "Easing.h"

// 「CLICK TO START」の点滅時間
#define START_TEXT_BLINK_TIME 1.0f
// 「CLICK TO START」の点滅間隔
#define START_TEXT_INTERVAL_TIME 3.0f
// タイトルメニューのアニメーション時間
#define OPEN_ANIM_TIME 0.25f
// タイトルメニューのアニメーション後の待ち時間
#define OPENED_WAIT_TIME 0.5f

// コンストラクタ
CGameClearUI::CGameClearUI()
	: CTask(ETaskPriority::eUI, 0, ETaskPauseType::eDefault)
	, mState(EState::eIdle)
	, mStateStep(0)
	, mElapsedTime(0.0f)
	, mIsEnd(false)
{
	// ゲームクリア画面の背景イメージを生成
	mpGameClearBg = new CImage
	(
		"UI\\clear.png",
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eDefault,
		false,
		false
	);

	// [START]ボタンを生成
	CExpandButton* btn1 = new CExpandButton
	(
		CVector2(WINDOW_WIDTH * 0.5f, 450.0f),
		CVector2(181.0f, 47.0f),
		ETaskPriority::eUI, 0, ETaskPauseType::eGame,
		false, false
	);
	// ボタンの画像を読み込み
	btn1->LoadButtonImage("UI\\title_start0.png", "UI\\title_start1.png");
	// ボタンクリック時に呼び出されるコールバック関数を設定
	btn1->SetOnClickFunc(std::bind(&CGameClearUI::OnClickStart, this));
	// ボタンは最初は無効化して、スケール値を0にしておく
	btn1->SetEnable(false);
	//btn1->SetScale(0.0f);
	// ボタンリストに追加
	mButtons.push_back(btn1);
}

// デストラクタ
CGameClearUI::~CGameClearUI()
{
	SAFE_DELETE(mpGameClearBg);

	int size = mButtons.size();
	for (int i = 0; i < size; i++)
	{
		CButton* btn = mButtons[i];
		mButtons[i] = nullptr;
		SAFE_DELETE(btn);
	}
	mButtons.clear();
}

// ゲームクリア画面終了か
bool CGameClearUI::IsEnd() const
{
	return mIsEnd;
}

// コンティニューするか
bool CGameClearUI::IsContinue() const
{
	// 選択項目が1つ目ならば、リトライ
	return mSelectIndex == 0;
}

// ゲームを終了するか
bool CGameClearUI::IsExitGame() const
{
	// 選択項目が2つ目ならば、ゲーム終了
	return mSelectIndex == 1;
}

// 更新処理
void CGameClearUI::Update()
{
	switch (mState)
	{
		// 待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// フェードアウト
	case EState::eFadeOut:
		UpdateFadeOut();
		break;
	}

	mpGameClearBg->Update();
	for (CButton* btn : mButtons)
	{
		btn->Update();
	}
}

// 描画処理
void CGameClearUI::Render()
{
	// 背景描画
	mpGameClearBg->Render();
	// メニューボタンを表示
	for (CButton* btn : mButtons)
	{
		btn->Update();
	}
}

// 待機状態
void CGameClearUI::UpdateIdle()
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
			mElapsedTime += Times::DeltaTime();
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
			mElapsedTime += Times::DeltaTime();
		}
		else
		{
			// 一定時間待ったら、ボタンをオンにしてタッチできるようにする
			// （誤タッチを防ぐための待ち時間）
			for (CExpandButton* btn : mButtons)
			{
				btn->SetEnable(true);
			}
			ChangeState(EState::eIdle);
		}
		break;
	}
}

// フェードアウト
void CGameClearUI::UpdateFadeOut()
{
}

// 状態切り替え
void CGameClearUI::ChangeState(EState state)
{
	if (state == mState) return;
	mState = state;
	mStateStep = 0;
	mElapsedTime = 0.0f;
}

// [START]クリック時のコールバック関数
void CGameClearUI::OnClickStart()
{
	if (mIsEnd) return;

	mSelectIndex = 0;
	mIsEnd = true;
}

// [QUIT]クリック時のコールバック関数
void CGameClearUI::OnClickQuit()
{
	if (mIsEnd) return;

	mSelectIndex = 1;
	mIsEnd = true;
}
