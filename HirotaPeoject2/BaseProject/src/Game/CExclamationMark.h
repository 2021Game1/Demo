#ifndef CEXCLAMATIONMARK_H
#define CEXCLAMATIONMARK_H
class CImage;

#include "CUIBase.h"
#include "CVector.h"

// ビックリマーククラス
class CExclamationMark : public CUIBase
{
public:
	CExclamationMark();
	~CExclamationMark();

	// ビックリマークを削除
	void Kill() override;

	// 表示するかどうか設定
	void SetShow(bool isShow) override;

	// 中心位置を設定
	void SetCeneterRatio(const CVector2& ratio);

	// ワールド座標を設定
	void SetWorldPos(const CVector& worldpos);

	// 更新処理
	void Update();

private:
	// ビックリマーク画像
	CImage* mpExclamationMark;
	// 中心位置の割合
	CVector2 mCenterRatio;
	// ビックリマークのスケール値
	float mScale;
};
#endif