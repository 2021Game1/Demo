#include "CPlayer2.h"
#include "CInput.h"
#include "CNavNode.h"
#include "CNavManager.h"
#include "CColliderSphere.h"
#include "CInteractObject.h"
#include "Maths.h"
#include "CGaugeUI.h"
#include "CHpGauge.h"
#include "CStGauge.h"
#include "CSceneManager.h"

#include "CDebugFieldOfView.h"

// プレイヤーのインスタンス
CPlayer2* CPlayer2::spInstatnce = nullptr;

// プレイヤーのアニメーションデータのテーブル
const CPlayer2::AnimData CPlayer2::ANIM_DATA[] =
{
	{ "",											true,	  0.0f	},	// Tポーズ
	{ "Character\\Player2\\anim\\pico_idle.x",		true,	181.0f	},	// 待機
	{ "Character\\Player2\\anim\\pico_walk_s.x",	true,	 60.0f	},	// 歩行
	{ "Character\\Player2\\anim\\pico_running.x",	true,	 44.0f	},	// 走行
	{ "Character\\Player2\\anim\\pico_jump_start.x",false,	 25.0f	},	// ジャンプ開始
	{ "Character\\Player2\\anim\\pico_jumping.x",	false,	  1.0f	},	// ジャンプ中
	{ "Character\\Player2\\anim\\pico_jump_end.x",	false,	 26.0f	},	// ジャン終了プ
	{ "Character\\Player2\\anim\\pico_fall.x",		false,	 77.0f	},	// 転倒
	{ "Character\\Player2\\anim\\pico_death.x",		false,	109.0f	},	// 死亡

	{ "Character\\Player2\\anim\\pico_crawl.x",		true,	 55.0f	},	// 這う
	{ "Character\\Player2\\anim\\pico_sneak.x",		true,	 51.0f	},	// しゃがみ移動
	{ "Character\\Player2\\anim\\pico_crouch_and_pick_up.x",		true,	180.0f	},	// しゃがんで拾う
	
};

#define PLAYER_HEIGHT_CCOL1	12.0f		// カプセルコライダーの上の高さ
#define PLAYER_HEIGHT_CCOL2	 2.0f		// カプセルコライダーの下の高さ
#define PLAYER_WIDTH_CCOL	 2.5f		// カプセルコライダーの幅

#define MOVE_SPEED		  0.375f * 2.0f	// 歩く速度
#define RUN_SPEED		  1.0f			// 走る速度

#define JUNP_MOVE_DIST	 20.0f			// ジャンプ時の移動距離
#define JUNP_MOVE_START  16.0f			// ジャンプ時の移動開始フレーム
#define JUNP_MOVE_END	 33.0f			// ジャンプ時の移動終了フレーム
#define JUMP_SPEED		  1.0f			// ジャンプの高さ
#define GRAVITY			  0.0625f		// 重力

#define SEARCH_RADIUS	 10.0f			// 調べるオブジェクトを探知する範囲の半径
#define FOV_ANGLE		 60.0f			// 視野範囲の角度
#define FOV_LENGTH		 10.0f			// 視野範囲の距離

