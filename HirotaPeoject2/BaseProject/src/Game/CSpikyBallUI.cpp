#include "CSpikyBallUI.h"
#include "CPlayer.h"
#include "CTaskManager.h"
#include "CImage.h"
#include "CStageManager.h"
#include "Maths.h"
#include "Easing.h"

#define MENU_ALPHA 0.75
// SpikyBallの点滅時間
#define SPIKYBALL_BLINK_TIME 0.75f
// SpikyBallの点滅間隔
#define SPIKYBALL_INTERVAL_TIME 1.0f
// SpikyBallのアニメーション時間
#define OPEN_ANIM_TIME 0.25f
// SpikyBallのアニメーション後の待ち時間
#define OPENED_WAIT_TIME 0.5f

// Xポジション
#define POSITION_X 1110.0f
// Yポジション
#define POSITION_Y 300.0f

// コンストラクタ
CSpikyBallUI::CSpikyBallUI()
	: CTask(ETaskPriority::eUI,0,ETaskPauseType::eGame)
	, mIsOpened(false)
	, mElapsedTime(0.0f)
{
	// とげボールフレーム画像
	mpSpikyFrame = new CImage
	(
		"UI/AttackUI/ThornBallImages(frame).png",
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eDefault,
		false,
		false
	);
	mpSpikyFrame->SetPos(POSITION_X, POSITION_Y);
	mpSpikyFrame->SetSize(140.0f, 140.0f);

	// CTRL画像
	mpCTRL = new CImage
	(
		"UI/AttackUI/CTRLimage1.png",
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eDefault,
		false,
		false
	);
	mpCTRL->SetPos(1115.0f, 220.0f);
	mpCTRL->SetSize(120.0f, 120.0f);

	// とげボール画像
	mpSpikyBallUI = new CImage
	(
		"UI/AttackUI/ThornBallImages.png",
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eDefault,
		false,
		false
	);
	mpSpikyBallUI->SetPos(POSITION_X, POSITION_Y);
	mpSpikyBallUI->SetSize(140.0f, 140.0f);
}

// デストラクタ
CSpikyBallUI::~CSpikyBallUI()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpSpikyBallUI);
	SAFE_DELETE(mpSpikyFrame);
	SAFE_DELETE(mpCTRL);
}

// 状態切り替え
void CSpikyBallUI::ChangeState(EState state)
{
	if (state == mState) return;
	mState = state;
	mStateStep = 0;
	mElapsedTime = 0.0f;
}

// 開く
void CSpikyBallUI::Open()
{
	// 既に開いていたら、処理しない
	if (mIsOpened) return;

	SetEnable(true);
	SetShow(true);
	// メニューを開いたフラグを上げる
	mIsOpened = true;
}

// 閉じる
void CSpikyBallUI::Close()
{
	// すでに閉じていたら、処理しない
	if (!mIsOpened) return;

	SetEnable(false);
	SetShow(false);
	// メニューを開いたフラグを下す
	mIsOpened = false;
}

// 開いているかどうか
bool CSpikyBallUI::IsOpened() const
{
	return mIsOpened;
}

// 使用待機状態
void CSpikyBallUI::UpdateIdle()
{
	// バウンス効果のパラメータ
	static float bounceTime = 0.0f;         // バウンス効果の時間
	const float bounceSpeed = 3.0f;         // 跳ね返りの速さ
	const float bounceHeight = 9.0f;        // 最大バウンスの高さ

	// 増分時間
	bounceTime += Time::DeltaTime() * bounceSpeed;

	// 新しいY位置を計算
	float bounceOffset = sinf(bounceTime) * bounceHeight;

	// スパイクボールUIの位置を更新
	mpSpikyBallUI->SetPos(POSITION_X, POSITION_Y + bounceOffset);
	mpSpikyBallUI->SetAlpha(1.0f);
}

// 使用済み待機状態
void CSpikyBallUI::UpdateUsed()
{
	// 待機状態をステップ管理
	switch (mStateStep)
	{
		// ステップ0：「SPIKYBALL」の点滅待ち
	case 0:
		mpSpikyBallUI->SetAlpha(0.8f);
		if (mElapsedTime < SPIKYBALL_INTERVAL_TIME)
		{
			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			mElapsedTime = 0.0f;
			mStateStep = 1;
		}
		break;
		// ステップ1：「SPIKYBALL」の点滅
	case 1:
		if (mElapsedTime < SPIKYBALL_BLINK_TIME)
		{
			// サインカーブで点滅
			float per = sinf(M_PI * mElapsedTime / SPIKYBALL_BLINK_TIME);
			mpSpikyBallUI->SetAlpha(0.8f - per);
			mElapsedTime += Time::DeltaTime();
		}
		else
		{
			mElapsedTime = 0.0f;
			mpSpikyBallUI->SetAlpha(0.8f);
			mStateStep = 0;
		}
		break;
	}
	// スパイクボールUIの位置を更新
	mpSpikyBallUI->SetPos(POSITION_X, POSITION_Y);
}

void CSpikyBallUI::Update()
{
	switch (mState)
	{
		// 使用待機状態
	case EState::eIdle:
		UpdateIdle();
		break;
		// 使用待機状態
	case EState::eUsed:
		UpdateUsed();
		break;
	}

	CPlayer* player = CPlayer::Instance();
	float SpikTime = player->GetSpikyTime();
	if (SpikTime <= 0.0f)
	{
		ChangeState(EState::eIdle);
	}
	// 適宜変更する可能性あり
	else if (SpikTime >= 5.0f)
	{
		ChangeState(EState::eUsed);
	}
}

void CSpikyBallUI::Render()
{
	// とげボールフレームレンダー
	mpSpikyFrame->Render();
	// スパイクボールレンダー
	mpSpikyBallUI->Render();
	// CTRL画像
	mpCTRL->Render();
}

void CSpikyBallUI::SetPlayer(CPlayer* player)
{
	mpPlayer = player;
}