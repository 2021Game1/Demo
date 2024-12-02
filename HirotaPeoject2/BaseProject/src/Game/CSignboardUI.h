#ifndef CSIGNBOARDUI_H
#define CSIGNBOARDUI_H

#include "CUIBase.h"
#include "CVector.h"
class CImage;

class CSignboardUI : public CUIBase
{
public:
	// コンストラクタ
	CSignboardUI();
	// デストラクタ
	~CSignboardUI();

	void Kill() override;

	void SetCenterRatio(const CVector2& ratio);

	void SetWorldPos(const CVector& worldPos);

	// 更新処理
	void Update();

private:
	CImage* mpCSiUI;	// Uキーヒント画像
	CVector2 mCenterRatio;	// 中心位置の割合
	float mScale;	// 画像のスケール値
};
#endif