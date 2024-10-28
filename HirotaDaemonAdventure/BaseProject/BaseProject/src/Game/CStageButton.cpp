#include "CStageButton.h"
#include "CCollisionManager.h"
#include "Maths.h"
#include "CInput.h"
#include "CStageMenu.h"
#include "CStageManager.h"
#include "CModel.h"
#include "CTaskManager.h"

// コンストラクタ
CStageButton::CStageButton(const CVector& pos, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: mReactionLayer(reactionLayer)
	, mReactionTag(reactionTag)
	, mpStageMenu(nullptr)
{
	// ステージ選択モデルを取得
	mpModel = CResourceManager::Get<CModel>("StageButton");

	// ステージ選択モデルコライダーを作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpModel, true);
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer });
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer });
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);
	mpColliderMesh->SetCollisionTag(mReactionTag, true);

	// ステージメニューを作成し、
	// ステージメニューのタスクを現在のステージのタスクリストに追加
	mpStageMenu = new CStageMenu();
	CStageManager::AddTask(mpStageMenu);

	//SetColor(CColor(1.0f, 0.0f, 0.0f, 1.0f));

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

// デストラクタ
CStageButton::~CStageButton()
{
	CStageManager::RemoveTask(mpStageMenu);
	SAFE_DELETE(mpColliderMesh);
}

// 衝突処理
void CStageButton::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
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
			bool paused = CTaskManager::Instance()->IsPaused();
			if (!mpStageMenu->IsOpened())
			{
				if (!paused)
				{
					if (CInput::PushKey(VK_RETURN))
					{
						mpStageMenu->Open();
					}
				}
			}
		}
	}
}

// 更新処理
void CStageButton::Update()
{
	//CDebugPrint::Print("color: %f %f %f %f\n", mColor.R(), mColor.G(), mColor.B(), mColor.A());
}

// 描画処理
void CStageButton::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}