#include "CField.h"
#include "CCollisionManager.h"
#include "CMoveFloor.h"
#include "CRotateFloor.h"
#include "CLineEffect.h"
#include "CWall.h"
#include <assert.h>
#include "CNavManager.h"
#include "CNavNode.h"
#include "CSceneManager.h"

CField* CField::spInstance = nullptr;

CField* CField::Instance()
{
	return spInstance;
}

CField::CField()
	: CObjectBase(ETag::eField, ETaskPriority::eBackground)
	, mEffectAnimData(1, 11, true, 11, 0.03f)
{
	assert(spInstance == nullptr);
	spInstance = this;

	// シーンタイプの取得
	mScene = CSceneManager::Instance()->GetCurrentScene();
	switch (mScene)
	{
		// テストステージ
		case EScene::eGame:
			// 床のモデルデータを取得
			mpModel = CResourceManager::Get<CModel>("Field");
			break;
		// ステージ1
		case EScene::eGame2:
			// 床のモデルデータを取得
			mpModel = CResourceManager::Get<CModel>("Map_mini_floor");
			break;
		// ステージ2
		case EScene::eGame3:
			// 床のモデルデータを取得
			mpModel = CResourceManager::Get<CModel>("Field");
			break;
	}
	// 床のコライダーを生成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpModel, true);

	// 壁を生成
	CreateWalls();
	CreateFieldObjects();
	// 経路探索用のノードを作成
	CreateNavNodes();
}

CField::~CField()
{
	spInstance = nullptr;

	if (mpColliderMesh != nullptr)
	{
		delete mpColliderMesh;
		mpColliderMesh = nullptr;
	}
}

// 壁を生成
void CField::CreateWalls()
{
	switch (mScene)
	{
		// ステージ１
		case EScene::eGame:
		{
			// 壁①生成
			CWall* wall = new CWall
			(
				CVector(20.0f, 0.0f, 0.0f),
				CVector(0.0f, 90.0f, 0.0f),
				CVector(5.0f, 5.0f, 5.0f)
			);
			mWalls.push_back(wall);	// 生成した壁を壁のリストに追加

			// 壁②生成
			wall = new CWall
			(
				CVector(-85.0f, 0.0f, -50.0f),
				CVector(0.0f, 0.0f, 0.0f),
				CVector(5.0f, 5.0f, 5.0f)
			);
			mWalls.push_back(wall);	// 生成した壁を壁のリストに追加

			wall = new CWall
			(
				CVector(-15.0f, 0.0f, -50.0f),
				CVector(0.0f, 0.0f, 0.0f),
				CVector(5.0f, 5.0f, 5.0f)
			);
			mWalls.push_back(wall);	// 生成した壁を壁のリストに追加

			wall = new CWall
			(
				CVector(-155.0f, 0.0f, -50.0f),
				CVector(0.0f, 0.0f, 0.0f),
				CVector(5.0f, 5.0f, 5.0f)
			);
			mWalls.push_back(wall);	// 生成した壁を壁のリストに追加

			// 壁③生成
			wall = new CWall
			(
				CVector(250.0f, 0.0f, 200.0f),
				CVector(0.0f, 0.0f, 0.0f),
				CVector(5.0f, 5.0f, 5.0f)
			);
			mWalls.push_back(wall);	// 生成した壁を壁のリストに追加

			break;
		}
		// ステージ２
		case EScene::eGame2:
		{
			// 壁の生成
			CWall* wall = new CWall
			(
				CVector(0.0f, 0.0f, 0.0f),
				CVector(0.0f, 0.0f, 0.0f),
				CVector(1.0f, 1.0f, 1.0f)
			);
			mWalls.push_back(wall);	// 生成した壁を壁のリストに追加

			break;
		}
		// ステージ3
		case EScene::eGame3:
		{
			// 壁の生成
			CWall* wall = new CWall
			(
				CVector(0.0f, 0.0f, 0.0f),
				CVector(0.0f, 0.0f, 0.0f),
				CVector(1.0f, 1.0f, 1.0f)
			);
			mWalls.push_back(wall);	// 生成した壁を壁のリストに追加

			break;
		}
	}	
}

