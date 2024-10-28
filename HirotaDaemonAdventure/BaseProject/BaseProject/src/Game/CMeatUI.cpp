#include "CMeatUI.h"
#include "CSceneManager.h"
#include "CTaskManager.h"
#include "CStageManager.h"
#include "CGameManager.h"
#include "CImage.h"
#include "CMeat1.h"
#include "CMeat2.h"
#include "CMeat3.h"

#define MENU_ALPHA 0.75f

// コンストラクタ
CMeatUI::CMeatUI()
	: CTask(ETaskPriority::eUI,0,ETaskPauseType::eGame)
	, mIsOpened(false)
{
	// 未取得時の肉のアイテム画像
	int Count = 3;
	float spaceX = (float)WINDOW_WIDTH * 0.3f / (Count + 1);
	for (int i = 0; i < Count; i++)
	{
		CImage* item = new CImage
		(
			"UI/StageUI/Meat(Unacquired).png",
			ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
			false, false
		);
		item->SetSize(100.0f, 200.0f);
		item->SetCenter(item->GetSize() * 0.5f);
		float posX = spaceX * (i + 1); // 画面幅から計算
		float posY = (float)WINDOW_HEIGHT * 0.1f;
		item->SetPos(posX, posY);
		item->SetColor(1.0f, 1.0f, 1.0f, 1.0f);
		mUnacquired.push_back(item);
	}

	// 取得時の肉のアイテム画像
	for (int i = 0; i < Count; i++)
	{
		CImage* item = new CImage
		(
			"UI/StageUI/Meat(Acquisition).png",
			ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
			false, false
		);
		item->SetSize(100.0f, 200.0f);
		item->SetCenter(item->GetSize() * 0.5f);
		float posX = spaceX * (i + 1); // 画面幅から計算
		float posY = (float)WINDOW_HEIGHT * 0.1f;
		item->SetPos(posX, posY);
		item->SetColor(1.0f, 1.0f, 1.0f, 1.0f);
		mAcquisition.push_back(item);
	}

	SetEnable(false);
	SetShow(false);
}

// デストラクタ
CMeatUI::~CMeatUI()
{
	if (mIsOpened)
	{
		Close();
	}
}

// 開く
void CMeatUI::Open()
{
	// 既に開いていたら、処理しない
	if (mIsOpened) return;

	mIsOpened = true;
	SetEnable(true);
	SetShow(true);
	// メニュー開いたフラグを上げる
	mIsOpened = true;
}

// 閉じる
void CMeatUI::Close()
{
	// すでに閉じていたら、処理しない
	if (!mIsOpened) return;

	SetEnable(false);
	SetShow(false);
	// メニューを開いたフラグを下す
	mIsOpened = false;
}

// 開いているかどうか
bool CMeatUI::IsOpened() const
{
	return mIsOpened;
}

// 更新処理
void CMeatUI::Update()
{

}

// 描画処理
void CMeatUI::Render()
{
	CMeat1* meat1 = CMeat1::Instance();
	CMeat2* meat2 = CMeat2::Instance();
	CMeat3* meat3 = CMeat3::Instance();
	bool Meat[] = { meat1->IsMeat1(), meat2->IsMeat2(), meat3->IsMeat3() };

	// 取得済み画像の描画
	for (int i = 0; i < mAcquisition.size(); ++i)
	{
		CImage* item = mAcquisition[i];
		if (Meat[i])
		{
			item->Render();
		}
		else
		{
			item->SetEnable(false);
		}
	}

	// 未取得画像の描画
	for (int i = 0; i < mUnacquired.size(); ++i)
	{
		CImage* item = mUnacquired[i];
		if (!Meat[i])
		{
			item->Render();
		}
		else
		{
			item->SetEnable(false);
		}
	}
}