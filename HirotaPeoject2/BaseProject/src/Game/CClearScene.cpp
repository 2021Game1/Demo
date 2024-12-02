#include "CClearScene.h"
#include "CSceneManager.h"
#include "CGameScene.h"
#include "CCamera.h"
#include "CTitleScene.h"
#include "CPlayer.h"
#include "CBGMManager.h"

// コンストラクタ
CClearScene::CClearScene()
	:CSceneBase(EScene::eClear)
	, mpClearImage(nullptr)
{

}

// デストラクタ
CClearScene::~CClearScene()
{
}

// 読み込み
void CClearScene::Load()
{
	// 背景色設定
	System::SetClearColor(1.0f, 1.0f, 0.0f, 1.0f);

	// タイトルBGMを再生
	CBGMManager::Instance()->Play(EBGMType::eClear);

	CCamera* mainCamera = new CCamera
	(
		CVector(0.0f, 50.0f, 75.0f),
		CVector::zero
	);
	//// 表示画像関連
	//CResourceManager::Load<CTexture>("ClearImage", "UI\\Clear.jpeg");


	//// 背景色設定
	//System::SetClearColor(1.0f, 1.0f, 1.0f, 1.0f);

	//mpClearImage = new CImage("ClearImage");
	//mpClearImage->SetSize(WINDOW_WIDTH, WINDOW_HEIGHT);
	////mpClearImage->SetUV(0, 1, 1, 0);

	//CCamera* mainCamera = new CCamera
	//(
	//	CVector(0.0f, 50.0f, 75.0f),
	//	CVector::zero
	//);
}

// 更新処理
void CClearScene::Update()
{
	if (CInput::PushKey('C'))
	{
		CSceneManager::Instance()->LoadScene(EScene::eTitle);
	}
}