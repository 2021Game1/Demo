#include "CStuffedRollScene.h"
#include "CTitleMenu.h"
#include "CSceneManager.h"
#include "CGameScene.h"
#include "CCamera.h"
#include "CPlayer.h"
#include "CSound.h"
#include "CBGMManager.h"
#include "CStuffedRoll.h"
#include "CStageManager.h"

//コンストラクタ
CStuffedRollScene::CStuffedRollScene()
	: CSceneBase(EScene::eStuffedRoll)
{

}

//デストラクタ
CStuffedRollScene::~CStuffedRollScene()
{
	//CStageManager::UnloadStage();
}

//シーン読み込み
void CStuffedRollScene::Load()
{
	CInput::ShowCursor(false);
	// BGMを再生
	CBGMManager::Instance()->Play(EBGMType::eEnding);
	// 背景色設定
	System::SetClearColor(0.0f, 0.0f, 0.0f, 0.7f);

	// BGMを再生
	//CBGMManager::Instance()->Play(EBGMType::eTitle);

	CCamera* mainCamera = new CCamera
	(
		CVector(0.0f, 50.0f, 75.0f),
		CVector::zero
	);

	mpStuffedRoll = new CStuffedRoll();
	AddTask(mpStuffedRoll);
}

//シーンの更新処理
void CStuffedRollScene::Update()
{
	if (CInput::PushKey(VK_RETURN))
	{
		CSceneManager::Instance()->LoadScene(EScene::eTitle);
	}
}