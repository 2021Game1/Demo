#include "CBlueMedal.h"
#include "CMedalObjectBase.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CPlayer.h"
#include "Maths.h"
#include "CSound.h"
#include "CBlueMedalEvent.h"
#include "CStageManager.h"

// 重力
#define GRAVITY 0.0625

int CBlueMedal::sScore = 0;

CBlueMedal::CBlueMedal(const CVector& pos, const CVector& scale)
	: CMedalObjectBase(ETaskPriority::eMedal)
	, mIsGround(false)
	, mMoveSpeed(0.0f, 0.0f, 0.0f)
	, mpEvent(nullptr)
{
	sScore;

	// ブルーメダルモデル取得
	mpBlueMedel = CResourceManager::Get<CModel>("BlueMedal");

	mpBlueMedalCol = new CColliderSphere
	(
		this, ELayer::eMedalCol,
		1.3f
	);
	mpBlueMedalCol->SetCollisionTags({ ETag::ePlayer,ETag::eField });
	mpBlueMedalCol->SetCollisionLayers({ ELayer::ePlayer,ELayer::eField,ELayer::eFieldWall });
	mpBlueMedalCol->Position(0.0f, 1.0f, 0.0f);

	Position(pos);
	Scale(scale);

	mpBlueMedalCol->SetEnable(true);

	SetColor(CColor(1.0f, 1.0f, 1.0f, 1.0f));
}

CBlueMedal::~CBlueMedal()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);

	SAFE_DELETE(mpBlueMedalCol);


	if (mpEvent != nullptr)
	{
		mpEvent->KilledBlueMedal(this);
	}
}

void CBlueMedal::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 衝突した自分のコライダーが攻撃判定用のコライダーであれば
	if (self == mpBlueMedalCol)
	{
		CPlayer* player = dynamic_cast<CPlayer*>(other->Owner());
		if (player)
		{
			// すでに無敵のキャラでなければ
			if (!IsAttachHitMedalObj(player))
			{
				// 無敵リストに追加
				AddAttachHitMedalObj(player);
				sScore += 50;
				Kill();
			}
		}
		else if (other->Layer() == ELayer::eField)
		{
			mIsGround = true;
			mMoveSpeed.Y(0.0f);
			Position(Position() + hit.adjust);
		}
		else if (other->Layer() == ELayer::eBlockCol)
		{
			mIsGround = true;
			mMoveSpeed.Y(0.0f);
			Position(Position() + hit.adjust);
		}
		else if (other->Layer() == ELayer::eFieldWall)
		{
			Position(Position() + hit.adjust);
		}
	}
}

void CBlueMedal::SetScore(int score)
{
	sScore = score;
}

int CBlueMedal::GetScore()
{
	return sScore;
}

// 管理されているイベントを設定
void CBlueMedal::SetEvent(CBlueMedalEvent* ev)
{
	mpEvent = ev;
}

void CBlueMedal::Update()
{
	// 重力
	mMoveSpeed -= CVector(0.0f, GRAVITY, 0.0f);

	// 回転
	float rot = 1.0f;
	Rotate(0.0f, rot, 0.0f);

	mIsGround = false;
}

// 描画
void CBlueMedal::Render()
{
	mpBlueMedel->SetColor(mColor);
	mpBlueMedel->Render(Matrix());
}