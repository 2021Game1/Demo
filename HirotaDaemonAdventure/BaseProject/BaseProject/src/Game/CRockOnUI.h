#ifndef CROCKONUI_H
#define CROCKONUI_H

class CImage;

#include "CUIBase.h"
#include "CVector.h"

// ロックオン画像クラス
class CRockOnUI : public CUIBase
{
public:
	// コンストラクタ
	CRockOnUI(std::string path);
	// デストラクタ
	~CRockOnUI();

	// ロックオン画像削除
	void Kill() override;

	// 表示するかどうかを設定
	void SetShow(bool isShow) override;

	// 中心位置を設定
	void SetCeneterRatio(const CVector2& ratio);

	// ワールド座標を設定
	void SetWorldPos(const CVector& worldpos);

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// ロックオン可能画像&ロックオン画像
	CImage* mpCanRockOn;
	// 中心位置の割合
	CVector2 mCenterRatio;
};
#endif