void CField::CreateFieldObjects()
{
	switch (mScene)
	{
		// ステージ１
		case EScene::eGame:
			mpCubeModel = CResourceManager::Get<CModel>("FieldCube");
			mpCylinderModel = CResourceManager::Get<CModel>("FieldCylinder");

			//new CMoveFloor
			//(
			//	mpCubeModel,
			//	CVector(0.0f, 10.0f, -50.0f), CVector(1.0f, 1.0f, 1.0f),
			//	CVector(50.0f, 0.0f, 0.0f), 10.0f
			//);
			break;

		// ステージ２
		case EScene::eGame2:

			mpDoor = CResourceManager::Get<CModel>("Map_mini_door");

			new CMoveFloor
			(
				mpDoor,
				CVector(0.0f, 0.0f, 0.0f), CVector(1.0f, 1.0f, 1.0f),
				CVector(0.0f, 0.0f, 0.0f), 0.5f
			);

			break;
		case EScene::eGame3:
			break;
	}

	//// マップ①
	//new CMoveFloor
	//(
	//	mpMap,
	//	CVector(0.0f, 1.0f, 0.0f), CVector(1.0f, 1.0f, 1.0f),
	//	CVector(0.0f, 0.0f, 0.0f), 5.0f
	//);

	//new CMoveFloor
	//(
	//	mpCubeModel,
	//	CVector(0.0f, 10.0f, -50.0f), CVector(1.0f, 1.0f, 1.0f),
	//	CVector(50.0f, 0.0f, 0.0f), 10.0f
	//);
	//new CRotateFloor
	//(
	//	mpCylinderModel,
	//	CVector(-40.0f, 15.0f, 20.0f), CVector(1.0f, 1.0f, 1.0f),
	//	1.0f
	//);

	//// 動かない床①
	//new CMoveFloor
	//(
	//	mpCubeModel,
	//	CVector(20.0f, 10.0f, 0.0f), CVector(0.5f, 1.0f, 0.25f),
	//	CVector(0.0f, 0.0f, 0.0f), 5.0f
	//);
	//// 動く床①
	//new CMoveFloor
	//(
	//	mpCubeModel,
	//	CVector(60.0f, 20.0f, 0.0f), CVector(0.25f, 1.0f, 0.25f),
	//	CVector(20.0f, 0.0f, 0.0f), 5.0f
	//);
	//// 動かない床②
	//new CMoveFloor
	//(
	//	mpCubeModel,
	//	CVector(100.0f, 20.0f, 0.0f), CVector(0.25f, 1.0f, 0.25f),
	//	CVector(0.0f, 0.0f, 0.0f), 5.0f
	//);
	//// 回転する床①
	//new CRotateFloor
	//(
	//	mpCubeModel,
	//	CVector(135.0f, 20.0f, 0.0f), CVector(1.0f, 1.0f, 0.25f),
	//	0.5f
	//);
	//// 動かない床②
	//new CMoveFloor
	//(
	//	mpCubeModel,
	//	CVector(135.0f, 20.0f, -35.0f), CVector(0.25f, 1.0f, 0.25f),
	//	CVector(0.0f, 0.0f, 0.0f), 5.0f
	//);
	//// 動かない床②
	//new CMoveFloor
	//(
	//	mpCubeModel,
	//	CVector(135.0f, 70.0f, -52.5f), CVector(0.25f, 1.0f, 0.25f),
	//	CVector(0.0f, 50.0f, 0.0f), 5.0f
	//);
	//// 動かない床③（坂道）
	//CMoveFloor* mf = new CMoveFloor
	//(
	//	mpCubeModel,
	//	CVector(0.0f, 20.0f, 200.5f), CVector(4.0f, 1.0f, 2.0f),
	//	CVector(0.0f, 0.0f, 0.0f), 5.0f
	//);
	//mf->Rotate(0.0f, 0.0f, 30.0f);

	//// 電撃エフェクト
	//CLineEffect* le = new CLineEffect(ETag::eField);
	//le->SetTexture("LightningBolt");
	//le->SetBaseUV(CRect(0.0f, 0.0f, 128.0f, 1024.0f));
	//le->SetAnimData(&mEffectAnimData);

	//CVector startPos = CVector(50.0f, 10.0f, 0.0f);
	//CVector endPos = CVector(50.0f, 10.0f, 150.0f);
	//int div = 3;
	//float width = 5.0f;
	//le->AddPoint(startPos, width, width);
	//for (int i = 0; i < div; i++)
	//{
	//	float alpha = (float)(i + 1) / div;
	//	CVector pos = CVector::Lerp(startPos, endPos, alpha);
	//	le->AddPoint(pos, width, width);
	//}
}

