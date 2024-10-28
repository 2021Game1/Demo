#include "CStageSky.h"
#include "CStageManager.h"

CStageSky::CStageSky()
	: CObjectBase(ETag::eSky, ETaskPriority::eBackground)
{
	// 空オブジェクト設定
	mpStageSky = CResourceManager::Get<CModel>("StageSky");
}

CStageSky::~CStageSky()
{
	CStageManager::RemoveTask(this);
	Kill();
}

void CStageSky::Update()
{
	// 回転
	float rot = 0.01f;
	Rotate(0.0f, rot, 0.0f);
}

void CStageSky::Render()
{
	mpStageSky->SetColor(mColor);
	mpStageSky->Render(Matrix());
}