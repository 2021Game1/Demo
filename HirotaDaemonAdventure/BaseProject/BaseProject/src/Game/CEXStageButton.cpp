#include "CEXStageButton.h"
#include "CCollisionManager.h"
#include "Maths.h"
#include "Easing.h"
#include "CInput.h"
#include "CModel.h"
#include "CTaskManager.h"
#include "CStageManager.h"
#include "COperationUI.h"

// EXステージ選択ボタンのインスタンス
CEXStageButton* CEXStageButton::spInstance = nullptr;

CEXStageButton* CEXStageButton::Instance()
{
	return spInstance;
}

CEXStageButton::CEXStageButton(const CVector& pos, const CVector& scale, const CVector& rot, ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eButton, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mReactionLayer(reactionLayer)
	, mReactionTag(reactionTag)
	, mIsEXStageButton(false)
	, mIsPlayerCollision(false)
	, mElapsedTime(0.0f)
{
	// インスタンスの設定
	spInstance = this;

	// ENTERキーの画像表示
	mpEnter = new COperationUI("EnterUI");
	mpEnter->SetShow(false);

	// ステージ選択モデルを取得
	mpEXStageButtonModel = CResourceManager::Get<CModel>("StageButton");

	// ステージ選択モデルコライダーを作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpEXStageButtonModel, true);
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer });
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer });
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);
	mpColliderMesh->SetCollisionTag(mReactionTag, true);

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

CEXStageButton::~CEXStageButton()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderMesh);
	mpEnter->Kill();
}

void CEXStageButton::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	// 衝突しているのが、反応するオブジェクトであれば
	if (owner->Tag() == mReactionTag && other->Layer() == mReactionLayer)
	{
		// 反転した押し戻しベクトルと上方向のベクトルの内積(角度)を求める
		float dot = CVector::Dot(-hit.adjust.Normalized(), CVector::up);
		// 上に乗ったと判断するためのcos関数に渡した角度を求める
		float cosAngle = cosf(Math::DegreeToRadian(10.0f));
		// 求めた角度が指定した角度の範囲内であれば、
		if (dot >= cosAngle)
		{
			if (CInput::PushKey(VK_RETURN))
			{
				mIsEXStageButton = true;
			}
			mIsPlayerCollision = true;
		}
	}
}

bool CEXStageButton::IsEXStageButton()
{
	return mIsEXStageButton;
}

void CEXStageButton::Update()
{
	if (mIsEXStageButton)
	{
		mElapsedTime += Time::DeltaTime();
		if (mElapsedTime > 0.8f)
		{
			mElapsedTime = 0.0f;
			mIsEXStageButton = false;
		}
	}

	if (mIsPlayerCollision)
	{
		mpEnter->SetShow(true);
	}
	else
	{
		mpEnter->SetShow(false);
	}

	// Uキーテキスト画像を表示
	CVector UkeyPos = Position() + CVector(0.0f, 35.0f, 0.0f);
	mpEnter->SetWorldPos(UkeyPos);

	mIsPlayerCollision = false;
}

void CEXStageButton::Render()
{
	mpEXStageButtonModel->SetColor(mColor);
	mpEXStageButtonModel->Render(Matrix());
}