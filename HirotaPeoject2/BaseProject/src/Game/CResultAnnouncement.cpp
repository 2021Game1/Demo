#include "CResultAnnouncement.h"
#include "Maths.h"
#include "CInput.h"
#include "CSceneManager.h"
#include "CTaskManager.h"
#include "CBGMManager.h"
#include "CStageManager.h"
#include "CGameManager.h"
#include "CImage.h"
#include "CResult.h"
#include "CCutInResult.h"
#include "CText.h"
#include "CExpandButton.h"
#include "CFade.h"
#include "Easing.h"
#include "CFont.h"
#include "CPlayer.h"

#define MENU_ALPHA 0.65f
// タイトルメニューのアニメーション時間
#define OPEN_ANIM_TIME 0.25f
// タイトルメニューのアニメーション後の待ち時間
#define OPENED_WAIT_TIME 0.5f

// ステージタイマーのインスタンス
CResultAnnouncement* CResultAnnouncement::spInstance = nullptr;

CResultAnnouncement* CResultAnnouncement::Instance()
{
	if (spInstance == nullptr)
	{
		spInstance = new CResultAnnouncement();
	}
	return spInstance;
}

// コンストラクタ
CResultAnnouncement::CResultAnnouncement()
	: CTask(ETaskPriority::eUI, 0, ETaskPauseType::eDefault)
	, mState(EState::eNone)
	, mStateStep(0)
	, mSelectIndex(0)
	, mAlpha(0.0f)
	, mElapsedTime(0.0f)
	, mElapsedABCTime(0.0f)
	, mElapsedRankTime(0.0f)
	, mIsEnd(false)
	, mIsOpened(false)
	, mResultOpened(false)
{
	// インスタンスの設定
	spInstance = this;

	// ランク！のフォントデータを生成
	mpRankFont = new CFont("res\\Font\\toroman.ttf");
	mpRankFont->SetFontSize(70);
	mpRankFont->SetAlignment(FTGL::TextAlignment::ALIGN_CENTER);
	mpRankFont->SetLineLength(WINDOW_WIDTH);

	// ランク！のテキストを生成
	mpRankText = new CText
	(
		mpRankFont, 70,
		CVector2(WINDOW_WIDTH * 0.4f, 300.0f),
		CVector2(WINDOW_WIDTH, WINDOW_HEIGHT),
		CColor(0.0f, 0.0f, 0.0f, 0.0f),
		ETaskPriority::eUI,
		0,
		ETaskPauseType::eDefault,
		false,
		false
	);
	mpRankText->SetText("ランク！");
	mpRankText->SetEnableOutline(true);
	mpRankText->SetOutlineColor(CColor(0.9f, 0.9f, 0.9f));

	// [START]ボタンを生成
	CExpandButton* btn1 = new CExpandButton
	(
		CVector2(WINDOW_WIDTH * 0.3f, 600.0f),
		CVector2(250.0f, 250.0f),
		ETaskPriority::eUI, 0, ETaskPauseType::eGame,
		false, false
	);
	// ボタンの画像を読み込み
	btn1->LoadButtonImage("UI/ResultUI/Continue.png", "UI/ResultUI/Continue.png");
	// ボタンクリック時に呼び出されるコールバック関数を設定
	btn1->SetOnClickFunc(std::bind(&CResultAnnouncement::OnClickContinue, this));
	// ボタンは最初は無効化して、スケール値を0にしておく
	btn1->SetEnable(false);
	btn1->SetScale(0.0f);
	// ボタンリストに追加
	mButtons.push_back(btn1);

	// [QUIT]ボタンを生成
	CExpandButton* btn2 = new CExpandButton
	(
		CVector2(WINDOW_WIDTH * 0.7f, 600.0f),
		CVector2(250.0f, 250.0f),
		ETaskPriority::eUI, 0, ETaskPauseType::eGame,
		false, false
	);
	btn2->LoadButtonImage("UI/ResultUI/End.png", "UI/ResultUI/End.png");
	btn2->SetOnClickFunc(std::bind(&CResultAnnouncement::OnClickEnd, this));
	btn2->SetEnable(false);
	btn2->SetScale(0.0f);
	mButtons.push_back(btn2);

	// リザルト画像
	int resultCount = 3;
	for (int i = 0; i < resultCount; i++)
	{
		Result Result;
		const char* imagePath;

		// mABCItemsに合わせて画像とアイテムの種類を設定
		switch (i)
		{
		case 0:
			Result = Result::A;
			imagePath = "UI/ResultUI/A.png";
			break;
		case 1:
			Result = Result::B;
			imagePath = "UI/ResultUI/B.png";
			break;
		case 2:
			Result = Result::C;
			imagePath = "UI/ResultUI/C.png";
			break;
		}

		// mABCItemsの画像を描画
		CImage* abc = new CImage
		(
			imagePath,
			ETaskPriority::eUI, 0, ETaskPauseType::eGame,
			false, false
		);
		abc->SetSize(300.0f, 350.0f);
		abc->SetCenter(abc->GetSize() * 0.5f);
		float posX = (float)WINDOW_WIDTH * 0.75f;
		float posY = (float)WINDOW_HEIGHT * 0.4f;
		abc->SetPos(posX, posY);
		abc->SetColor(1.0f, 1.0f, 1.0f, 0.0f);
		mABCItems.push_back(std::make_pair(Result, abc));
	}

	SetEnable(false);
}

