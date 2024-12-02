#include "CBiribiri.h"
#include "Maths.h"
#include "Easing.h"
#include "CStageManager.h"

#define SCALE_Y 3.0f

// コンストラクタ
CBiribiri::CBiribiri(CObjectBase* owner, const CVector& pos)
	: CObjectBase(ETag::eBiribiri, ETaskPriority::eEffect, 0, ETaskPauseType::eGame)
	, mpOwner(owner)
	, mMovedDist(0.0f)
	, mInitialRingSize(1.0f) // 初期サイズ
	, mCurrentRingSize(1.0f) // 現在のサイズ
	, mMaxRingSize(100.0f)    // 最大サイズを設定
	, mElapsedTime(0.0f)
{
	Position(pos);

	mpModel = CResourceManager::Get<CModel>("Biribiri");
	mpModel->SetupEffectSettings();

	CModel* col = CResourceManager::Get<CModel>("BiribiriCol");
	mpMesh = new CColliderMesh(this, ELayer::eBiribiri, col, true);
	mpMesh->SetCollisionLayers({ ELayer::eDamageCol });
	mpMesh->SetCollisionTags({ ETag::ePlayer });
}

// デストラクタ
CBiribiri::~CBiribiri()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpMesh);
}

// 更新
void CBiribiri::Update()
{
	// リングのサイズを速く増加させるための係数
	const float growthFactor = 70.0f;

    // リングのサイズが最大サイズを超えた場合は消滅させる
    if (mCurrentRingSize >= mMaxRingSize)
    {
        Kill();
        return;
    }

	/*if (mElapsedTime < 5.0f)
	{
		float per = Easing::BounceInOut
		(
			mElapsedTime,
			5.0f,
			0.0f,
			1.0f
		);
	}*/

	// リングのスケールを適用する
	CVector scaleVector(mCurrentRingSize, 100.0f, mCurrentRingSize);
	Scale(scaleVector);

	// 現在のリングサイズを更新
	mCurrentRingSize += Time::DeltaTime() * growthFactor;
}

// 描画
void CBiribiri::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}