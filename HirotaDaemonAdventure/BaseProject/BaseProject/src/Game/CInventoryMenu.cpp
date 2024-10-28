#include "CInventoryMenu.h"
#include "CInput.h"
#include "CImage.h"
#include "CTaskManager.h"
#include "CBGMManager.h"
#include "CPlayer.h"


//new CImage("UI\\Item\\Invincible Item.png", ETaskPriority::eUI, 0, ETaskPauseType::eMenu, false, false);
//new CImage("UI\\Item\\Health Recovery Items.png", ETaskPriority::eUI, 0, ETaskPauseType::eMenu, false, false);
//new CImage("UI\\Item\\Increase Attack Power.png", ETaskPriority::eUI, 0, ETaskPauseType::eMenu, false, false);
//new CImage("UI\\Item\\NoItemUI.png", ETaskPriority::eUI, 0, ETaskPauseType::eMenu, false, false);

#define MENU_ALPHA 0.75f

CInventoryMenu::CInventoryMenu()
	: CTask(ETaskPriority::eUI, 0, ETaskPauseType::eMenu)
	, mSelectIndex(0)
	, mIsOpened(false)
	, mPlayer(nullptr)
{
	mpBackground = new CImage
	(
		"UI/menu_back.png",
		ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
		false, false
	);
	mpBackground->SetCenter(mpBackground->GetSize() * 0.5f);
	mpBackground->SetPos(CVector2(WINDOW_WIDTH, WINDOW_HEIGHT) * 0.5f);
	mpBackground->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);

	// アイテムを持っていないときの画像
	int menuItemCount = 3;
	float spaceY = (float)WINDOW_HEIGHT / (menuItemCount + 1);
	for (int i = 0; i < menuItemCount; i++)
	{
		CImage* item = new CImage
		(
			"UI\\Item\\NoItemUI.png",
			ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
			false, false
		);
		item->SetCenter(item->GetSize() * 0.5f);
		float posX = (1280.0f - 1024.0f + item->GetSize().X()) * 0.5f + 100.0f;
		item->SetPos(posX, spaceY * (i + 1));
		item->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);
		mNoItems.push_back(std::make_pair(PlayerItem::NONE, item));
	}

	int ItemCount = 3;
	float invinciblePosY = spaceY * 1; // 上から1番目の位置
	float healingPosY = spaceY * 2; // 上から2番目の位置
	float attackPotionPosY = spaceY * 3;
	for (int i = 0; i < ItemCount; i++)
	{
		// 無敵アイテム
		CImage* invincible = new CImage
		(
			"UI\\Item\\Invincible Item.png",
			ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
			false, false
		);
		invincible->SetCenter(invincible->GetSize() * 0.5f);
		float invinciblePosX = (1280.0f - 1024.0f + invincible->GetSize().X()) * 0.5f + 100.0f;
		invincible->SetPos(invinciblePosX, invinciblePosY);
		invincible->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);
		mPlayerItems.push_back(std::make_pair(PlayerItem::INVINCIBLE_ITEM, invincible));

		// 回復アイテム
		CImage* healing = new CImage
		(
			"UI\\Item\\ScreenItems(Healing).png",
			ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
			false, false
		);
		healing->SetCenter(healing->GetSize() * 0.5f);
		float healingPosX = (1280.0f - 1024.0f + healing->GetSize().X()) * 0.5f + 100.0f;
		healing->SetPos(healingPosX, healingPosY);
		healing->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);
		mPlayerItems.push_back(std::make_pair(PlayerItem::HEALING_ITEM, healing));

		// 攻撃力アップアイテム
		CImage* attackPotion = new CImage
		(
			"UI\\Item\\ScreenItems(Attack).png",
			ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
			false, false
		);
		attackPotion->SetCenter(attackPotion->GetSize() * 0.5f);
		float attackPotionPosX = (1280.0f - 1034.0f + attackPotion->GetSize().X()) * 0.5f + 100.0f;
		attackPotion->SetPos(attackPotionPosX, attackPotionPosY);
		attackPotion->SetColor(1.0f, 1.0f, 1.0f, MENU_ALPHA);
		mPlayerItems.push_back(std::make_pair(PlayerItem::ATTACK_UP_ITEM, attackPotion));
	}

	// アイテムの枠画像
	mpSelectFrame = new CImage
	(
		"UI/menu_item_select.png",
		ETaskPriority::eUI, 0, ETaskPauseType::eMenu,
		false, false
	);
	mpSelectFrame->SetCenter(mpSelectFrame->GetSize() * 0.5f);
	mpSelectFrame->SetColor(1.0f, 0.5f, 0.0f, MENU_ALPHA);

	SetEnable(false);
	SetShow(false);
}

CInventoryMenu::~CInventoryMenu()
{
}

void CInventoryMenu::Open()
{
	// 既に開いていたら、処理しない
	if (mIsOpened) return;

	mIsOpened = true;
	SetEnable(true);
	SetShow(true);

	CPlayer* player = CPlayer::Instance();
	// 現在のアイテムの数を取得
	int numItems = mPlayerItems.size();

	// プレイヤーがアイテムを持っている場合
	if (numItems > 0) {
		bool itemSelected = false;
		// 最初のアイテムを選択状態にする（mSelectIndexを0に設定）
		// プレイヤーがアイテムを持っていない場合は0に設定
		mSelectIndex = 0;
		for (int i = 0; i < mPlayerItems.size(); ++i) {
			// アイテムがプレイヤーが持っているかどうかを確認
			if (IsValidSelection(i)) {
				mSelectIndex = i;
				itemSelected = true;
				break;
			}
		}
	}

	// アイテムを持っていないときの処理
	bool noitemselect = !mNoItems.size();
	if (noitemselect)
	{
		mSelectIndex = 0;
	}

	CBGMManager::Instance()->Play(EBGMType::eMenu, false);
	CTaskManager::Instance()->Pause(PAUSE_MENU_OPEN);
}

