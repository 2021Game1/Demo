#include "CDisappearFloor.h"
#include "Maths.h"

// 消えるのにかかる時間
#define FADE_TIME 3.0f
// 消えた後の待ち時間
#define WAIT_TIME 3.0f

// コンストラクタ
CDisappearFloor::CDisappearFloor(const CVector& pos, const CVector& scale,
	ETag reactionTag, ELayer reactionLayer)
	: CRideableObject(ETaskPriority::eTransparent)
	, mState(EState::Idle)
	, mStateStep(0)
	, mReactionTag(reactionTag)
	, mReactionLayer(reactionLayer)
	, mFadeTime(0.0f)
	, mWaitTime(0.0f)
{
	// 消える床のモデル取得
	mpModel = CResourceManager::Get<CModel>("FieldCube");

	// 消える床のコライダー作成
	mpColliderMesh = new CColliderMesh(this, ELayer::eField, mpModel, true);
	mpColliderMesh->SetCollisionTags({ ETag::ePlayer });
	mpColliderMesh->SetCollisionLayers({ ELayer::ePlayer });

	// 生成時に設定された触れた時に反応するオブジェクトタグと
	// コライダーのレイヤーを個別に設定
	mpColliderMesh->SetCollisionTag(mReactionTag, true);
	mpColliderMesh->SetCollisionLayer(mReactionLayer, true);

	Position(pos);
	Scale(scale);

	SetColor(CColor(1.0f, 0.0f, 1.0f, 1.0f));
}

// デストラクタ
CDisappearFloor::~CDisappearFloor()
{
	SAFE_DELETE(mpColliderMesh);
}

// 衝突処理
void CDisappearFloor::Collision(CCollider* slef, CCollider* other, const CHitInfo& hit)
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
			// 現在が待機状態であれば、フェード状態へ切り替える
			if (mState == EState::Idle)
			{
				ChangeState(EState::Fade);
			}
		}
	}
}

// 状態を切り替える
void CDisappearFloor::ChangeState(EState state)
{
	mState = state;
	mStateStep = 0;
}

// 待機状態の処理
void CDisappearFloor::UpdateIdle()
{

}

// フェード中の更新処理
void CDisappearFloor::UpdateFade()
{
	// フェード時間が経っていない
	if (mFadeTime < FADE_TIME)
	{
		// 経過時間を加算
		mFadeTime += Time::DeltaTime();
	}
	// フェード時間が経過した
	else
	{
		// フェード後の待ち処理へ遷移
		ChangeState(EState::Wait);
		mFadeTime = FADE_TIME;
		mWaitTime = WAIT_TIME;

		// 完全に消えたタイミングで
		// コライダーをオフにして、乗れないようにする
		mpColliderMesh->SetEnable(false);
	}
}

// フェード後の町処理
void CDisappearFloor::UpdateWait()
{
	// ステップごとに処理を切り替え
	switch (mStateStep)
	{
		// ステップ0 フェード後の待ち時間
	case 0:
		// 待ち時間が経過していなければ、経過時間分減らす
		if (mWaitTime > 0.0f)
		{
			mWaitTime -= Time::DeltaTime();
		}
		// 待ち時間が経過したら、次のステップへ
		else
		{
			mStateStep++;
		}
		break;
		// ステップ1 消えた床をもとに戻す
	case 1:
		if (mFadeTime > 0.0f)
		{
			mFadeTime -= Time::DeltaTime();
		}
		else
		{
			// 待機状態へ戻す
			ChangeState(EState::Idle);
			mFadeTime = 0.0f;
			mWaitTime = 0.0f;

			// 元の状態に戻ったタイミングで
			// コライダーをオンにして、乗れるようにする
			mpColliderMesh->SetEnable(true);
		}
		break;
	}
}

// 更新
void CDisappearFloor::Update()
{
	// 現在の状態に合わせて処理を切り替え
	switch (mState)
	{
		// 待機状態
	case EState::Idle:
		UpdateIdle();
		break;
		// フェード中
	case EState::Fade:
		UpdateFade();
		break;
		// フェード後の待ち
	case EState::Wait:
		UpdateWait();
		break;
	}

	// フェード時間に合わせて床のα値を求める
	// α値を設定
	float alpha = 1.0f - Math::Clamp01(mFadeTime / FADE_TIME);
	SetAlpha(alpha);
}

// 描画
void CDisappearFloor::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}