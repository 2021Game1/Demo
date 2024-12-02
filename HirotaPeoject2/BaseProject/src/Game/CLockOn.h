#ifndef CLOCKON_H
#define CLOCKON_H

#include "CBillBoardImage.h"

// ロックオン可能時のUI
class CLockOn : public CBillBoardImage
{
public:
	// コンストラクタ
	CLockOn(ETag tag, ETaskPriority, const CVector& pos);
	// デストラクタ
	~CLockOn();

	// カラーを設定
	void SetColor(const CColor& color) override;
	// ブレンドタイプを設定
	void SetBlendType(EBlend type);
	
	// 更新
	void Update() override;

private:
	// 元の位置
	CVector mDefaultPos;
	float mElapsedTime;		// 経過時間
	float mRotationAngle;	// 角度
	float mSpeed;			// 回転スピード
	bool mIsDeath;			// 削除フラグ
};
#endif