void CField::CreateNavNodes()
{
	CNavManager* navMgr = CNavManager::Instance();

	switch (mScene)
	{
		// ステージ１
		case EScene::eGame:
			if (navMgr != nullptr)
			{
				// 壁①の周りの経路探索ノード
				new CNavNode(CVector(30.0f, 0.0f, 35.0f));
				new CNavNode(CVector(10.0f, 0.0f, 35.0f));
				new CNavNode(CVector(10.0f, 0.0f, -35.0f));
				new CNavNode(CVector(30.0f, 0.0f, -35.0f));

				// 壁②の周りの経路探索ノード
				new CNavNode(CVector(-15.0f, 0.0f, -40.0f));
				new CNavNode(CVector(-15.0f, 0.0f, -60.0f));
				new CNavNode(CVector(-85.0f, 0.0f, -60.0f));
				new CNavNode(CVector(-85.0f, 0.0f, -40.0f));

				// 壁③の周りの経路探索ノード
				new CNavNode(CVector(285.0f, 0.0f, 190.0f));
				new CNavNode(CVector(285.0f, 0.0f, 210.0f));
				new CNavNode(CVector(215.0f, 0.0f, 210.0f));
				new CNavNode(CVector(215.0f, 0.0f, 190.0f));
			}
			break;

		// ステージ２
		case EScene::eGame2:
			if (navMgr != nullptr)
			{
				// 壁①の周りの経路探索ノード
				new CNavNode(CVector(25.0f, 0.0f, 25.0f));
				new CNavNode(CVector(70.0f, 0.0f, 25.0f));
				new CNavNode(CVector(70.0f, 0.0f, 90.0f));
				new CNavNode(CVector(25.0f, 0.0f, 90.0f));

				// 壁②の周りの経路探索ノード
				new CNavNode(CVector(85.0f, 0.0f, 15.0f));
				new CNavNode(CVector(175.0f, 0.0f, 15.0f));
				new CNavNode(CVector(175.0f, 0.0f, 80.0f));
				new CNavNode(CVector(85.0f, 0.0f, 80.0f));

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
			break;
		// ステージ２
		case EScene::eGame3:
			if (navMgr != nullptr)
			{
				// 壁①の周りの経路探索ノード
				new CNavNode(CVector(110.0f, 0.0f, 80.0f));
				new CNavNode(CVector(0.0f, 0.0f, 80.0f));
				new CNavNode(CVector(-90.0f, 0.0f, 80.0f));
				new CNavNode(CVector(-90.0f, 0.0f, 10.0f));
				new CNavNode(CVector(0.0f, 0.0f, 10.0f));
				new CNavNode(CVector(110.0f, 0.0f, 10.0f));

				new CNavNode(CVector(-180.0f, 0.0f, 0.0f));
				new CNavNode(CVector(-180.0f, 0.0f, 100.0f));

			}
			break;
	}
}

// レイとフィールドオブジェクトの衝突判定
bool CField::CollisionRay(const CVector& start, const CVector& end, CHitInfo* hit)
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
	for (CWall* wall : mWalls)
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

void CField::Update()
{
}

void CField::Render()
{
	mpModel->Render(Matrix());
}
