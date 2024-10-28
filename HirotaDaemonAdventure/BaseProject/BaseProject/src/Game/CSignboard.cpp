#include "CSignboard.h"
#include "CGamePause.h"
#include "CTaskManager.h"
#include "CPlayer.h"
#include "CInput.h"
#include "CSignboardPause.h"
#include "Maths.h"
#include "CSignboardUI.h"
#include "CModel.h"

// プレイヤーのインスタンス
CSignboard* CSignboard::spInstance = nullptr;

// インスタンスのポインタの取得
CSignboard* CSignboard::Instance()
{
	return spInstance;
}

#define _USE_MATH_DEFINES

// 視野の角度(ー角度+角度も出)
#define FOV_ANGLE 100.0f
// プレイヤーまでの距離
#define ATTACK_RANGE 70.0f


// コンストラクタ
CSignboard::CSignboard(const CVector& position, const CVector& scale, const CVector& rot,
	ETag reactionTag, ELayer reactionLayer)
	: mReactionLayer(reactionLayer)
	, mReactionTag(reactionTag)
	, mState(EState::Idle)
	, mIsPaused(false)
{
	// 看板モデル取得
	mpModel = CResourceManager::Get<CModel>("Signboard");

	// Uキーのテキスト画像取得
	mpUkye = new CSignboardUI();
	mpUkye->SetCenterRatio(CVector2(0.5f, 0.0f));

	// インスタンスの設定
	spInstance = this;

	// 看板モデルコライダーを作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpModel, true);
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer,ELayer::eEnemy });
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer,ETag::eEnemy });
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);
	mpColliderMesh->SetCollisionTag(mReactionTag, true);

	Position(position);
	Scale(scale);
	Rotate(rot);
}

// デストラクタ
CSignboard::~CSignboard()
{
	SAFE_DELETE(mpColliderMesh);

	mpUkye->Kill();
}

// 衝突処理
void CSignboard::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	CObjectBase* owner = other->Owner();
	if (owner == nullptr) return;

	CPlayer* player = CPlayer::Instance();

	// 衝突しているのが、反応するオブジェクトであれば
	if (owner->Tag() == mReactionTag && other->Layer() == mReactionLayer)
	{
		
	}
}

//プレイヤーを見つけたか
bool CSignboard::IsFoundPlayer() const
{
	CVector playerPos = CPlayer::Instance()->Position();
	CVector object = Position();

	// プレイヤーとの距離を計算する
	float distance = (playerPos - object).Length();
	const float detectionRadius = 20.0f;

	// プレイヤーとの距離が検出半径以内であれば、プレイヤーを認識する
	if (distance <= detectionRadius)
	{
		return true;
	}

	return false;
}

// 更新処理
void CSignboard::Update()
{
	// Uキーテキスト画像を表示
	CVector UkeyPos = Position() + CVector(0.0f, 20.0f, 0.0f);
	mpUkye->SetWorldPos(UkeyPos);
}

//　描画処理
void CSignboard::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}