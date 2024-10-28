#ifndef CSCREENITEM_H
#define CSCREENITEM_H

#include "CTask.h"
#include <utility>
#include <vector>
class CPlayer;
class CImage;

// 画面上のインベントリアイテムクラス
class CScreenItem : public CTask
{
public:
	CScreenItem();
	~CScreenItem();

	void Open();
	void Close();
	bool IsOpened() const;

	void Decide(int select);

	void Update() override;
	void Render() override;

	// プレイヤーオブジェクトへのポインタを設定する関数
	void SetPlayer(CPlayer* player);

private:
	// 枠組みの画像
	CImage* mpBackground;
	bool mIsOpened;
	// アイテムの種類
	enum PlayerItem
	{
		NONE,
		INVINCIBLE_ITEM,	// 何もアイテムを持っていない
		HEALING_ITEM,		// 無敵アイテム
		ATTACK_UP_ITEM,		// 回復アイテム
		DEFENSE_ITEM,		// 攻撃力アップアイテム
	};
	// アイテムの種類と、アイテムの画像を管理
	std::vector<std::pair<PlayerItem, CImage*>> mPlayerItems;
	// アイテムが無い場合の画像
	std::vector<std::pair<PlayerItem, CImage*>> mNoItems;
	// 番号の画像
	std::vector<CImage*> mNumberItems;

	CPlayer* mPlayer;
};
#endif