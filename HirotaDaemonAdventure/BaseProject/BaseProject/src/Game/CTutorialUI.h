#ifndef CTUTORIALUI_H
#define CTUTORIALUI_H

#include "CTask.h"
#include "CVector.h"

class CFont;
class CImage;

// チュートリアルUI
class CTutorialUI : public CTask
{
public:
	// コンストラクタ
	CTutorialUI();
	// デストラクタ
	~CTutorialUI();

	// 開く
	void Open();
	// 閉じる
	void Close();
	// 開いているかどうか
	bool IsOpened() const;

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// 最初の画像
	CImage* mCurrentImage;
	// チュートリアル画像
	std::vector<CImage*> mTutorialItems;
	// 開いているかどうかのフラグ
	bool mIsOpened;
};
#endif