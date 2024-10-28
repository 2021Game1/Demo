#include "CNumberFloor1.h"
#include "CColliderMesh.h"
#include "CStageManager.h"

// コンストラクタ
CNumberFloor1::CNumberFloor1(const CVector& pos, const CVector& scale, const CVector& rot,
	std::string modelPath)
	: CNumberFloorBase(pos, scale, rot)
	, mStateStep(0)
{
	// 床のモデル取得
	mpModel = CResourceManager::Get<CModel>(modelPath);

	// 床のコライダー作成
	mpCollider = new CColliderMesh(this, ELayer::eField, mpModel, true);
	mpCollider->SetCollisionTags({ ETag::ePlayer });
	mpCollider->SetCollisionLayers({ ELayer::ePlayer });

	SetModelPath("Number1");

	Position(pos);
	Scale(scale);
	Rotate(rot);

	mStartPos = Position();
}

// デストラクタ
CNumberFloor1::~CNumberFloor1()
{
	CStageManager::RemoveTask(this);
}

// 待ち状態の処理
void CNumberFloor1::UpdateWaiting()
{
	if (mIsCollision)
	{
		SetColor(CColor(0.5f, 0.1f, 0.1f, 1.0f));
	}

	switch (mStateStep)
	{
		// ステップ0 オブジェクト表示の変更
	case 0:
	{
		if (!mIsCollision)
		{
			mStateStep++;
		}
		break;
	}
	case 1:
	{
		mpModel = CResourceManager::Get<CModel>("Number0");
		mStateStep = 0;
		ChangeState(EState::Falling);
		break;
	}
	break;
	}
}

void CNumberFloor1::Update()
{
	CNumberFloorBase::Update();
}