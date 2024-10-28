#ifndef COPERATIONUI_H
#define COPERATIONUI_H

#include "CUIBase.h"
#include "CVector.h"

class CImage;

// 操作説明UIクラス
class COperationUI : public CUIBase
{
public:
	// コンストラクタ
	COperationUI(std::string path);
	// デストラクタ
	~COperationUI();

	// タスクを切るする
	void Kill() override;

	// ワールド座標を設定
	void SetWorldPos(const CVector& worldPos);

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// キー画像
	CImage* mpKay;
	// バック画像
	CImage* mpBG;

	// 画像のスケール値
	float mScale;
};
#endif