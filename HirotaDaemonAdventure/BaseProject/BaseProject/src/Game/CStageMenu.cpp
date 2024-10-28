#include "CStageMenu.h"
#include "CInput.h"
#include "CTaskManager.h"
#include "CBGMManager.h"
#include "CStageManager.h"
#include "CGameManager.h"
#include "CImage.h"
#include "CPlayer.h"
#include "CStageManager.h"

#define MENU_ALPHA 0.75f

// コンストラクタ
CStageMenu::CStageMenu()
	: CTask(ETaskPriority::eUI, 0, ETaskPauseType::eMenu)
	, mSelectIndex(0)
	, mIsOpened(false)
{
	mpStageMenu = new CImage
	(
		"UI/menu_back.png",
		ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
		false, false
	);
	mpStageMenu->SetCenter(mpStageMenu->GetSize() * 0.5f);
	mpStageMenu->SetPos(CVector2(WINDOW_WIDTH, WINDOW_HEIGHT) * 0.5f);
	mpStageMenu->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);

	int stageMenuCount = 3;
	float spaceX = (float)WINDOW_WIDTH / (stageMenuCount + 1);
	for (int i = 0; i < stageMenuCount; i++)
	{
		CImage* item = new CImage
		(
			"UI/menu_item.png",
			ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
			false, false
		);
		item->SetSize(200.0f, 150.0f);
		item->SetCenter(item->GetSize() * 0.5f);
		float posX = spaceX * (i + 1) - item->GetSize().X() / 2.0f + 100.0f;
		float posY = (float)WINDOW_HEIGHT / 2.0f;
		item->SetPos(posX, posY);
		item->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);
		mStageMenuItems.push_back(item);
	}

	mpStageMenuFrame = new CImage
	(
		"UI/menu_item_select.png",
		ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
		false, false
	);
	mpStageMenuFrame->SetSize(200.0f, 150.0f);
	mpStageMenuFrame->SetCenter(mpStageMenuFrame->GetSize() * 0.5f);
	mpStageMenuFrame->SetColor(1.0f, 0.1f, 0.0f, MENU_ALPHA);

	SetEnable(false);
	SetShow(false);
}

// デストラクタ
CStageMenu::~CStageMenu()
{
	CStageManager::RemoveTask(this);
	// 削除されるときにメニューが開いたマンであれば、
	// メニューを閉じる
	if (mIsOpened)
	{
		Close();
	}
}

// 開く
void CStageMenu::Open()
{
	// 既に開いていたら、処理しない
	if (mIsOpened) return;

	SetEnable(true);
	SetShow(true);
	mSelectIndex = 0;
	//CBGMManager::Instance()->Play(EBGMType::eMenu, false);
	CTaskManager::Instance()->Pause(PAUSE_MENU_OPEN);
	// メニューを開いたフラグを立てる
	mIsOpened = true;
}

// 閉じる
void CStageMenu::Close()
{
	// すでに閉じていたら、処理しない
	if (!mIsOpened) return;

	SetEnable(false);
	SetShow(false);
	//CBGMManager::Instance()->Play(EBGMType::eGame, false);
	CTaskManager::Instance()->UnPause(PAUSE_MENU_OPEN);
	// メニューを開いたフラグを下す
	mIsOpened = false;
}

// 開いているかどうか
bool CStageMenu::IsOpened() const
{
	return mIsOpened;
}

// どのメニューにするか
void CStageMenu::Decide(int select)
{
	switch (select)
	{
	case 0:
		CGameManager::Stage1();
		/*CStageManager::LoadStage(1);
		CGameManager::SetStageNo(1);*/
		break;
	case 1:
		CGameManager::Stage3();
		/*CStageManager::LoadStage(3);
		CGameManager::SetStageNo(3);*/
		break;
	case 2:
		Close();
		break;
	}
}

// 更新処理
void CStageMenu::Update()
{
	int itemCount = mStageMenuItems.size();
	if (CInput::PushKey(VK_LEFT))
	{
		mSelectIndex = (mSelectIndex + itemCount - 1) % itemCount;
	}
	else if (CInput::PushKey(VK_RIGHT))
	{
		mSelectIndex = (mSelectIndex + 1) % itemCount;
	}
	else if (CInput::PushKey(VK_RETURN))
	{
		Decide(mSelectIndex);
	}

	mpStageMenu->Update();
	for (CImage* item : mStageMenuItems)
	{
		item->Update();
	}
	mpStageMenuFrame->Update();
}

// 描画処理
void CStageMenu::Render()
{
	mpStageMenu->Render();
	for (int i = 0; i < mStageMenuItems.size(); i++)
	{
		CImage* item = mStageMenuItems[i];
		item->Render();

		if (i == mSelectIndex)
		{
			mpStageMenuFrame->SetPos(item->GetPos());
			mpStageMenuFrame->Render();
		}
	}
}