#pragma once
#include "CSceneBase.h"
#include "CInput.h"
#include "CImage.h"

class CGameOverUI;

// ゲームオーバーシーン
class CGameOverScene :public CSceneBase
{
public:
	// コンストラクタ
	CGameOverScene();
	// デストラクタ
	~CGameOverScene();
	// シーン読み込み
	void Load();
	// シーン変更処理
	void Update();

public:
	CGameOverUI* mpGameOverUI;
};