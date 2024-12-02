#include "CStage4Button.h"
#include "CCollisionManager.h"
#include "Maths.h"
#include "Easing.h"
#include "CInput.h"
#include "CModel.h"
#include "CTaskManager.h"
#include "CStageManager.h"
#include "CPlayer.h"
#include "COperationUI.h"
#include "CStageManager.h"

// ステージ1選択ボタンのインスタンス
CStage4Button* CStage4Button::spInstance = nullptr;

CStage4Button* CStage4Button::Instance()
{
	return spInstance;
}

// コンストラクタ
CStage4Button::CStage4Button(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eButton, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mReactionLayer(reactionLayer)
	, mReactionTag(reactionTag)
	, mIsStage4Button(false)
	, mIsPlayerCollision(false)
	, mElapsedTime(0.0f)
{
	// インスタンスの設定
	spInstance = this;

	// ENTERキーの画像表示
	mpEnter = new COperationUI("EnterUI");
	mpEnter->SetShow(false);

	// ステージ選択モデルを取得
	mpStage4ButtonModel = CResourceManager::Get<CModel>("StageButton");

	// ステージ選択モデルコライダーを作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpStage4ButtonModel, true);
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer });
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer });
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);
	mpColliderMesh->SetCollisionTag(mReactionTag, true);

	SetColor(CColor(1.0f, 1.0f, 1.0f, 1.0f));

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

// デストラクタ
CStage4Button::~CStage4Button()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderMesh);
}

// 衝突処理
void CStage4Button::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	CPlayer* player = CPlayer::Instance();
	bool stage4Start = player->IsStartStage4();

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
				if (stage4Start)
				{
					mIsStage4Button = true;
				}
			}
			mIsPlayerCollision = true;
		}
	}
}

// ステージを選択したことを伝える
bool CStage4Button::IsStage4Button()
{
	return mIsStage4Button;
}

// 更新処理
void CStage4Button::Update()
{
	if (mIsStage4Button)
	{
		mElapsedTime += Time::DeltaTime();
		if (mElapsedTime > 0.8f)
		{
			mElapsedTime = 0.0f;
			mIsStage4Button = false;
		}
	}

	CPlayer* player = CPlayer::Instance();
	bool stage4Start = player->IsStartStage4();
	if (!stage4Start)
	{
		SetColor(CColor(1.0f, 0.0f, 0.0f, 1.0f));
	}
	else
	{
		SetColor(CColor(1.0f, 1.0f, 1.0f, 1.0f));
	}

	if (mIsPlayerCollision && stage4Start)
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
void CStage4Button::Render()
{
	mpStage4ButtonModel->SetColor(mColor);
	mpStage4ButtonModel->Render(Matrix());
}