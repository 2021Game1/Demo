#pragma once
#include "CObjectBase.h"

class CInteractObject : public CObjectBase
{
public:
	// コンストラクタ
	CInteractObject(
		ETaskPriority prio = ETaskPriority::eDefault,
		int sortOrder = 0,
		ETaskPauseType pause = ETaskPauseType::eDefault);
	// デストラクタ
	virtual ~CInteractObject();

	// 調べられる状態かどうか
	virtual bool CanInteract() const;
	// 調べる（継承先で実装）
	virtual void Interact() = 0;

	// 調べる内容のテキストを返す 
	std::string GetInteractStr() const;

#if _DEBUG
	// デバッグ表示用の名前を取得
	std::string GetDebugName() const;
	// デバッグ表示用のm名前を設定
	void SetDebugName(std::string name);
#endif

protected:
	std::string mInteractStr;	// 調べる内容のテキスト

#if _DEBUG
	std::string mDebugName;		// デバッグ表示用の名前
#endif
};