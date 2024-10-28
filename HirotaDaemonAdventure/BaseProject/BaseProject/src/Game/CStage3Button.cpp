#include "CStage3Button.h"
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
CStage3Button* CStage3Button::spInstance = nullptr;

CStage3Button* CStage3Button::Instance()
{
	return spInstance;
}

// コンストラクタ
CStage3Button::CStage3Button(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eButton, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mReactionLayer(reactionLayer)
	, mReactionTag(reactionTag)
	, mIsStage3Button(false)
	, mIsPlayerCollision(false)
	, mElapsedTime(0.0f)
{
	// インスタンスの設定
	spInstance = this;

	// ENTERキーの画像表示
	mpEnter = new COperationUI("EnterUI");
	mpEnter->SetShow(false);

	// ステージ選択モデルを取得
	mpStage3ButtonModel = CResourceManager::Get<CModel>("StageButton");

	// ステージ選択モデルコライダーを作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpStage3ButtonModel, true);
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
CStage3Button::~CStage3Button()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderMesh);
}

// 衝突処理
void CStage3Button::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	CPlayer* player = CPlayer::Instance();
	bool stage3Start = player->IsStartStage3();

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
				if (stage3Start)
				{
					mIsStage3Button = true;
				}
			}
			mIsPlayerCollision = true;
		}
	}
}

// ステージを選択したことを伝える
bool CStage3Button::IsStage3Button()
{
	return mIsStage3Button;
}

// 更新処理
void CStage3Button::Update()
{
	if (mIsStage3Button)
	{
		mElapsedTime += Time::DeltaTime();
		if (mElapsedTime > 0.8f)
		{
			mElapsedTime = 0.0f;
			mIsStage3Button = false;
		}
	}

	CPlayer* player = CPlayer::Instance();
	bool stage3Start = player->IsStartStage3();
	if (!stage3Start)
	{
		SetColor(CColor(1.0f, 0.0f, 0.0f, 1.0f));
	}
	else
	{
		SetColor(CColor(1.0f, 1.0f, 1.0f, 1.0f));
	}

	if (mIsPlayerCollision && stage3Start)
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
void CStage3Button::Render()
{
	mpStage3ButtonModel->SetColor(mColor);
	mpStage3ButtonModel->Render(Matrix());
}