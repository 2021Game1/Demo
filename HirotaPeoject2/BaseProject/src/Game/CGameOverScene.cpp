#include "CGameOverScene.h"
#include "CSceneManager.h"
#include "CGameScene.h"
#include "CTitleScene.h"
#include "CCamera.h"

#define GAMEOVER_IMAGE "UI\\GameOver.png"

CGameOverScene::CGameOverScene()
	:CSceneBase(EScene::eOver)
	, mpOverImage(nullptr)
{
}

CGameOverScene::~CGameOverScene()
{
	if (mpOverImage != nullptr)
	{
		delete mpOverImage;
		mpOverImage = nullptr;
	}
}

void CGameOverScene::Load()
{
	mpOverImage = new CImage(GAMEOVER_IMAGE);
	mpOverImage->SetSize(WINDOW_WIDTH, WINDOW_HEIGHT);
	mpOverImage->SetUV(0, 1, 1, 0);

	CCamera* mainCamera = new CCamera
	(
		CVector(0.0f, 50.0f, 75.0f),
		CVector::zero
	);
}

void CGameOverScene::Update()
{
	if (CInput::PushKey('T'))
	{
		CSceneManager::Instance()->LoadScene(EScene::eTitle);
	}
}