// デストラクタ
CResultAnnouncement::~CResultAnnouncement()
{
	CStageManager::RemoveTask(this);

	spInstance = nullptr;

	//SAFE_DELETE(mpStartText);
	SAFE_DELETE(mpRankFont);
	SAFE_DELETE(mpRankText);

	int size = mButtons.size();
	for (int i = 0; i < size; i++)
	{
		CButton* btn = mButtons[i];
		mButtons[i] = nullptr;
		SAFE_DELETE(btn);
	}
	mButtons.clear();

	// 削除されるときにメニューが開いたままであれば、
	// メニューを閉じる
	if (mIsOpened)
	{
		Close();
	}
}

// タイトル画面終了か
bool CResultAnnouncement::IsEnd() const
{
	return mIsEnd;
}

// ゲームを開始するか
bool CResultAnnouncement::IsStartGame() const
{
	// 選択項目が1つ目ならば、ゲーム開始
	return mSelectIndex == 0;
}

// ゲームを終了するか
bool CResultAnnouncement::IsExitGame() const
{
	// 選択項目が3つ目ならば、ゲーム終了
	return mSelectIndex == 1;
}

// 状態切り替え
void CResultAnnouncement::ChangeState(EState state)
{
	if (state == mState) return;
	mState = state;
	mStateStep = 0;
	mElapsedTime = 0.0f;
}

// [CONTINUE]クリック時のコールバック関数
void CResultAnnouncement::OnClickContinue()
{
	if (mIsEnd) return;

	mSelectIndex = 0;
	mIsEnd = true;
}

// [END]クリック時のコールバック関数
void CResultAnnouncement::OnClickEnd()
{
	if (mIsEnd) return;

	mSelectIndex = 1;
	mIsEnd = true;
}

// 開く
void CResultAnnouncement::Open()
{
	// 既に開いていたら
	if (mIsOpened) return;

	SetEnable(true);
	SetShow(true);
	mSelectIndex = 0;
	//CBGMManager::Instance()->Play(EBGMType::eMenu, false);
	CTaskManager::Instance()->Pause(PAUSE_MENU_OPEN);
	// メニューを開いたフラグを立てる
	mIsOpened = true;

	ChangeState(EState::eIdle);
}

// 閉じる
void CResultAnnouncement::Close()
{
	// すでに閉じていたら、処理しない
	if (!mIsOpened) return;

	SetEnable(false);
	SetShow(false);
	//CBGMManager::Instance()->Play(EBGMType::eGame, false);
	CTaskManager::Instance()->UnPause(PAUSE_MENU_OPEN);
	// メニューを開いたフラグをおろす
	mResultOpened = true;
	mIsEnd = false;
	mIsOpened = false;
}

// 何もしない状態
void CResultAnnouncement::UpdateNone()
{

}

// 待機状態
void CResultAnnouncement::UpdateIdle()
{
	ChangeState(EState::eOpen);
}

// メニューを開く
void CResultAnnouncement::UpdateOpen()
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
void CResultAnnouncement::UpdateSelect()
{
}

// フェードアウト
void CResultAnnouncement::UpdateFadeOut()
{
}

// 開いたかどうか
bool CResultAnnouncement::IsOpened() const
{
	return mIsOpened;
}

// 別のクラスでリザルトの状態を確認する用
bool CResultAnnouncement::IsResultOpened() const
{
	return mResultOpened;
}

