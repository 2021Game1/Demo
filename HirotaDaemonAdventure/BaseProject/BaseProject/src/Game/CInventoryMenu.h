#ifndef CINVENTORY_H
#define CINVENTORY_H

#include "CTask.h"
#include <utility>
#include <vector>
class CPlayer;
class CImage;

// インベントリのアイテム管理クラス
class CInventoryMenu : public CTask
{
public:
	CInventoryMenu();
	~CInventoryMenu();

	void Open();
	void Close();
	bool IsOpened() const;

	void Decide(int select);

	void Update() override;
	void Render() override;

	// プレイヤーオブジェクトへのポインタを設定する関数
	void SetPlayer(CPlayer* player);

private:
	// 背景の画像
	CImage* mpBackground;
	// 選択アイテムのフレーム
	CImage* mpSelectFrame;
	int mSelectIndex;
	bool mIsOpened;
	// アイテムの種類
	enum PlayerItem 
	{
		NONE,				// 何もアイテムを持っていない
		INVINCIBLE_ITEM,	// 無敵アイテム
		HEALING_ITEM,		// 回復アイテム
		ATTACK_UP_ITEM,		// 攻撃力アップアイテム
		DEFENSE_ITEM,		// 防御力アップアイテム
		// 他のアイテムも追加可能
	};
	// アイテムの種類と、アイテムの画像を管理
	// 無敵アイテムの画像
	// 回復アイテムの画像
	std::vector<std::pair<PlayerItem, CImage*>> mPlayerItems;
	// アイテムが無い場合の画像
	std::vector<std::pair<PlayerItem, CImage*>> mNoItems;
	// アイテムが選択可能か
	bool CInventoryMenu::IsValidSelection(int index);

	CPlayer* mPlayer;
};
#endif