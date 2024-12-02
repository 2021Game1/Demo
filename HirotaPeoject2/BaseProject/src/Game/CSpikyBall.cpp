#include "CSpikyBall.h"
#include "CCollisionManager.h"
#include "CCharaBase.h"
#include "CPlayer.h"
#include "CTrailEffect.h"
#include <Test/Primitive.h>
#include "CPointLine.h"

// 重力
#define GRAVITY 0.0625f

CSpikyBall::CSpikyBall(const CVector& pos, const CVector& dir,
	float speed, float distance, float initialVelocityY)
	: mMoveSpeed(speed)
	, mFlyingDistance(distance)
	, mMoveSpeedY(initialVelocityY)
	, mMoveSpeedXZ(CVector::zero)
	, mCurrentFlyingDistance(0.0f)
	, ForwardVectorZ(CVector::zero)
{
	Position(pos);
	Rotation(CQuaternion::LookRotation(dir, CVector::up));

	mpSpikyBallModel = CResourceManager::Get<CModel>("SpikyBall");

	// 軌跡のエフェクトを作成
	mpTrailEffect = new CTrailEffect
	(
		ETag::eWeapon,	// オブジェクトタグ
		this,
		nullptr,
		CVector(0.0f, 0.0f, 0.0f),
		0.01f,			// 更新間隔（時間）
		30.0f,			// 更新間隔（距離）// 変更した(30.0f)
		3.0f,			// 開始時の軌跡の幅
		0.0f,			// 終了時の軌跡の幅
		0.0625f			// 表示時間
	);
	mpTrailEffect->SetTexture("Laser");
	mpTrailEffect->SetColor(CColor(1.0f, 1.0f, 1.0f, 0.6f));

	// 攻撃判定用のコライダーを作成
	mpAttackCol = new CColliderSphere
	(
		this, ELayer::eAttackCol,
		5.0f
	);
	// 攻撃判定用のコライダーと衝突判定を行う
	// レイヤーとタグを設定
	mpAttackCol->SetCollisionLayers({ ELayer::eDamageCol });
	mpAttackCol->SetCollisionTags({ ETag::eEnemy });

	// 最初は攻撃判定用のコライダーをオフにしておく
	mpAttackCol->SetEnable(true);
}

CSpikyBall::~CSpikyBall()
{
	mpTrailEffect->SetOwner(nullptr);
	// コライダーを破棄
	SAFE_DELETE(mpAttackCol);
}

// 衝突処理
void CSpikyBall::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// 衝突した自分のコライダーが攻撃判定用コライダーであれば
	if (self == mpAttackCol)
	{
		// キャラのポインタに変換
		CCharaBase* chara = dynamic_cast<CCharaBase*>(other->Owner());
		// 相手のコライダーの持ち主がキャラであれば
		if (chara != nullptr)
		{
			// すでに攻撃済みのキャラでなければ
			if (!IsAttackHitObj(chara))
			{
				//　ダメージを与える
				chara->TakeDamage(2);

				// 攻撃済みリストに追加
				AddAttackHitObj(chara);
			}
		}
	}
}

// 攻撃開始
void CSpikyBall::AttackStart()
{
	// すでに攻撃中であれば、再度開始処理は実行しない
	if (mIsAttack) return;

	CWeapon::AttackStart();
	// 攻撃が始まったら、攻撃判定用のコライダーをオンにする
	mpAttackCol->SetEnable(true);
}

// 攻撃終了
void CSpikyBall::AttackEnd()
{
	CWeapon::AttackEnd();
	// 攻撃が終われば、攻撃判定用のコライダーをオフにする
	mpAttackCol->SetEnable(false);
}

// 武器の行列を取得
CMatrix CSpikyBall::Matrix() const
{
	const CMatrix* attachMtx = GetAttachMtx();
	// 持っていないときは、自分自身の行列を返す
	if (attachMtx == nullptr)
	{
		return CTransform::Matrix();
	}
	// 持っているときは、アタッチしている行列を返す
	else
	{
		CMatrix sm;
		sm.Scale(8.5f, 8.5f, 8.5f);

		return sm * (*attachMtx);
	}
}

// 現在のスピード設定
void CSpikyBall::SetSpeed(float newSpeed)
{
	mMoveSpeed = newSpeed;
}

// 現在の飛距離設定
void CSpikyBall::SetDistance(float newDistance)
{
	mFlyingDistance = newDistance;
}

// 現在の位置設定
void CSpikyBall::SetPosition(CVector pos)
{
	mPosition = pos;
}

// 現在の位置を返す
CVector CSpikyBall::GetPosition() const
{
	return mPosition;
}

void CSpikyBall::PlayerVectorZ(const CPlayer& player)
{
	ForwardVectorZ = player.VectorZ();
}