// コンストラクタ
CPlayer2::CPlayer2()
	: CXCharacter(ETag::ePlayer, ETaskPriority::ePlayer)
	, mState(EState::eIdle)
	, mStateStep(0)
	, mMoveSpeedY(0.0f)
	, mIsGrounded(false)
	, mpRideObject(nullptr)
	, mMaxSt(100)
	, mSt(mMaxSt)
	, mpSearchCol(nullptr)
	, mFovAngle(FOV_ANGLE)
	, mpDebugFov(nullptr)
{
	mMaxHp = 100;
	mHp = mMaxHp;

	// インスタンスの設定
	spInstatnce = this;

	// モデルデータの取得
	CModelX* model = CResourceManager::Get<CModelX>("Player2");

	// テーブル内のアニメーションデータを読み込み
	int size = ARRAY_SIZE(ANIM_DATA);
	for (int i = 0; i < size; i++)
	{
		const AnimData& data = ANIM_DATA[i];
		if (data.path.empty()) continue;
		model->AddAnimationSet(data.path.c_str());
	}
	// CXCharacterの初期化
	Init(model);

	// 最初は待機アニメーションを再生
	ChangeAnimation(EAnimType::eIdle);

	// カプセルコライダ―生成
	mpColliderCapsule = new CColliderCapsule
	(
		this, ELayer::ePlayer,
		CVector(0.0f, PLAYER_HEIGHT_CCOL2, 0.0f),
		CVector(0.0f, PLAYER_HEIGHT_CCOL1, 0.0f),
		PLAYER_WIDTH_CCOL
	);
	mpColliderCapsule->SetCollisionLayers
	(
		{ ELayer::eField,
		  ELayer::eWall,
		  ELayer::eEnemy,
		  ELayer::eInteractObj,
		  ELayer::eAttackCol}
	);

	// 視野範囲のデバッグ表示クラスを作成
	mpDebugFov = new CDebugFieldOfView(this, mFovAngle, FOV_LENGTH);

	// 経路探索用のノードを作成
	mpNavNode = new CNavNode(Position(), true);
	mpNavNode->SetColor(CColor::red);

	// 調べるオブジェクトを探知するコライダーを作成
	mpSearchCol = new CColliderSphere
	(
		this, ELayer::eInteractSearch,
		SEARCH_RADIUS
	);
	// 調べるオブジェクトのみ衝突するように設定
	mpSearchCol->SetCollisionTags({ ETag::eInteractObject });
	mpSearchCol->SetCollisionLayers({ ELayer::eInteractObj });

	// HPゲージ作成
	mpHpGauge = new CHpGauge();
	mpHpGauge->SetMaxPoint(mMaxHp);
	mpHpGauge->SetCurPoint(mHp);
	mpHpGauge->SetPos(0.0f, 0.0f);

	mpStGauge = new CStGauge();
	mpStGauge->SetMaxPoint(mMaxSt);
	mpStGauge->SetCurPoint(mSt);
	mpStGauge->SetPos(10.0f, 40.0f);
}

// デストラクタ
CPlayer2::~CPlayer2()
{
	// 視野範囲のデバッグ表示が存在したら、一緒に削除する
	if (mpDebugFov != nullptr)
	{
		mpDebugFov->SetOwner(nullptr);
		mpDebugFov->Kill();
	}

	SAFE_DELETE(mpColliderCapsule);
	SAFE_DELETE(mpSearchCol);

	spInstatnce = nullptr;
}

// オブジェクト削除を伝える
void CPlayer2::DeleteObject(CObjectBase* obj)
{
	// 削除されたのが視や表示用のクラスであれば、
	// ポインタを空にする
	if (obj == mpDebugFov)
	{
		mpDebugFov = nullptr;
	}
}

// インスタンスのポインタの取得
CPlayer2* CPlayer2::Instance()
{
	return spInstatnce;
}

// 更新処理
void CPlayer2::Update()
{
	if (mHp <= 0)
	{
		mState = EState::eDeath;
	}

	SetParent(mpRideObject);
	mpRideObject = nullptr;

	// 状態に合わせて、変更処理を切り替える
	switch (mState)
	{
		// 待機状態
		case EState::eIdle:
			UpdateIdle();
			break;
		// ジャンプ開始
		case EState::eJumpStart:
			UpdateJumpStart();
			break;
		// ジャンプ中
		case EState::eJump:
			UpdateJump();
			break;
		// ジャンプ終了
		case EState::eJumpEnd:
			UpdateJumpEnd();
			break;
		// 転倒
		case EState::eFall:
			UpdateFall();
			break;
		// 死亡
		case EState::eDeath:
			UpdateDeath();
			break;
			
	}

	//待機中とジャンプ中は、移動処理を行う
	if (mState == EState::eIdle
		|| mState == EState::eJump)
	{
		UpdateMove();
	}
	mMoveSpeedY -= GRAVITY;
	CVector moveSpeed = mMoveSpeed + CVector(0.0f, mMoveSpeedY, 0.0f);

	// 移動
	Position(Position() + moveSpeed);

	// プレイヤーを移動方向へ向ける
	CVector current = VectorZ();
	CVector target = moveSpeed;
	target.Y(0.0f);
	target.Normalize();
	CVector forward = CVector::Slerp(current, target, 0.125f);
	Rotation(CQuaternion::LookRotation(forward));

	// キャラクターの更新
	CXCharacter::Update();

	// 経路探索用のノードが存在すれば、座標を更新
	if (mpNavNode != nullptr)
	{
		mpNavNode->SetPos(Position());
	}

	CDebugPrint::Print("Grounded:%s\n", mIsGrounded ? "true" : "false");
	CDebugPrint::Print("State:%s\n", ToString(mState).c_str());

	mIsGrounded = false;

	CDebugPrint::Print("FPS:%f\n", Times::FPS());
	CDebugPrint::Print("HP:%d\n", mHp);
	CDebugPrint::Print("ST:%d\n", mSt);

	// 調べるオブジェクトのリストをクリア
	mNearInteractObjs.clear();

	// HPゲージの更新
	mpHpGauge->SetMaxPoint(mMaxHp);
	mpHpGauge->SetCurPoint(mHp);

}

