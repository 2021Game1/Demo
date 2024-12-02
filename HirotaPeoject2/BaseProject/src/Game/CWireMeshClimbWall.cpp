#include "CWireMeshClimbWall.h"

// コンストラクタ
CWireMeshClimbWall::CWireMeshClimbWall(std::string wireName, std::string topName,
	const CVector& moveUp, const CVector& moveForward)
	: CObjectBase(ETag::eField,ETaskPriority::eBackground)
	, mClimbedMoveUp(moveUp)
	, mClimbMoveForward(moveForward)
{
	// 登れる金網モデル取得
	mpWireMeshModel = CResourceManager::Get<CModel>(wireName);

	// 登れる金網のコライダー取得
	CModel* wireCol = CResourceManager::Get<CModel>("WireMeshCol");
	mpWallCol = new CColliderMesh(this, ELayer::eWireClimb, wireCol, true);
	mpWallCol->SetCollisionTags({ ETag::ePlayer });
	
	// 登れる金網の頂上コライダー取得
	CModel* top = CResourceManager::Get<CModel>(topName);
	mpWallTopCol = new CColliderMesh(this, ELayer::eWireClimbedTop, top, true);
	mpWallTopCol->SetCollisionTags({ ETag::ePlayer });
	mpWallTopCol->SetCollisionLayers({ ELayer::ePlayer });

}

// デストラクタ
CWireMeshClimbWall::~CWireMeshClimbWall()
{
	SAFE_DELETE(mpWallCol);
	SAFE_DELETE(mpWallTopCol);
}

// 頂上へ上り切った時の移動量を取得
void CWireMeshClimbWall::GetClimbedMoveVec(CVector* outUp, CVector* outForward) const
{
	*outUp = mClimbedMoveUp;
	*outForward = mClimbMoveForward;
}

// 更新
void CWireMeshClimbWall::Update()
{

}

// 描画
void CWireMeshClimbWall::Render()
{
	mpWireMeshModel->SetColor(mColor);
	mpWireMeshModel->Render(Matrix());
}