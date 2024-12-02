#ifndef CMEATUI_H
#define CMEATUI_H

#include "CTask.h"
#include <vector>

class CPlayer;
class CImage;

// ステージの肉UIクラス
class CMeatUI : public CTask
{
public:
	CMeatUI();
	~CMeatUI();

	void Open();
	void Close();

	bool IsOpened() const;

	void Update() override;
	void Render() override;

private:
	// 未取得時の肉の画像
	std::vector<CImage*> mUnacquired;
	// 取得時の肉の画像
	std::vector<CImage*> mAcquisition;
	bool mIsOpened;
};
#endif