// 更新処理
void CSpikyBall::Update()
{
	if (IsKill()) return;
	
	CPlayer* player = CPlayer::Instance();
	bool hand = player->IsSpikyBall();

	if (hand)
	{
		// 残り飛距離が0ならば、とげ削除
		float remain = mFlyingDistance - mCurrentFlyingDistance;
		if (remain <= 0.0f)
		{
			Kill();
			return;
		}

		mMoveSpeedY -= GRAVITY;

		// 移動速度を計算
		// 移動速度が残りの飛距離より大きい場合は、
		// 残りの飛距離を移動速度とする
		float moveSpeed = mMoveSpeed * Time::DeltaTime();
		if (abs(moveSpeed) > remain)
		{
			moveSpeed = remain * (moveSpeed < 0.0f ? -1.0f : 1.0f);
		}

		// 水平方向の移動
		Position(Position() + ForwardVectorZ * moveSpeed);
		// 垂直方向の移動
		CVector moveSpeedXZ = mMoveSpeedXZ + CVector(0.0f, mMoveSpeedY, 0.0f);
		// 移動
		Position(Position() + moveSpeedXZ * 60.0f * Time::DeltaTime());


		//// 水平方向の移動
		//Position(Position() + player->VectorZ() * moveSpeed);

		//// 垂直方向の移動
		//CVector VelocityY(0.0f, mMoveSpeedY, 0.0f);
		//// 水平方向の移動
		//CVector moveSpeedXZ = mMoveSpeedXZ * Time::DeltaTime();

		//// 移動
		//Position(Position() + CVector(moveSpeedXZ.X(), VelocityY.Y(), moveSpeedXZ.Z()));

		printf("mPosition:%f %f %f\n", mPosition.X(), mPosition.Y(), mPosition.Z());

		// 現在の飛距離を更新
		mCurrentFlyingDistance += abs(moveSpeed);
	}
	else
	{

	}
	//CDebugPrint::Print("mPosition:%f %f %f\n", mPosition.X(), mPosition.Y(), mPosition.Z());
	/*CDebugPrint::Print("distance:%f\n", mFlyingDistance);
	CDebugPrint::Print("speed:%f\n", mMoveSpeed);*/
	//float speed = player->GetSpikyBallSpeed();
	//CDebugPrint::Print("speed%f\n", speed);
	//CDebugPrint::Print("mMoveSpeed:%f\n", mMoveSpeed);
}

// 予測線のパスを設定
void CSpikyBall::DrawProjectilePath(const CVector& startPosition, const CVector& initialVelocityXZ, float initialVelocityY, float gravity, float timeStep, int numPoints, const CColor& color, float lineWidth)
{
	// 弾の初期値点
	CVector currentPosition = startPosition;
	// XZ平面での現在の速度
	CVector velocityXZ = initialVelocityXZ;
	// 垂直方向での現在の速度
	float velocityY = initialVelocityY;

	std::vector<CVector> pathPoints;

	float t = 0.0f;

	for (int i = 0; i < numPoints; ++i) 
	{
		// 現在の位置をリストに追加
		pathPoints.push_back(currentPosition);

		// 時間を進める
		t += timeStep;

		// 水平方向の位置の更新
		CVector displacementXZ = velocityXZ * timeStep;
		currentPosition += displacementXZ;

		// Y座標の更新
		float currentY = startPosition.Y() + velocityY * t - 0.5f * gravity * t * t;
		currentPosition = CVector(currentPosition.X(), currentY, currentPosition.Z());

		// 垂直方向の速度を更新
		velocityY -= gravity * timeStep;
	}

	// 線を描画
	for (size_t i = 0; i < pathPoints.size() - 1; ++i) {
		Primitive::DrawLine(pathPoints[i], pathPoints[i + 1], color, lineWidth);
	}
}

// 弾道の予測ラインを描画する関数
void CSpikyBall::RenderPredictionLine()
{
	CPlayer* player = CPlayer::Instance();
	// 位置が違うので後で変更
	CVector startPosition = player->Position() + CVector(0.0f, 18.0f, 0.0f) + player->VectorZ() * 5.0f;

	// プレイヤーから速度を取得
	float speed = player->GetSpikyBallSpeed();

	// プレイヤーの前方向ベクトルを取得して正規化
	CVector forwardDirection = player->VectorZ();
	if (forwardDirection.Length() != 0.0f) 
	{
		forwardDirection.Normalize();
	}

	// 初速度をプレイヤーの前方向ベクトルに基づいて設定
	// 適宜変更
	CVector initialVelocityXZ = forwardDirection * speed * 0.032f;
	//printf("velocityXZ:%f %f %f\n", initialVelocityXZ.X(), initialVelocityXZ.Y(), initialVelocityXZ.Z());

	// 垂直方向の初速度
	float initialVelocityY = mMoveSpeedY;
	// 重力
	float gravity = GRAVITY;

	// パスの色
	CColor lineColor(1.0f, 0.0f, 0.0f, 0.5f);
	// ラインの太さ
	float lineWidth = 6.0f;

	// パスを描画
	float stepInterval = 8.0f;
	int numSteps = 15;
	DrawProjectilePath(startPosition, initialVelocityXZ, initialVelocityY, gravity, stepInterval, numSteps, lineColor, lineWidth);
}

// 描画処理
void CSpikyBall::Render()
{
	CPlayer* player = CPlayer::Instance();
	// とげが出現しているか
	bool spik = player->IsSpikyBallAppearance();
	// とげボールの予測線を描画するかどうかを判断
	if (spik) 
	{
		RenderPredictionLine();
	}

	// とげボールの描画
	mpSpikyBallModel->SetColor(mColor);
	mpSpikyBallModel->Render(Matrix());

	// とげボールのスフィア描画
	Primitive::DrawSphere(Matrix(), 0.5f, mColor);
}