#include "CInvincibleBuffs.h"
#include "CPlayer.h"
#include "CGameManager.h"

// コンストラクタ
CInvincibleBuffs::CInvincibleBuffs(CObjectBase* owner, const CVector& pos, const CVector& dir,
	float speed, float dist)
	: CObjectBase(ETag::eEffect, ETaskPriority::eEffect, 0, ETaskPauseType::eGame)
	, mpOwner(owner)
	, mKillMoveDist(dist)
	, mMovedDist(0.0f)
{
	Position(pos);
	mMoveSpeed = dir.Normalized() * speed;
	Rotation(CQuaternion::LookRotation(mMoveSpeed, CVector::up));

	mpModel = CResourceManager::Get<CModel>("CharEffect");
	mpModel->SetupEffectSettings();
}

// デストラクタ
CInvincibleBuffs::~CInvincibleBuffs()
{

}

// 更新処理
void CInvincibleBuffs::Update()
{
	// 回転
	float rot = 10.0f;
	Rotate(0.0f, rot, 0.0f);

	// 移動速度を計算
	CVector move = mMoveSpeed * Time::DeltaTime();
	// moveのベクトルの長さを格納
	float dist = move.Length();
	// mMoveDistが、mKillMoveDist以上になったかどうか
	if (mMovedDist + dist >= mKillMoveDist)
	{
		// オブジェクトが最大距離に達するまでの残りの距離を計算
		dist = mKillMoveDist - mMovedDist;
		// 移動ベクトルをその残り距離に基づいて調整
		move = move.Normalized() * dist;
	}
	// オブジェクトの位置を更新して、正確にその残り距離だけ移動
	Position(Position() + move);

	// 現在のフレームで移動した距離distを累積移動距離mMovedDistに加算
	mMovedDist += dist;
	// 累積移動距離がmKillMoveDist以上になったかどうか
	if (mMovedDist >= mKillMoveDist)
	{
		// 削除
		Kill();
	}

	CPlayer* player = CPlayer::Instance();
	bool clear = player->IsStageClear();

	if (CGameManager::StageNo() == 0)
	{
		SetAlpha(0.0f);
	}

	if (clear)
	{
		Kill();
		SetAlpha(0.0f);
	}
}

// 描画処理
void CInvincibleBuffs::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}