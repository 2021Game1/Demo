#include "CSmoke.h"
#include "Easing.h"

// 煙のスケール値の最大値
#define SMOKE_SCALE 3.0f
// 煙のスケール値が最大値になるまでの時間
#define SMOKE_SCALE_ANIM_TIME 2.0f

// アニメーションの1コマ表示時間
#define ANIM_TIME 0.0625f
// 煙のエフェクトのアニメーションデータ
//TexAnimData CSmoke::msAnimData = TexAnimData(8, 8, false, 64, ANIM_TIME);
TexAnimData CSmoke::msAnimData = TexAnimData(2, 8, false, 16, ANIM_TIME);

// コンストラクタ
CSmoke::CSmoke(ETag tag,ETaskPriority prio)
	: CBillBoardImage("Effect/Smoke(2_8_GIMP).png", tag, ETaskPauseType::eGame)
	, mMoveSpeed(CVector::zero)
	, mElapsedTime(0.0f)
	, mIsDeath(false)
{
	SetAnimData(&msAnimData);
	SetColor(CColor(1.0f, 1.0f, 1.0f, 0.5f));
	SetPriority(ETaskPriority::eSmokeEffecit);
}

// デストラクタ
CSmoke::~CSmoke()
{

}

//// 各パラメータを設定
//void CSmoke::Setup(const CVector& pos, const CVector& dir, float speed)
//{
//	Position(pos);
//	mMoveSpeed = dir.Normalized() * speed;
//}

// 削除フラグが立っているかどうか
bool CSmoke::IsDeath() const
{
	return mIsDeath;
}

// カラーを設定
void CSmoke::SetColor(const CColor& color)
{
	mMaterial.Diffuse()[0] = color.R();
	mMaterial.Diffuse()[1] = color.G();
	mMaterial.Diffuse()[2] = color.B();
	mMaterial.Diffuse()[3] = color.A();
	CObjectBase::SetColor(color);
}

// ブレンドタイプを設定
void CSmoke::SetBlendType(EBlend type)
{
	mMaterial.SetBlendType(type);
}

//// 衝突処理
//void CSmoke::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
//{
//	if (other->Layer() == ELayer::eField)
//	{
//		/*float length = mMoveSpeed.Length();
//		CVector n = hit.adjust.Normalized();
//		float d = CVector::Dot(n, mMoveSpeed);
//		mMoveSpeed = (mMoveSpeed - n * d).Normalized() * length;
//		Position(Position() + hit.adjust * hit.weight);*/
//
//		// 煙が地面に当たったとき、速度をゼロにする
//		mMoveSpeed = CVector::zero;
//
//		// 衝突
//		Position(Position() + hit.adjust * hit.weight);
//	}
//}

// 更新
void CSmoke::Update()
{
	// 基底クラスの更新処理
	CBillBoardImage::Update();

	// 煙のエフェクトを移動
	/*CVector move = mMoveSpeed * Time::DeltaTime();
	Position(Position() + move);*/


	// スケール変更時間を経過していない
	if (mElapsedTime < SMOKE_SCALE_ANIM_TIME)
	{
		// 経過時間に合わせて、徐々に炎を大きくする
		float per = mElapsedTime / SMOKE_SCALE_ANIM_TIME;
		if (per < 1.0f)
		{
			float scale = Easing::QuadOut(per, 0.7f, 0.0f, 0.7f);
			Scale(CVector::one * scale * SMOKE_SCALE);
		}
		else
		{
			Scale(CVector::one * SMOKE_SCALE);
		}

		mElapsedTime += Time::DeltaTime();
	}
	// 移動時間が経過したら、削除する
	else
	{
		Scale(CVector::one * SMOKE_SCALE);
	}

	// アニメーションが終わったら、削除フラグを立てる
	if (IsEndAnim())
	{
		mIsDeath = true;
	}
}