// ステータスを整数にして取得する
int CPlayer2::GetState()
{
	return static_cast<int>(mState);
}

// 待機処理
void CPlayer2::UpdateIdle()
{
	// 接地していれば、
	if (mIsGrounded)
	{
		// SPACEキーでジャンプ
		if (CInput::PushKey(VK_SPACE))
		{
			mState = EState::eJumpStart;
		}
		else
		{
			// 近くの調べるオブジェクトを取得
			CInteractObject* obj = GetNearInteractObj();
			if (obj != nullptr)
			{
#if _DEBUG
				// 探知範囲内に入ったオブジェクトの名前を表示
				CDebugPrint::Print
				(
					"%s:%s\n",
					obj->GetDebugName().c_str(),
					obj->GetInteractStr().c_str()
				);
#endif

				// [E]キーを押したら、近くの調べるオブジェクトを調べる
				if (CInput::PushKey('E'))
				{
					obj->Interact();
				}
			}
		}
	}
}

// ジャンプ開始
void CPlayer2::UpdateJumpStart()
{
	ChangeAnimation(EAnimType::eJumpStart);
	float frame = GetAnimationFrame();
	mMoveSpeed = CVector::zero;

	if (frame >= JUNP_MOVE_START)
	{
		mMoveSpeedY += JUMP_SPEED;
		mIsGrounded = false;
		mState = EState::eJump;
	}
}

// ジャンプ中
void CPlayer2::UpdateJump()
{
	ChangeAnimation(EAnimType::eJumping);
	if (mIsGrounded)
	{
		mState = EState::eJumpEnd;
	}
}

// ジャンプ終了
void CPlayer2::UpdateJumpEnd()
{
	if (mIsGrounded)
	{
		mMoveSpeed.X(0.0f);
		mMoveSpeed.Z(0.0f);
		ChangeAnimation(EAnimType::eJumpEnd);
		
		if (IsAnimationFinished())
		{
			mState = EState::eIdle;
		}
	}
}

// 転倒処理
void CPlayer2::UpdateFall()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	ChangeAnimation(EAnimType::eFall);

	mSt++;
	
	if (IsAnimationFinished())
	{
		mState = EState::eIdle;	
	}
}

void CPlayer2::UpdateDeath()
{
	mMoveSpeed.X(0.0f);
	mMoveSpeed.Z(0.0f);
	// 死亡アニメーションを設定
	ChangeAnimation(EAnimType::eDeath);

	// アニメーションが終了したら、
	if (IsAnimationFinished())
	{
		// ゲームオーバーシーンを読み込む
		CSceneManager::Instance()->LoadScene(EScene::eGameOver);
	}
}

