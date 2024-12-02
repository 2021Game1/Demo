#include "CStage4.h"
#include "CGameCamera.h"
#include "CCamera.h"
#include "CPlayer.h"
#include "CSeesawAdventure.h"
#include "CSeesaw.h"
#include "CSplitSeesaw.h"
#include "CSpring.h"
#include "CStageSky.h"
#include "CMeat1.h"
#include "CMeat2.h"
#include "CMeat3.h"
#include "CMeat1Event.h"
#include "CInput.h"
#include "CRotateFloorTimeGimmick.h"
#include "CSeesawStageFallCol.h"
#include "CSavePoint1.h"
#include "CPicoChan.h"
#include "CMetalLadder.h"
#include "CRengaBlock.h"
#include "CHatenaBlock.h"

// コンストラクタ
CStage4::CStage4()
{
	mStageNo = 4;
}

// デストラクタ
CStage4::~CStage4()
{

}

// ステージ読み込み
void CStage4::Load()
{
	// ステージの空
	CResourceManager::Load<CModel>("StageSky", "Field\\StageSky\\Sky(Sphere).obj");
	// ステージモデル
	CResourceManager::Load<CModel>("SeesawStage(Base)", "Field\\SeesawStage\\SeesawStage(Base).obj");
	// ステージ床コライダー
	CResourceManager::Load<CModel>("SeesawStage(Floor)", "Field\\SeesawStage\\SeesawStage(FloorCol).obj");
	// ステージ壁コライダー
	CResourceManager::Load<CModel>("SeesawStage(Wall)", "Field\\SeesawStage\\SeesawStage(WallCol).obj");
	// ステージ落下コライダー
	CResourceManager::Load<CModel>("SeesawStage(Fall)", "Field\\SeesawStage\\SeesawStage(FallCol).obj");

	// シーソーモデル
	CResourceManager::Load<CModel>("SeesawModel", "Field\\Gimmick\\SeesawGimmick\\SeesawModel.obj");
	// シーソーモデルコライダー
	CResourceManager::Load<CModel>("SeesawModelCol", "Field\\Gimmick\\SeesawGimmick\\SeesawModel(Col).obj");
	// 分割シーソーモデル
	CResourceManager::Load<CModel>("SplitSeesawModel", "Field\\Gimmick\\SeesawGimmick\\SplitSeesaw.obj");
	// 分割シーソーモデルコライダー
	CResourceManager::Load<CModel>("SplitSeesawModelCol", "Field\\Gimmick\\SeesawGimmick\\SplitSeesawCol.obj");

	// バネモデル(上とバネ)
	CResourceManager::Load<CModel>("Spring", "GameGimmick\\Gimmick\\Jump\\Spring.obj");
	// バネモデル(下)
	CResourceManager::Load<CModel>("SpringLower", "GameGimmick\\Gimmick\\Jump\\SpringLower.obj");
	// バネコライダーモデル
	CResourceManager::Load<CModel>("SpringCol", "GameGimmick\\Gimmick\\Jump\\SpringCol.obj");

	// 回転する床
	CResourceManager::Load<CModel>("RotateFloor", "GameGimmick\\Gimmick\\Rotate\\RotateFloor.obj");
	// 回転する床の前コライダー
	CResourceManager::Load<CModel>("RotateFloorFrontCol", "GameGimmick\\Gimmick\\Rotate\\RotateFloorFrontCol.obj");
	// 回転する床の後ろコライダー
	CResourceManager::Load<CModel>("RotateFloorBackCol", "GameGimmick\\Gimmick\\Rotate\\RotateFloorBackCol.obj");
	// 回転する床(反対)
	CResourceManager::Load<CModel>("RotateFloorOpposition", "GameGimmick\\Gimmick\\Rotate\\RotateFloor(Opposition).obj");
	// 回転する床の前コライダー(反対)
	CResourceManager::Load<CModel>("RotateFloorFrontColOpposition", "GameGimmick\\Gimmick\\Rotate\\RotateFloorFrontCol(Opposition).obj");
	// 回転する床の後ろコライダー(反対)
	CResourceManager::Load<CModel>("RotateFloorBackColOpposition", "GameGimmick\\Gimmick\\Rotate\\RotateFloorBackCol(Opposition).obj");

	// 金属の梯子オブジェクト
	CResourceManager::Load<CModel>("4Metalladder", "GameGimmick\\SeesawStage\\SeesawStage(MetalLadder).obj");
	// 金属の梯子オブジェクト(Col)
	CResourceManager::Load<CModel>("4MetalladderCol", "GameGimmick\\SeesawStage\\SeesawStage(MetalLadderCol).obj");
	// 金属の梯子オブジェクト(TopCol)
	CResourceManager::Load<CModel>("4MetalladderTopCol", "GameGimmick\\SeesawStage\\SeesawStage(MetalLadderColTop).obj");

	// セーブポイントモデル
	CResourceManager::Load<CModel>("SavePoint", "GameGimmick\\Gimmick\\SaveFlag\\SavePoint.obj");

	// ハテナブロック(アイテム保有)
	CResourceManager::Load<CModel>("HatenaBlock", "GameGimmick\\Object\\hatena.obj");
	// ハテナブロック(アイテム不保有)
	CResourceManager::Load<CModel>("HatenaBlockAfter", "GameGimmick\\Object\\UsedHatenaBlock.obj");
	// レンガブロック
	CResourceManager::Load<CModel>("RengaBlock", "GameGimmick\\Object\\RengaBlock.obj");
	
	// 肉モデル
	CResourceManager::Load<CModel>("Meat", "Item\\StageItem\\niku.obj");
	// 回復オブジェクト
	CResourceManager::Load<CModel>("Heart", "Item\\StatusItem\\Heart.obj");
	// 無敵オブジェクト
	CResourceManager::Load<CModel>("Star", "Item\\StatusItem\\Star.obj");
	// 得点オブジェクト
	CResourceManager::Load<CModel>("Medal", "Item\\StatusItem\\Medal.obj");
	// 回復薬オブジェクト
	CResourceManager::Load<CModel>("Healing", "Item\\StatusItem\\HealingItem.obj");
	// 攻撃力アップモデル
	CResourceManager::Load<CModel>("AttackPotion", "Item\\StatusItem\\AttackPotion.obj");

	// サークルエフェクト
	CResourceManager::Load<CModel>("CircleEffect1", "Effect\\CharacterEffect\\CharaEffectCircle.obj");
	CResourceManager::Load<CModel>("CircleEffect2", "Effect\\CharacterEffect\\CharaEffectCircle(Widthver).obj");
	// キャラクターエフェクト
	CResourceManager::Load<CModel>("CharEffect", "Effect\\CharacterEffect\\CharacterEffect(Up).obj");
	// キャラクターエフェクト(ライン)
	CResourceManager::Load<CModel>("LineEffect", "Effect\\CharacterEffect\\CharacterEffect(Line).obj");

	// Tキーの画像
	CResourceManager::Load<CTexture>("TUI", "UI\\GimmickUI\\T.png");

	CResourceManager::Load<CTexture>("Laser", "Effect\\laser.png");

	// ピコちゃん
	CResourceManager::Load<CModelX>("Pico", "Character\\PicoChan\\PicoChan.x");

	CInput::ShowCursor(false);

	// 背景色設定
	System::SetClearColor(0.1921569f, 0.3019608f, 0.4745098f, 1.0f);

	mpFeild = new CSeesawAdventure();
	mpFeild->Position(0.0f, 0.0f, 0.0f);
	mpFeild->Scale(4.0f, 4.0f, 4.0f);
	mpFeild->Rotate(0.0f, 0.0f, 0.0f);
	AddTask(mpFeild);

	// 落下コライダー
	mpFallCol = new CSeesawStageFallCol();
	mpFallCol->Scale(4.0f, 4.0f, 4.0f);
	AddTask(mpFallCol);

	// 空
	mpSky = new CStageSky();
	mpSky->Scale(150.0f, 150.0f, 150.0f);
	AddTask(mpSky);

	// セーブポイント1
	CSavePoint1* savepoint1 = new CSavePoint1
	(
		CVector(328.0f, -192.0f, -546.0f),
		CVector(7.0f, 7.0f, 7.0f),
		CVector(0.0f, 10.0f, 0.0f)
	);
	savepoint1->Rotation(0.0f, 90.0f, 0.0f);
	AddTask(savepoint1);

	// シーソーモデル
	CSeesaw* seesaw1 = new CSeesaw
	(
		CVector(328.0f, -277.0f, -875.0f),
		CVector(6.5f, 5.5f, 6.5f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
		, 40.0f, 40.0f, 20.0f, 20.0f
	);
	AddTask(seesaw1);

	// シーソーモデル
	CSeesaw* seesaw2 = new CSeesaw
	(
		CVector(328.0f, -237.0f, -790.0f),
		CVector(6.5f, 5.5f, 6.5f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
		, 40.0f, 40.0f, 20.0f, 20.0f
	);
	AddTask(seesaw2);

	// シーソーモデル
	CSeesaw* seesaw3 = new CSeesaw
	(
		CVector(328.0f, -217.0f, -744.0f),
		CVector(6.5f, 5.5f, 6.5f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
		, 40.0f, 40.0f, 20.0f, 20.0f
	);
	AddTask(seesaw3);

	// 回転する床
	CRotateFloorTimeGimmick* timefloor = new CRotateFloorTimeGimmick
	(
		CVector(328.0f, -191.0f, -618.0f),
		CVector(5.0f, 5.0f, 5.0f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(timefloor);

	// 分割シーソーモデル
	CSplitSeesaw* splits1 = new CSplitSeesaw
	(
		CVector(328.0f, -260.0f, -828.0f),
		CVector(1.0f, 1.5f, 1.5f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
		, 35.0f, 35.0f, 10.0f, 10.0f
	);
	AddTask(splits1);

	// 分割シーソーモデル
	CSplitSeesaw* splits2 = new CSplitSeesaw
	(
		CVector(328.0f, -192.0f, -370.0f),
		CVector(1.0f, 1.5f, 1.5f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
		, 35.0f, 35.0f, 10.0f, 10.0f
	);
	AddTask(splits2);

	// 分割シーソーモデル
	CSplitSeesaw* splits3 = new CSplitSeesaw
	(
		CVector(328.0f, -175.0f, -336.0f),
		CVector(1.0f, 1.5f, 1.5f),
		CVector(0.0f, 0.0f, 0.0f),
		ETag::ePlayer, ELayer::ePlayer
		, 45.0f, 45.0f, 15.0f, 15.0f
	);
	AddTask(splits3);

	// バネ(上とバネ)
	CSpring* spring1 = new CSpring
	(
		CVector(328.0f, -306.0f, -918.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(spring1);
	// バネ(下)
	CSpringLower* springlower1 = new CSpringLower
	(
		CVector(328.0f, -306.0f, -918.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(springlower1);

	// バネ(上とバネ)
	CSpring* spring2 = new CSpring
	(
		CVector(328.0f, -192.0f, -425.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(spring2);
	// バネ(下)
	CSpringLower* springlower2 = new CSpringLower
	(
		CVector(328.0f, -192.0f, -425.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(springlower2);

	// レンガブロック1
	CRengaBlock* renga1 = new CRengaBlock
	(
		CVector(300.0f, -150.0f, -80.0f),
		CVector(9.0f, 9.0f, 9.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(renga1);
	// ハテナブロック1
	CHatenaBlock* hatena1 = new CHatenaBlock
	(
		CVector(287.0f, -150.0f, -80.0f),
		CVector(9.0f, 9.0f, 9.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(hatena1);
	// レンガブロック1
	CRengaBlock* renga2 = new CRengaBlock(
		CVector(274.0f, -150.0f, -80.0f),
		CVector(9.0f, 9.0f, 9.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(renga2);

	// 登れる金網を作成
	CMetalLadder* metalladder = new CMetalLadder
	(
		"4Metalladder", "4MetalladderCol", "4MetalladderTopCol",
		CVector(0.0f, 15.0f, 0.0f),	// 上方向の移動
		CVector(0.0f, 0.0f, 15.0f)	// 正面方向の移動
	);
	metalladder->Scale(4.0f, 4.0f, 4.0f);
	AddTask(metalladder);


	//// 肉オブジェクト /////////////////////////////////////////////////////////////////

	// 肉1獲得イベントを生成
	CMeat1Event* mtEvent = new CMeat1Event();
	AddTask(mtEvent);

	CMeat1* meat1 = new CMeat1
	(
		CVector(-483.0f, 10.0f, 483.0f),
		CVector(0.0f, 0.0f, 0.0f),
		CVector(4.0f, 4.0f, 4.0f)
	);
	AddTask(meat1);
	meat1->SetMeatNumber(1);
	meat1->SetEvent(mtEvent);
	mtEvent->AddMeat1(meat1);

	//// 肉1を取得すると
	//// ハイジャンプキノコを作成
	//CJumpingKinokoHigh* highkinoko = new CJumpingKinokoHigh
	//(
	//	CVector(-483.0f, 5.0f, 500.0f),
	//	CVector(1.0f, 1.0f, 1.0f),
	//	CVector(0.0f, 0.0f, 0.0f)
	//);
	//AddTask(highkinoko);
	//highkinoko->SetEvent(mtEvent);
	//mtEvent->SetHighKinoko(highkinoko);

	CMeat2* meat2 = new CMeat2
	(
		CVector(337.0f, 35.0f, 1290.0f),
		CVector(0.0f, 0.0f, 0.0f),
		CVector(4.0f, 4.0f, 4.0f)
	);
	meat2->SetMeatNumber(2);
	AddTask(meat2);

	CMeat3* meat3 = new CMeat3
	(
		CVector(-337.0f, 35.0f, 1290.0f),
		CVector(0.0f, 0.0f, 0.0f),
		CVector(4.0f, 4.0f, 4.0f)
	);
	meat3->SetMeatNumber(3);
	AddTask(meat3);

	/////////////////////////////////////////////////////////////////////////////////////

	// ピコちゃん
	CPicoChan* pico = new CPicoChan();
	pico->Scale(15.5f, 15.5f, 15.5f);
	pico->Position(415.0f, -127.0f, -80.0f);
	pico->SetCenterPoint(CVector(415.0f, -125.0f, -80.0f),30.0f);
	AddTask(pico);

	// モンスター(プレイヤー)
	CPlayer* player = CPlayer::Instance();
	// 初期値点 : 333.0f, -277.0f, -988.0f
	CVector playerPos = CVector(328.0f, -277.0f, -958.0f);
	if (player != nullptr)
	{
		player->SetStartPosition(playerPos);
		player->Rotation(0.0f, 0.0f, 0.0f);//0.0f, 225.0f, 0.0f
	}

	// カメラの位置と向きを設定 -1109.0f, 90.0f, 1200.0f
	// CVector(-757.0f, 90.0f, -958.0f),
	CVector camPos = playerPos + player->Rotation() * CVector(0.0f, 30.0f, -100.0f);
	CCamera* mainCamera = CCamera::MainCamera();
	mainCamera->LookAt(camPos, playerPos, CVector::up);
	mainCamera->SetFollowTargetTf(player);
	// スフィアかメッシュぐらい
	mainCamera->AddCollider(mpFeild->GetWallCol());
}

// ステージ破棄
void CStage4::Unload()
{
	CCamera* mainCamera = CCamera::MainCamera();
	mainCamera->RemoveCollider(mpFeild->GetWallCol());
	// ベースステージ破棄処理
	CStageBase::Unload();
}