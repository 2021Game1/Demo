#include "CStage2Button.h"
#include "CCollisionManager.h"
#include "Maths.h"
#include "CInput.h"
#include "CModel.h"
#include "CTaskManager.h"
#include "CStageManager.h"
#include "CPlayer.h"
#include "COperationUI.h"
#include "CStageManager.h"

// ステージ1選択ボタンのインスタンス
CStage2Button* CStage2Button::spInstance = nullptr;

CStage2Button* CStage2Button::Instance()
{
	return spInstance;
}

// コンストラクタ
CStage2Button::CStage2Button(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: CObjectBase(ETag::eButton, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
	, mReactionLayer(reactionLayer)
	, mReactionTag(reactionTag)
	, mIsStage2Button(false)
	, mIsPlayerCollision(false)
	, mElapsedTime(0.0f)
{
	// インスタンスの設定
	spInstance = this;

	// ENTERキーの画像表示
	mpEnter = new COperationUI("EnterUI");
	mpEnter->SetShow(false);

	// ステージ選択モデルを取得
	mpStage2ButtonModel = CResourceManager::Get<CModel>("StageButton");

	// ステージ選択モデルコライダーを作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpStage2ButtonModel, true);
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer });
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer });
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);
	mpColliderMesh->SetCollisionTag(mReactionTag, true);

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

// デストラクタ
CStage2Button::~CStage2Button()
{
	CStageManager::RemoveTask(this);
	SAFE_DELETE(mpColliderMesh);
}

// 衝突処理
void CStage2Button::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
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
					mIsStage2Button = true;
				}
			}
			mIsPlayerCollision = true;
		}
	}
}

// ステージを選択したことを伝える
bool CStage2Button::IsStage2Button()
{
	return mIsStage2Button;
}

// 更新処理
void CStage2Button::Update()
{
	//CDebugPrint::Print("mStage1:%s\n", mIsStage1Button ? "true" : "false");

	if (mIsStage2Button)
	{
		mElapsedTime += Time::DeltaTime();
		if (mElapsedTime > 0.8f)
		{
			mElapsedTime = 0.0f;
			mIsStage2Button = false;
		}
	}

	CPlayer* player = CPlayer::Instance();
	bool stage2Start = player->IsStartStage2();
	if (!stage2Start)
	{
		SetColor(CColor(1.0f, 0.0f, 0.0f, 1.0f));
	}
	else
	{
		SetColor(CColor(1.0f, 1.0f, 1.0f, 1.0f));
	}

	if (mIsPlayerCollision && stage2Start)
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
void CStage2Button::Render()
{
	mpStage2ButtonModel->SetColor(mColor);
	mpStage2ButtonModel->Render(Matrix());
}