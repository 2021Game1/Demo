#include "CHopsAndHoopsFallCol.h"
#include "CCollisionManager.h"
#include "CCamera.h"
#include "CStageManager.h"

// コンストラクタ
CHopsAndHoopsFallCol::CHopsAndHoopsFallCol()
	: CObjectBase(ETag::eFall, ETaskPriority::eFall)
{
	// 落下コライダー
	CModel* fallCol = CResourceManager::Get<CModel>("HopsAndHoops(FallCol)");
	mpFallCol = new CColliderMesh(this, ELayer::eFall, fallCol, true);
	mpFallCol->SetCollisionTags({ ETag::ePlayer });
	mpFallCol->SetCollisionLayers({ ELayer::ePlayer });
}

// デストラクタ
CHopsAndHoopsFallCol::~CHopsAndHoopsFallCol()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpFallCol);
}

// 更新処理
void CHopsAndHoopsFallCol::Update()
{

}

// 描画処理
void CHopsAndHoopsFallCol::Render()
{

}