// 更新処理
void CResultAnnouncement::Update()
{
	// game状態になったらfalseにする
	if (CGameManager::GameState() == EGameState::eGame)
	{
		mResultOpened = false;
	}

	switch (mState)
	{
		// 何もしない状態
	case EState::eNone:
		UpdateNone();
		break;
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

	// メニューを開いていたら
	if (IsOpened())
	{
		static const float fadeTimeRank = 0.1f;
		static const float fadeRankAlpha = 1.0f;
		if (mElapsedRankTime < fadeTimeRank)
		{
			float alphaRank = mElapsedRankTime / fadeTimeRank;
			mpRankText->SetAlpha(fadeRankAlpha * alphaRank);
			mElapsedRankTime += 0.0016f;
		}
		else
		{
			mpRankText->SetAlpha(fadeRankAlpha);
		}

		// A,B,C の画像
		for (const auto& itemPair : mABCItems)
		{
			CImage* item = itemPair.second;

			// 表示＆非表示に掛ける時間（秒）
			static const float fadeTime = 1.5f;
			// 最大アルファ値
			static const float fadeAlpha = 1.0f;

			//フェード背景の表示時間が経過していない
			if (mElapsedABCTime < fadeTime)
			{
				//経過時間に合わせてアルファ値を設定
				float alpha = mElapsedABCTime / fadeTime;
				item->SetAlpha(fadeAlpha * alpha);
				//1フレームの経過時間を加算（仮）
				mElapsedABCTime += 0.016f;
			}
			//フェード背景の表示時間が経過した
			else
			{
				//フェード背景を完全に表示して
				item->SetAlpha(fadeAlpha);
			}
			mpRankText->Update();
		}
	}
	else
	{
		for (const auto& itemPair : mABCItems)
		{
			CImage* item = itemPair.second;

			item->SetAlpha(0.0f);
			mElapsedABCTime = 0.0f;
		}

		mpRankText->SetAlpha(0.0f);
		mElapsedRankTime = 0.0f;
	}

	for (CButton* btn : mButtons)
	{
		btn->Update();
	}
}

// 描画処理
void CResultAnnouncement::Render()
{
	// メニューを開いていたら
	if (IsOpened())
	{
		// 待機状態では何もしない(変更するかも)
		if (mState == EState::eIdle)
		{
			
		}
		// 待機状態以外は、メニューボタンを表示
		else
		{
			for (CButton* btn : mButtons)
			{
				btn->Render();
			}

			// ランク！描画
			mpRankText->Render();

			// 画像パスを更新
			CResult* result = CResult::Instance();
			int score = result->GetTotalScore();

			// プレイヤーのインスタンス
			CPlayer* player = CPlayer::Instance();
			// ステージ1をクリアしたか
			bool stage1 = player->IsStage1Clear();
			// ステージ2をクリアしたか
			bool stage2 = player->IsStage2Clear();
			// ステージ３をクリアしたか
			bool stage3 = player->IsStage3Clear();
			// 死亡したら
			bool stateEnd = player->IsDeath();

			// mABCItems内の画像を描画
			for (int i = 0; i < mABCItems.size(); i++)
			{
				// スコアに応じた結果を計算
				// ステージ事に変更する
				Result resultType;
				// ステージ1の結果
				if (stage1)
				{
					// Aランク
					if (score >= 4000)
					{
						resultType = Result::A;
					}
					// Bランク
					else if (score < 3900 && score >= 1500)
					{
						resultType = Result::B;
					}
					// Cランク
					else
					{
						resultType = Result::C;
					}
				}
				// ステージ２の結果
				else if (stage2)
				{
					// Aランク
					if (score >= 2500)
					{
						resultType = Result::A;
					}
					// Bランク
					else if (score < 2500 && score >= 1500)
					{
						resultType = Result::B;
					}
					// Cランク
					else
					{
						resultType = Result::C;
					}
				}
				// ステージ３の結果
				else if (stage3)
				{
					// Aランク
					if (score >= 2500)
					{
						resultType = Result::A;
					}
					// Bランク
					else if (score < 2500 && score >= 1500)
					{
						resultType = Result::B;
					}
					// Cランク
					else
					{
						resultType = Result::C;
					}
				}

				// 死亡時の結果
				if (stateEnd)
				{
					resultType = Result::C;
				}

				// アイテムの種類を取得
				Result itemResult = mABCItems[i].first;

				// 画像パスが一致するものを描画
				if (itemResult == resultType)
				{
					// 描画
					mABCItems[i].second->Render();
					Update();
				}
			}
		}
	}
}