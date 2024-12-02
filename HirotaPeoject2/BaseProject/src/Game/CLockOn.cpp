#include "CLockOn.h"
#include "Maths.h"
#include "CCamera.h"
#include "CGameCamera.h"

CLockOn::CLockOn(ETag tag, ETaskPriority, const CVector& pos)
	: CBillBoardImage("UI\\GimmickUI\\Lock-onImage.png", tag, ETaskPauseType::eGame)
	, mDefaultPos(pos)
	, mSpeed(5.0f)
	, mElapsedTime(0.0f)
	, mRotationAngle(0.0f)
	, mIsDeath(false)
{
	SetPriority(ETaskPriority::eLockOn);
	SetSize(CVector2(15.0f, 15.0f));
}

CLockOn::~CLockOn()
{
}

void CLockOn::SetColor(const CColor& color)
{
	mMaterial.Diffuse()[0] = color.R();
	mMaterial.Diffuse()[1] = color.G();
	mMaterial.Diffuse()[2] = color.B();
	mMaterial.Diffuse()[3] = color.A();
	CObjectBase::SetColor(color);
}

void CLockOn::SetBlendType(EBlend type)
{
	mMaterial.SetBlendType(type);
}

// 更新
void CLockOn::Update()
{
	// 基底クラスの更新
	CBillBoardImage::Update();

	// 現在のカメラを取得
	CCamera* cam = CCamera::CurrentCamera();
	if (cam == nullptr) return;

	// 時間経過に応じて回転角度を更新
	mRotationAngle += mSpeed * Time::DeltaTime();

	// 回転角度が360度を超えたらリセット
	if (mRotationAngle >= 360.0f) {
		mRotationAngle -= 360.0f;
	}

	// カメラの前方向
	CVector camForward = cam->VectorZ();

	// カメラの前方向を回転軸として使用
	CVector localRotationAxis = camForward;

	// クォータニオンで回転を作成（カメラの向きに基づいた回転）
	CQuaternion rotation = CQuaternion::AngleAxis(mRotationAngle, localRotationAxis);

	// 画像に回転を適用
	Rotation(rotation);

	SetShow(IsShow());
}