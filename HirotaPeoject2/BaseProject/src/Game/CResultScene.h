#ifndef CRESULTSCENE_H
#define CRESULTSCENE_H

#include "CSceneBase.h"
#include "CInput.h"
class CImage;
class CResultAnnouncement;

// リザルトシーン
class CResultScene : public CSceneBase
{
public:
	// コンストラクタ
	CResultScene();
	// デストラクタ
	~CResultScene();

	// 読み込み
	void Load();

	// 更新処理
	void Update();

private:
	CResultAnnouncement* mpResult;
};
#endif