#include "CScreenItem.h"
#include "CInput.h"
#include "CSceneManager.h"
#include "CTaskManager.h"
#include "CBGMManager.h"
#include "CStageManager.h"
#include "CGameManager.h"
#include "CImage.h"
#include "CPlayer.h"
#include "CStageManager.h"

#define MENU_ALPHA 0.75f

// コンストラクタ
CScreenItem::CScreenItem()
	: CTask(ETaskPriority::eUI, 0, ETaskPauseType::eGame)
	, mIsOpened(false)
{
	// ナンバー画像
	const char* numberItems[] = { "UI/Item/ScreenItems(Number3).png","UI/Item/ScreenItems(Number2).png", "UI/Item/ScreenItems(Number1).png" };
	float itemWidth = -20.0f;
	int numberCount = 3;
	float spaceX = (float)WINDOW_WIDTH * 0.4f / (numberCount + 1);
	for (int i = 0; i < numberCount; i++)
	{
		CImage* item = new CImage
		(
			numberItems[i],
			ETaskPriority::eUI, 0, ETaskPauseType::eGame,
			false, false
		);
		item->SetSize(100.0f, 150.0f);
		item->SetCenter(item->GetSize() * 0.5f);
		float posX = (float)WINDOW_WIDTH - spaceX * (i + 1) - itemWidth;
		float posY = (float)WINDOW_HEIGHT * 0.74f;
		item->SetPos(posX, posY);
		item->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);
		mNumberItems.push_back(item);
	}

	// バック画像
	int stageMenuCount = 3;
	for (int i = 0; i < stageMenuCount; i++)
	{
		CImage* item = new CImage
		(
			"UI/Item/ScreenItem.png",
			ETaskPriority::eUI, 0, ETaskPauseType::eGame,
			false, false
		);
		item->SetSize(200.0f, 250.0f);
		item->SetCenter(item->GetSize() * 0.5f);
		float posX = (float)WINDOW_WIDTH - spaceX * (i + 1) - itemWidth;
		float posY = (float)WINDOW_HEIGHT * 0.9f;
		item->SetPos(posX, posY);
		item->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);
		mNoItems.push_back(std::make_pair(PlayerItem::NONE, item));
	}

	// アイテム画像
	for (int i = 0; i < stageMenuCount; i++)
	{
		PlayerItem playerItemType;
		const char* imagePath;

		// mPlayerItemsに合わせて画像とアイテムの種類を設定
		switch (i)
		{
		case 0:
			playerItemType = PlayerItem::ATTACK_UP_ITEM;
			imagePath = "UI/Item/ScreenItems(Attack).png";
			break;
		case 1:
			playerItemType = PlayerItem::HEALING_ITEM;
			imagePath = "UI/Item/ScreenItems(Healing).png";
			break;
		case 2:
			playerItemType = PlayerItem::INVINCIBLE_ITEM;
			imagePath = "UI/Item/ScreenItem(Star).png";
			break;
		default:
			playerItemType = PlayerItem::NONE;
			imagePath = "UI/Item/ScreenItem.png";
			break;
		}

		// mPlayerItemsにアイテムと画像を追加
		CImage* playerItem = new CImage
		(
			imagePath,
			ETaskPriority::eUI, 0, ETaskPauseType::eGame,
			false, false
		);
		playerItem->SetSize(200.0f, 250.0f);
		playerItem->SetCenter(playerItem->GetSize() * 0.5f);
		float posX = (float)WINDOW_WIDTH - spaceX * (i + 1) - itemWidth;
		float posY = (float)WINDOW_HEIGHT * 0.9f;
		playerItem->SetPos(posX, posY);
		playerItem->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);
		mPlayerItems.push_back(std::make_pair(playerItemType, playerItem));
	}

	// 番号の画像
	//std::vector<CImage*> mNumberItems;

	SetEnable(false);
	SetShow(false);
}

// デストラクタ
CScreenItem::~CScreenItem()
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
void CScreenItem::Open()
{
	// 既に開いていたら、処理しない
	if (mIsOpened) return;

	mIsOpened = true;
	SetEnable(true);
	SetShow(true);

	//CBGMManager::Instance()->Play(EBGMType::eMenu, false);
	//CTaskManager::Instance()->Pause(PAUSE_MENU_OPEN);
}

// 閉じる
void CScreenItem::Close()
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
bool CScreenItem::IsOpened() const
{
	return mIsOpened;
}

// どのメニューにするか
void CScreenItem::Decide(int select)
{
	CPlayer* player = CPlayer::Instance();
	PlayerItem selectedItem = mPlayerItems[select].first;
	switch (selectedItem)
	{
	case PlayerItem::NONE:
		break;
		// 無敵アイテムを取得したときの処理
	case PlayerItem::INVINCIBLE_ITEM:
		player->UseInvincibleItem();
		break;
		// 回復アイテムを取得したときの処理
	case PlayerItem::HEALING_ITEM:
		player->UseHealingItem();
		break;
		// 攻撃力アップアイテムを取得したときの処理
	case PlayerItem::ATTACK_UP_ITEM:
		player->UseAttackPotion();
		/*break;
	case PlayerItem::DEFENSE_ITEM:
		break;*/
	}
}

void CScreenItem::Update()
{
	// 1番キーを押した場合は無敵アイテム、
	// 2番キーを押した場合は回復アイテム、
	// 3番キーを押した場合は攻撃力アップアイテムを選択する

	CPlayer* player = CPlayer::Instance();
	bool jump = player->IsJumping();
	if (!jump)
	{
		if (CInput::PushKey('3'))
		{
			Decide(0); // 無敵アイテムを選択
		}
		else if (CInput::PushKey('2'))
		{
			Decide(1); // 回復アイテムを選択

		}
		else if (CInput::PushKey('1'))
		{
			Decide(2); // 攻撃力アップアイテムを選択
		}
	}
}

void CScreenItem::Render()
{
	CPlayer* player = CPlayer::Instance();
	bool hasItem = false;

	// 選択されているアイテムのみを描画する
	for (int i = 0; i < mPlayerItems.size(); ++i) {
		// アイテムがプレイヤーが持っているかどうかを確認
		bool playerHasItem = false;
		switch (mPlayerItems[i].first) {
		case PlayerItem::INVINCIBLE_ITEM:
			playerHasItem = player->HasItem(CPlayer::ItemType::INVINCIBLE);
			break;
		case PlayerItem::HEALING_ITEM:
			playerHasItem = player->HasItem(CPlayer::ItemType::HEALING);
			break;
		case PlayerItem::ATTACK_UP_ITEM:
			playerHasItem = player->HasItem(CPlayer::ItemType::ATTACK_UP);
			break;
		default:
			break;
		}

		if (playerHasItem)
		{
			mPlayerItems[i].second->Render();
		}
	}

	// mNoItemsの画像を描画する
	for (const auto& itemPair : mNoItems) {
		itemPair.second->Render();
	}

	// mNumberの画像を描画する
	for (int i = 0; i < mNumberItems.size(); i++)
	{
		CImage* item = mNumberItems[i];
		item->Render();
	}
}

void CScreenItem::SetPlayer(CPlayer* player)
{
	mPlayer = player;
}