// キーの入力情報から移動ベクトルを求める
CVector CPlayer2::CalcMoveVec() const
{
	CVector move = CVector::zero;

	// キーの入力ベクトルを取得
	CVector input = CVector::zero;
	if (CInput::Key('W'))		input.Y(-1.0f);
	else if (CInput::Key('S'))	input.Y(1.0f);
	if (CInput::Key('A'))		input.X(-1.0f);
	else if (CInput::Key('D'))	input.X(1.0f);

	// 入力ベクトルの長さで入力されているか判定
	if (input.LengthSqr() > 0.0f)
	{
		// 上方向ベクトル(設置している場合は、地面の法線)
		CVector up = mIsGrounded ? mGroundNormal : CVector::up;
		// カメラの向きに合わせた移動ベクトルに変換
		CCamera* mainCamera = CCamera::MainCamera();
		CVector camForward = mainCamera->VectorZ();
		camForward.Y(0.0f);
		camForward.Normalize();
		// カメラの正面方向ベクトルと上方向ベクトルの外積から
		// 横方向の移動ベクトルを求める
		CVector moveSide = CVector::Cross(up, camForward);
		// 横方向の移動ベクトルと上方向ベクトルの外積から
		// 正面方向の移動ベクトルを求める
		CVector moveForward = CVector::Cross(moveSide, up);

		// 求めた各方向の移動ベクトルから、
		// 最終的なプレイヤーの移動ベクトルを求める
		move = moveForward * input.Y() + moveSide * input.X();
		move.Normalize();
	}

	return move;
}

// 移動の更新処理
void CPlayer2::UpdateMove()
{
	mMoveSpeed = CVector::zero;

	// プレイヤーの移動ベクトルを求める
	CVector move = CalcMoveVec();
	// 求めた移動ベクトルの長さで入力されているか判定
	if (move.LengthSqr() > 0.0f)
	{
		// 待機状態であれば、
		if (mState == EState::eIdle)
		{
			if (CInput::Key(VK_SHIFT))
			{
				// スタミナがあれば、
				if (mSt > 0)
				{
					// 走行アニメーションに切り替える
					ChangeAnimation(EAnimType::eRun);

					mMoveSpeed += move * RUN_SPEED;
					mSt--;
				}
				else
				{
					mState = EState::eFall;
				}
			}
			else
			{
				// 歩行アニメーションに切り替え
				ChangeAnimation(EAnimType::eWalk);

				mMoveSpeed += move * MOVE_SPEED;
				if (mSt < 100)
				{
					mSt++;
				}
			}
		}
		else if (mState == EState::eJump)
		{
			mMoveSpeed += move * RUN_SPEED;
		}
	}
	// 移動キーを入力していない
	else
	{
		// 待機状態であれば、待機アニメーションに切り替え
		if (mState == EState::eIdle)
		{
			ChangeAnimation(EAnimType::eIdle);

			if (mSt < 100)
			{
				mSt++;
			}
		}
	}

	mpStGauge->SetMaxPoint(mMaxSt);
	mpStGauge->SetCurPoint(mSt);
}

// 衝突判定
void CPlayer2::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
	// プレイヤーの体の当たり判定
	if (self == mpColliderCapsule)
	{
		// フィールドと天井の当たり判定処理
		if (other->Layer() == ELayer::eField)
		{
			CVector adjust = hit.adjust;
			// 押し戻しベクトルの分、座標を移動
			Position(Position() + adjust * hit.weight);

			// 衝突した地面が床か天井かを内積で判定
			CVector normal = hit.adjust.Normalized();
			float dot = CVector::Dot(normal, CVector::up);
			// 内積の結果がプラスであれば、床と衝突した
			if (dot >= 0.0f)
			{
				// 落下などで床に上から衝突した時（下移動）のみ
				// 上下の移動速度を0にする
				if (mMoveSpeedY < 0.0f)
				{
					mMoveSpeedY = 0.0f;
				}

				// 接地した
				mIsGrounded = true;
				// 接地した地面の法線を記憶しておく
				mGroundNormal = hit.adjust.Normalized();

				if (other->Tag() == ETag::eRideableObject)
				{
					mpRideObject = other->Owner();
				}
			}
			// 内積の結果がマイナスであれば、天井と衝突した
			else
			{
				// ジャンプなどで天井に下から衝突した時（上移動）のみ
				// 上下の移動速度を0にする
				if (mMoveSpeedY > 0.0f)
				{
					mMoveSpeedY = 0.0f;
				}
			}
		}
		// 壁との当たり判定処理
		else if (other->Layer() == ELayer::eWall)
		{
			// 押し戻しベクトルのYの値を0にする
			CVector adjust = hit.adjust;
			adjust.Y(0.0f);
			// 押し戻しベクトルの分、座標を移動
			Position(Position() + adjust * hit.weight);
		}
		// スイッチとの当たり判定処理
		// 敵との当たり判定処理
		else if (other->Layer() == ELayer::eInteractObj || other->Layer() == ELayer::eEnemy)
		{
			// 押し戻しベクトル
			CVector adjust = hit.adjust;

			// 押し戻しベクトルの分、座標を移動
			Position(Position() + adjust * hit.weight);
		}
	}
	// 調べるオブジェクトの探知コライダーとの当たり判定
	else if (self == mpSearchCol)
	{
		CInteractObject* obj = dynamic_cast<CInteractObject*>(other->Owner());
		if (obj != nullptr)
		{
			// 衝突した調べるオブジェクトをリストに追加
			mNearInteractObjs.push_back(obj);
		}
	}
}

