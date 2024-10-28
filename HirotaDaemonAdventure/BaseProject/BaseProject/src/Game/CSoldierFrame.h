#ifndef CSOLDIERFRAME_H
#define CSOLDIERFRAME_H

#include "CUIBase.h"
#include "CVector.h"
class CImage;

class CSoldierFrame :public CUIBase
{
private:
	CImage* mpFrameImage;		// 枠画像
	CVector2 mCenterRatio;		// 中心位置の割合
	float mScale;				// ゲージのスケール値
	bool mIsShow;				// ゲージを表示するかどうか

public:
	// コンストラクタ
	CSoldierFrame();
	// デストラクタ
	~CSoldierFrame();

	// フレームを削除
	void Kill() override;

	// 表示するかどうか設定
	void SetShow(bool isShow) override;

	// 中心位置の割合を設定
	void SetCenterRatio(const CVector2& ratio);

	// ワールド座標を設定
	void SetWorldPos(const CVector& worldPos);

	// 更新処理
	void Update();

};

#endif