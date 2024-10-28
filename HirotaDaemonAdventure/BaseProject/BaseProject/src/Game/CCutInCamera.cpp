#include "CCutInCamera.h"
#include "CTaskManager.h"

CCutInCamera* CCutInCamera::spCutInCamera = nullptr;

// コンストラクタ
CCutInCamera::CCutInCamera()
	: CCamera(CVector::zero, CVector::zero, false)
	, mIsPlaying(false)
{

}

// デストラクタ
CCutInCamera::~CCutInCamera()
{

}

// カットイン開始
bool CCutInCamera::Start()
{
	// すでにカットインカメラがオンになっていたら、開始しない
	if (spCutInCamera != nullptr) return false;

	// 再生中のカットインカメラに自身を設定
	spCutInCamera = this;
	mIsPlaying = true;
	// 現在のカメラを自身に設定
	SetCurrent(true);

	// カットイン用のポーズを呼び出す
	CTaskManager::Instance()->Pause(PAUSE_CUTIN);

	return true;
}

// カットイン終了
bool CCutInCamera::End()
{
	// 自身がカットイン再生中でなければ、停止しない
	if (spCutInCamera != this) return false;

	// 再生中のカットインカメラを削除
	spCutInCamera = nullptr;
	mIsPlaying = false;
	// 現在のカメラからも削除
	SetCurrent(false);

	// カットイン用のポーズを解除
	CTaskManager::Instance()->UnPause(PAUSE_CUTIN);

	return true;
}

// カットイン再生中かどうか
bool CCutInCamera::IsPlaying() const
{
	return mIsPlaying;
}

// 更新
void CCutInCamera::Update()
{

}