void CInventoryMenu::Close()
{
	// すでに閉じていたら、処理しない
	if (!mIsOpened) return;

	mIsOpened = false;
	SetEnable(false);
	SetShow(false);
	CBGMManager::Instance()->Play(EBGMType::eGame, false);
	CTaskManager::Instance()->UnPause(PAUSE_MENU_OPEN);
	// メニューを開いたフラグを下す
	mIsOpened = false;
}

bool CInventoryMenu::IsOpened() const
{
	return mIsOpened;
}

void CInventoryMenu::Decide(int select)
{
	CPlayer* player = CPlayer::Instance();
	PlayerItem selectedItem = mPlayerItems[select].first;
	switch (selectedItem)
	{
	case PlayerItem::NONE:
		Close();
		break;
		// 無敵アイテムを取得したときの処理
	case PlayerItem::INVINCIBLE_ITEM:
		player->UseInvincibleItem();
		break;
		// 回復アイテムを取得したときの処理
	case PlayerItem::HEALING_ITEM:
		player->UseHealingItem();
		break;
	case PlayerItem::ATTACK_UP_ITEM:
		player->UseAttackPotion();
		break;
	case PlayerItem::DEFENSE_ITEM:
		break;
	}

	Close();
}

void CInventoryMenu::Update()
{
	bool PlayerHasItem = !mPlayerItems.empty();
	bool NoItemExists = !mNoItems.empty();
	CPlayer* player = CPlayer::Instance();


	int ItemCount = mPlayerItems.size();
	// 現在のアイテムの数をカウント
	int CurrentItemCount = 0;
	// 現在持っているアイテムの数を数える
	for (int i = 0; i < ItemCount; ++i) {
		if (IsValidSelection(i)) {
			CurrentItemCount++;
		}
	}

	// 上キーが押された場合
	int NewIndex = mSelectIndex;
	// アイテムが選択可能かどうか
	bool FoundValidItem = false;
	if (CInput::PushKey(VK_UP)) {
		while (!FoundValidItem) {
			NewIndex = (NewIndex + ItemCount - 1) % ItemCount;
			if (IsValidSelection(NewIndex)) {
				FoundValidItem = true;
			}
			if (NewIndex == mSelectIndex) {
				// 選択インデックスが最初の位置に戻った場合、ループを抜ける
				break;
			}
		}
		if (FoundValidItem) {
			mSelectIndex = NewIndex;
		}
	}
	else if (CInput::PushKey(VK_DOWN)) {
		while (!FoundValidItem) {
			NewIndex = (NewIndex + 1) % ItemCount;
			if (IsValidSelection(NewIndex)) {
				FoundValidItem = true;
			}
			if (NewIndex == mSelectIndex) {
				// 選択インデックスが最後の位置に戻った場合、ループを抜ける
				break;
			}
		}
		if (FoundValidItem) {
			mSelectIndex = NewIndex;
		}
	}
	else if (CInput::PushKey(VK_RETURN)) {
		Decide(mSelectIndex);
	}
	// アイテムを持っていない場合でもエンターキーで閉じる処理
	else if (CurrentItemCount == 0 && CInput::PushKey(VK_RETURN)) {
		Close();
	}

	mpBackground->Update();
	for (const auto& itemPair : mNoItems) {
		CImage* item = itemPair.second;
		item->Update();
	}
	mpSelectFrame->Update();
}

// アイテムが選択可能かどうか
bool CInventoryMenu::IsValidSelection(int index) {
	// インベントリのアイテムと、プレイヤーのアイテムを確認
	if (mPlayerItems[index].first == PlayerItem::INVINCIBLE_ITEM &&
		CPlayer::Instance()->HasItem(CPlayer::ItemType::INVINCIBLE)) {
		return true;
	}
	else if (mPlayerItems[index].first == PlayerItem::HEALING_ITEM &&
		CPlayer::Instance()->HasItem(CPlayer::ItemType::HEALING)) {
		return true;
	}
	else if (mPlayerItems[index].first == PlayerItem::ATTACK_UP_ITEM &&
		CPlayer::Instance()->HasItem(CPlayer::ItemType::ATTACK_UP)) {
		return true;
	}
	return false;

	// いらないかも
	//// index が mPlayerItems リストの範囲内にあることを確認
	//if (index < 0 || index >= mPlayerItems.size()) {
	//	return false;
	//}
}

void CInventoryMenu::Render()
{
	CPlayer* player = CPlayer::Instance();
	mpBackground->Render();

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

		// アイテムがプレイヤーが持っている場合にのみ描画する
		if (playerHasItem) {
			if (i == mSelectIndex) {
				// 選択されたアイテムの場合、選択フレームを描画する
				CImage* selectedItem = mPlayerItems[i].second;
				mpSelectFrame->SetPos(selectedItem->GetPos());
				mpSelectFrame->Render();
			}
			mPlayerItems[i].second->Render();
		}
	}

	// アイテムを持っていない場合は、mNoItemsの画像を描画する
	if (!player->HasItem(CPlayer::ItemType::INVINCIBLE) &&
		!player->HasItem(CPlayer::ItemType::HEALING) &&
		!player->HasItem(CPlayer::ItemType::ATTACK_UP)) {
		for (const auto& itemPair : mNoItems) {
			itemPair.second->Render();
		}
	}
}

void CInventoryMenu::SetPlayer(CPlayer* player)
{
	mPlayer = player;
}