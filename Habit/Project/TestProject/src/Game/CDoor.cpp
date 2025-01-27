#include "CDoor.h"
#include "CPushSwitchManager.h"

// コンストラクタ
CDoor::CDoor(const CVector& pos, const CVector& angle, const CVector& size)
	//: mpOwner(nullptr)
{
	// 扉のモデルデータ取得(今は壁を設定している)
	mpModel = CResourceManager::Get<CModel>("Wall");

	// 扉のコライダーを取得(今は壁のコライダーを設定している)
	CModel* colModel = CResourceManager::Get<CModel>("WallCol");
	mpColliderMesh = new CColliderMesh(this, ELayer::eWall, colModel, true);

	// 位置と向きとサイズを設定
	Position(pos);
	Rotation(angle);
	Scale(size);
}

// デストラクタ
CDoor::~CDoor()
{
	// コライダーを削除
	SAFE_DELETE(mpColliderMesh);
}

// 接続するスイッチを設定する
void CDoor::SetSwitch(size_t index)
{
	//mpOwner = CPushSwitchManager::Instance()->GetPushSwitch(index);
}

// 更新処理
void CDoor::Update()
{
	//if(mpOwner->)
}

// 描画処理
void CDoor::Render()
{
	mpModel->Render(Matrix());
}
