#ifndef CTITLEMENU_H
#define CTITLEMENU_H

#include "CTask.h"
#include <vector>
class CImage;

// タイトル画面選択メニュー
class CTitleMenu : public CTask
{
public:
	// コンストラクタ
	CTitleMenu();
	// デストラクタ
	~CTitleMenu();

	// 開く
	void Open();
	// 閉じる
	void Close();

	void HandleMouseInput();

	bool IsOpened() const;
	
	// どのメニューにするか
	void Decide(int select);

	void Update() override;
	void Render() override;

private:
	CImage* mpTitleMenu;
	std::vector<CImage*> mTitleMenuItems;
	CImage* mpTitleMenuFrame;
	int mSelectIndex;
	bool mIsOpened;
};
#endif