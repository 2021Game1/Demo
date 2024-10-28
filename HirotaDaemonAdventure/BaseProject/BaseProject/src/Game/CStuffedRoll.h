#ifndef CSTUFFEDROLL_H
#define CSTUFFEDROLL_H

#include "CTask.h"

class CText;
class CImage;
class CFont;

// スタッフロールクラス
class CStuffedRoll : public CTask
{
public:
	// コンストラクタ
	CStuffedRoll();
	// デストラクタ
	~CStuffedRoll();

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;
private:
	// テキストを移動させる処理
	void ScrollTextUp(CText* pText, float& yPos, float speed);

	// テキストのX軸ポジションを設定
	void TextXPos(const float pos);

	// フォントテキスト
	CFont* mpFont;
	// テキスト
	std::vector<CText*> mStuffedRolls;
	std::vector<float> mTextYPositions;

	struct StafData
	{
		std::string stuffName;	// テキスト名
		float startTime;		// 開始時間
		float xPos;				// X軸
		float r, g, b;			// カラー
	};
	static const StafData STAFF_DATA[];

	float mStaffRollTime;
	float mXPos;
};
#endif