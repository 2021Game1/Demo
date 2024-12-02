#ifndef CGAMEOVERSCENE_H
#define CGAMEOVERSCENE_H
#include "CSceneBase.h"
#include "CImage.h"
#include "CInput.h"

class CImage;

class CGameOverScene :public CSceneBase
{
public:
	// コンストラクタ
	CGameOverScene();
	// デストラクタ
	~CGameOverScene();

	//シーン読み込み
	void Load();
	//シーンの更新処理
	void Update();
private:
	CImage* mpOverImage;
};
#endif