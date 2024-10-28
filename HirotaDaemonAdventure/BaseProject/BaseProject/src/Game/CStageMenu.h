#ifndef CSTAGEMENU_H
#define CSTAGEMENU_H

#include "CTask.h"
#include <vector>
class CImage;

// ステージ選択メニュー
class CStageMenu : public CTask
{
public:
	// コンストラクタ
	CStageMenu();
	// デストラクタ
	~CStageMenu();

	// 開く
	void Open();
	// 閉じる
	void Close();
	// 開いているかどうか
	bool IsOpened() const;

	// どのメニューにするか
	void Decide(int select);

	void Update() override;
	void Render() override;

private:
	CImage* mpStageMenu;
	std::vector<CImage*> mStageMenuItems;
	CImage* mpStageMenuFrame;
	int mSelectIndex;
	bool mIsOpened;
};
#endif