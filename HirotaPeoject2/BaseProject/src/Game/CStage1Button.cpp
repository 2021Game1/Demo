#include "CStage1Button.h"
#include "CCollisionManager.h"
#include "Maths.h"
#include "Easing.h"
#include "CInput.h"
#include "CModel.h"
#include "CTaskManager.h"
#include "CStageManager.h"
#include "COperationUI.h"

// ステージ1選択ボタンのインスタンス
CStage1Button* CStage1Button::spInstance = nullptr;

CStage1Button* CStage1Button::Instance()
{
	return spInstance;
}

// コンストラクタ
CStage1Button::CStage1Button(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eButton, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mReactionLayer(reactionLayer)
	, mReactionTag(reactionTag)
	, mIsStage1Button(false)
	, mIsPlayerCollision(false)
	, mElapsedTime(0.0f)
{
	// インスタンスの設定
	spInstance = this;

	// ENTERキーの画像表示
	mpEnter = new COperationUI("EnterUI");
	mpEnter->SetShow(false);

	// ステージ選択モデルを取得
	mpStage1ButtonModel = CResourceManager::Get<CModel>("StageButton");

	// ステージ選択モデルコライダーを作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpStage1ButtonModel, true);
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer });
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer });
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);
	mpColliderMesh->SetCollisionTag(mReactionTag, true);

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

// デストラクタ
CStage1Button::~CStage1Button()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderMesh);
	mpEnter->Kill();
}

// 衝突処理
void CStage1Button::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
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
				mIsStage1Button = true;
			}
			mIsPlayerCollision = true;
		}
	}
}

// ステージを選択したことを伝える
bool CStage1Button::IsStage1Button()
{
	return mIsStage1Button;
}

// 更新処理
void CStage1Button::Update()
{
	if (mIsStage1Button)
	{
		mElapsedTime += Time::DeltaTime();
		if (mElapsedTime > 0.8f)
		{
			mElapsedTime = 0.0f;
			mIsStage1Button = false;
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

// 描画処理
void CStage1Button::Render()
{
	mpStage1ButtonModel->SetColor(mColor);
	mpStage1ButtonModel->Render(Matrix());
}