// ダメージ処理
void CPlayer2::TakeDamege(int damage)
{
	mHp -= damage;
}

// 描画処理
void CPlayer2::Render()
{
	CXCharacter::Render();
}

// アニメーションの切り替え
void CPlayer2::ChangeAnimation(EAnimType type)
{
	int index = (int)type;
	if (!(0 <= index && index < (int)EAnimType::Num)) return;
	const AnimData& data = ANIM_DATA[index];
	CXCharacter::ChangeAnimation(index, data.loop, data.framelength);
}

// 今の状態を画面に表示
std::string CPlayer2::ToString(EState state)
{
	switch (mState)
	{
	case CPlayer2::EState::eTPose:		return "eTPose";
	case CPlayer2::EState::eIdle:		return "eIdle";
	case CPlayer2::EState::eWalk:		return "eWalk";
	case CPlayer2::EState::eRun:		return "eRun";
	case CPlayer2::EState::eJumpStart:	return "eJumpStart";
	case CPlayer2::EState::eJump:		return "eJump";
	case CPlayer2::EState::eJumpEnd:	return "eJumpEnd";
	case CPlayer2::EState::eFall:		return "eFall";
	case CPlayer2::EState::eDeath:		return "eDeath";

	case CPlayer2::EState::eCrawl:		return "eCrawl";
	case CPlayer2::EState::eSneak:		return "eSneak";
	case CPlayer2::EState::eCrouch_up:	return "eSneak";
	}
}

CInteractObject* CPlayer2::GetNearInteractObj() const
{
	// 一番近くの調べるオブジェクトのポインタ格納用
	CInteractObject* nearObj = nullptr;
	float nearDist = 0.0f;	// 現在一番近くにある調べるオブジェクトまでの距離
	CVector pos = Position();	// プレイヤーの座標を取得
	// 探知範囲内の調べるオブジェクトを順番に調べる
	for (CInteractObject* obj : mNearInteractObjs)
	{

		// 現在調べられない状態であれば、スルー
		if (!obj->CanInteract()) continue;

		// オブジェクトの座標を取得
		CVector objPos = obj->Position();
		// プレイヤーからオブジェクトまでのベクトルを求める
		CVector vec = objPos - pos;
		vec.Y(0.0f);	// オブジェクトとの高さの差を考慮しない

		// ベクトルを正規化して長さを1にする
		CVector dir = vec.Normalized();
		// 自身の正面方向ベクトルを取得
		CVector forward = VectorZ();
		// プレイヤーとまでのベクトルと
		// 自身の正面方向ベクトルの内積を求めて角度を出す
		float dot = CVector::Dot(dir, forward);
		// 視野角度のラジアンを求める
		float angleR = Math::DegreeToRadian(mFovAngle);
		// 求めた内積と視野角度で、視野範囲内か判断する
		if (dot < cosf(angleR)) continue;

		float dist = (obj->Position() - pos).LengthSqr();
		// 一番最初の調べるオブジェクトか、
		// 求めた距離が現在の一番近いオブジェクトよりも近い場合は、
		if (nearObj == nullptr || dist < nearDist)
		{
			// 一番近いオブジェクトを更新
			nearObj = obj;
			nearDist = dist;
		}
	}
	return nearObj;
}
