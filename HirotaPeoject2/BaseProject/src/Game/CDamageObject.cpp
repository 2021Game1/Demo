#include "CDamageObject.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "Maths.h"

// コンストラクタ
CDamageObject::CDamageObject(const CVector& pos, const CVector& scale, const CVector& move, float moveTime)
	: mDefaultPos(pos)
	, mMoveVec(move)
	, mMoveTime(moveTime)
	, mElapsedTime(0.0f)
{
	// ダメージを与えるオブジェモデル取得
	mpModel = CResourceManager::Get<CModel>("FieldCube");
	// ダメージを与えるオブジェモデルコライダー作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eDamageObject, mpModel, true);
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer });

	Position(mDefaultPos);
	Scale(scale);
}

// デストラクタ
CDamageObject::~CDamageObject()
{
	SAFE_DELETE(mpColliderMesh);
}

// 更新処理
void CDamageObject::Update()
{
	/*float per = mElapsedTime / mMoveTime;
	Position(mDefaultPos + mMoveVec * sinf(M_PI * 2.0f * per));

	mElapsedTime += 1.0f / 60.0f;
	if (mElapsedTime >= mMoveTime)
	{
		mElapsedTime -= mMoveTime;
	}*/
}

// 描画処理
void CDamageObject::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}