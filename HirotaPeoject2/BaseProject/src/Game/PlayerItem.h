#ifndef PLAYERITEM_H
#define PLAYERITEM_H

// プレイヤーのアイテムの種類(効果)
struct PlayerItem
{
	std::string name;
	int PowerBonus;
	int DefenseBonus;
	int HealAmount;
};

// アイテムの最大数
#define ITEM_COUNT_MAX 100

// アイテムごとの情報を管理するテーブル
extern const PlayerItem ITEM_TABLE[ITEM_COUNT_MAX];
#endif