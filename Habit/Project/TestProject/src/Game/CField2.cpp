#include "CField2.h"
#include "CCollisionManager.h"
#include "CMoveFloor.h"
#include "CWall2.h"
#include <assert.h>
#include "CNavManager.h"
#include "CNavNode.h"

CField2* CField2::spInstance = nullptr;

CField2* CField2::Instance()
{
	return spInstance;
}

// コンストラクタ
CField2::CField2()
	: CObjectBase(ETag::eField, ETaskPriority::eBackground)
{
	assert(spInstance == nullptr);
	spInstance = this;
	//床の生成
	mpModel = CResourceManager::Get<CModel>("Map_mini_floor");

	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpModel, true);

	// 壁を生成
	CreateWalls();
	CreateFieldObjects();
	// 経路探索用のノードを作成
	CreateNavNodes();
}

// デストラクタ
CField2::~CField2()
{
	spInstance = nullptr;

	if (mpColliderMesh != nullptr)
	{
		delete mpColliderMesh;
		mpColliderMesh = nullptr;
	}
}

// 更新
void CField2::Update()
{
}

// レイとフィールドオブジェクトの衝突判定
bool CField2::CollisionRay(const CVector& start, const CVector& end, CHitInfo* hit)
{
	// 衝突情報保存用
	CHitInfo tHit;
	// 衝突したかどうかのフラグ
	bool isHit = false;

	// フィールドのオブジェクトとの衝突判定
	if (CCollider::CollisionRay(mpColliderMesh, start, end, &tHit))
	{
		*hit = tHit;
		isHit = this;
	}

	// 壁との衝突判定
	for (CWall2* wall : mWalls)
	{
		if (wall->CollisionRay(start, end, &tHit))
		{
			// まだほかに衝突していない場合か、
			// 既に衝突しているコライダーより近い場合は、
			if (!isHit || tHit.dist < hit->dist)
			{
				// 衝突情報を更新
				*hit = tHit;
				isHit = true;
			}
		}
	}

	return isHit;

}

// 壁を生成
void CField2::CreateWalls()
{
	// マップ①
	CWall2* wall = new CWall2
	(
		CVector(0.0f, 0.0f, 0.0f), 
		CVector(0.0f, 0.0f, 0.0f),
		CVector(1.0f, 1.0f, 1.0f)
	);
	mWalls.push_back(wall);
}

// オブジェクトの生成
void CField2::CreateFieldObjects()
{
}

void CField2::CreateNavNodes()
{	
	CNavManager* navMgr = CNavManager::Instance();
	if (navMgr != nullptr)
	{
		// 壁①の周りの経路探索ノード
		new CNavNode(CVector(25.0f, 0.0f, 25.0f));
		new CNavNode(CVector(70.0f, 0.0f, 25.0f));
		new CNavNode(CVector(70.0f, 0.0f, 90.0f));
		new CNavNode(CVector(25.0f, 0.0f, 90.0f));

		// 壁②の周りの経路探索ノード
		new CNavNode(CVector( 85.0f, 0.0f, 15.0f));
		new CNavNode(CVector(175.0f, 0.0f, 15.0f));
		new CNavNode(CVector(175.0f, 0.0f, 80.0f));
		new CNavNode(CVector( 85.0f, 0.0f, 80.0f));

		// 壁③の周りの経路探索ノード
		new CNavNode(CVector(185.0f, 0.0f, 45.0f));
		new CNavNode(CVector(250.0f, 0.0f, 45.0f));
		new CNavNode(CVector(250.0f, 0.0f, 100.0f));
		new CNavNode(CVector(185.0f, 0.0f, 100.0f));

		// 壁④の周りの経路探索ノード
		new CNavNode(CVector(15.0f, 0.0f, 105.0f));
		new CNavNode(CVector(95.0f, 0.0f, 105.0f));
		new CNavNode(CVector(95.0f, 0.0f, 165.0f));
		new CNavNode(CVector(50.0f, 0.0f, 165.0f));
		new CNavNode(CVector(15.0f, 0.0f, 165.0f));

		// 壁⑤の周りの経路探索ノード
		new CNavNode(CVector(115.0f, 0.0f, 105.0f));
		new CNavNode(CVector(185.0f, 0.0f, 105.0f));
		new CNavNode(CVector(185.0f, 0.0f, 160.0f));
		new CNavNode(CVector(115.0f, 0.0f, 160.0f));

		// 壁⑥の周りの経路探索ノード
		new CNavNode(CVector(195.0f, 0.0f, 115.0f));
		new CNavNode(CVector(265.0f, 0.0f, 115.0f));
		new CNavNode(CVector(265.0f, 0.0f, 180.0f));
		new CNavNode(CVector(195.0f, 0.0f, 180.0f));
	}
}

void CField2::Render()
{
	mpModel->Render(Matrix());
}
