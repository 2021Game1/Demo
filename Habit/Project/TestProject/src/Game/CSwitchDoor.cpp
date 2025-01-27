#include "CSwitchDoor.h"
#include "CPushSwitch.h"
#include "CSceneManager.h"

// コンストラクタ
CSwitchDoor::CSwitchDoor(const CVector& pos, const CVector& angle, const CVector& size)
	: mIsOpened(false)
	, mAnimTime(1.0f)
	, mElapsedTime(0.0f)
	, mIsPlaying(false)
	
{
	// 現在のシーンを取得
	mScene = CSceneManager::Instance()->GetCurrentScene();
	switch (mScene)
	{
	case EScene::eGame:
		{
			// 扉のモデルデータ取得(今は壁を設定している)
			mpModel = CResourceManager::Get<CModel>("Wall");

			// 扉のコライダーを取得(今は壁のコライダーを設定している)
			CModel* colModel = CResourceManager::Get<CModel>("WallCol");
			mpColliderMesh = new CColliderMesh(this, ELayer::eWall, colModel, true);

			// 赤色を設定
			mColor = CColor::red;

			break;
		}
	case EScene::eGame3:
		{
			// 扉のモデルデータ取得(今は壁を設定している)
			mpModel = CResourceManager::Get<CModel>("Gimmick_Wall");

			// 扉のコライダーを取得(今は壁のコライダーを設定している)
			CModel* colModel = CResourceManager::Get<CModel>("Gimmick_Wall");
			mpColliderMesh = new CColliderMesh(this, ELayer::eWall, colModel, true);

			break;
		}
	}
	
	// 位置と向きとサイズを設定
	Position(pos);
	Rotation(angle);
	Scale(size);
}

// デストラクタ
CSwitchDoor::~CSwitchDoor()
{
	// コライダーを削除
	SAFE_DELETE(mpColliderMesh);
}

// 接続するスイッチを追加する
void CSwitchDoor::AddSwitch(CPushSwitch* sw)
{
	mpSwitches.push_back(sw);
}

// 扉を閉じた時の座標と開いた時の座標を設定する
void CSwitchDoor::SetAnimPos(const CVector& openPos, const CVector closePos)
{
	mOpenPos = openPos;
	mClosePos = closePos;
	Position(mIsOpened ? mOpenPos : mClosePos);
}

// スイッチが全て押されているかどうか
bool CSwitchDoor::IsSwitchOn() const
{
	for (CPushSwitch* sw : mpSwitches)
	{
		if (!sw->IsOnSwtch()) return false;
	}
	return true;
}

// 更新処理
void CSwitchDoor::Update()
{
	// 開閉アニメーション再生中
	if (mIsPlaying)
	{
		// 扉を開くアニメーション
		if (mIsOpened)
		{
			if (mElapsedTime < mAnimTime)
			{
				float per = mElapsedTime / mAnimTime;
				CVector pos = CVector::Lerp(mClosePos, mOpenPos, per);
				Position(pos);
				mElapsedTime += Times::DeltaTime();
			}
			else
			{
				Position(mOpenPos);
				mElapsedTime = 0.0f;
				mIsPlaying = false;
			}
		}
		// 扉を閉じるアニメーション
		else
		{
			if (mElapsedTime < mAnimTime)
			{
				float per = mElapsedTime / mAnimTime;
				CVector pos = CVector::Lerp(mOpenPos, mClosePos, per);
				Position(pos);
				mElapsedTime += Times::DeltaTime();
			}
			else
			{
				Position(mClosePos);
				mElapsedTime = 0.0f;
				mIsPlaying = false;
			}
		}
	}
	// 開閉中ではない
	else
	{
		bool isSwitchOn = IsSwitchOn();

		if (isSwitchOn && !mIsOpened)
		{
			mIsOpened = true;
			mIsPlaying = true;
		}
		else if (!isSwitchOn && mIsOpened)
		{
			mIsOpened = false;
			mIsPlaying = true;
		}
	}
}

// 描画処理
void CSwitchDoor::Render()
{
	mpModel->SetColor(mColor);
	mpModel->Render(Matrix());
}

