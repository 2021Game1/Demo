#ifndef CTUTORIALMANAGER_H
#define CTUTORIALMANAGER_H

#include "CTask.h"
#include <list>

class CTutorialUI;

// 画像の表示を決めるクラス
class CTutorialManager : public CTask
{
public:
	// インスタンスを取得
	static CTutorialManager* Instance();

	// 画像を表示させたかどうかを処理
	bool IsEndImage();

	// コンストラクタ
	CTutorialManager();
	// デストラクタ
	~CTutorialManager();

private:
	// インスタンス
	static CTutorialManager* mpInstance;

	// 全て獲得したらイベントが発生するリスト
	std::list<CTutorialUI*> mBlueMedals;

	// 表示フラグ
	bool mIsEnd;
};
#endif