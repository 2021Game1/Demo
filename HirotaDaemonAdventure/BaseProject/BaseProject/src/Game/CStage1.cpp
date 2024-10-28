#include "CStage1.h"
#include "COneShotFloorField.h"
#include "COneShotFallCol.h"
#include "CStageSky.h"
#include "CPlayer.h"
#include "CNumberFloor1.h"
#include "CNumberFloor2.h"
#include "CNumberFloor3.h"
#include "CCircleNbFlRight1.h"
#include "CCircleNbFlRight2.h"
#include "CCircleNbFlRight3.h"
#include "CCircleNbFlLeft1.h"
#include "CCircleNbFlLeft2.h"
#include "CCircleNbFlLeft3.h"
#include "CMoveToNbFl1.h"
#include "CMoveToNbFl2.h"
#include "CMoveToNbFl3.h"
#include "CNbFlUpDown1.h"
#include "CNbFlUpDown2.h"
#include "CNbFlUpDown3.h"
#include "CRisingObject.h"
#include "CTreasureChest.h"
#include "CSavePoint1.h"
#include "CSavePoint2.h"
#include "CFixedFlamethrower.h"
#include "CGoalObject.h"
#include "CBlueMedalEvent.h"
#include "CBlueMedal.h"
#include "CObstacleWall.h"
#include "CMeat1.h"
#include "CMeat2.h"
#include "CMeat3.h"
#include "CNeedleUpDown.h"
#include "CNeedleLeftRight.h"
#include "CInput.h"
#include "CRotationg.h"
#include "CCannon.h"
#include "CHorizontalCannon.h"
#include "CPowerfulCannon.h"
#include "CSpring.h"
#include "CAlwaysVerticalNeedle.h"
#include "CRotationg.h"
#include "CRengaBlock.h"
#include "CHatenaBlock.h"
#include "CPicoChan.h"
#include "CBGMManager.h"

// コンストラクタ
CStage1::CStage1()
{
	mStageNo = 1;
}

// デストラクタ
CStage1::~CStage1()
{

}

// ステージ読み込み
void CStage1::Load()
{
	// オブジェクト関連
	// ステージのベースモデル
	CResourceManager::Load<CModel>("Stage1Base", "Field\\OneShotFloor\\StageBase.obj");
	// ステージのラインモデル
	CResourceManager::Load<CModel>("Stage1Line", "Field\\OneShotFloor\\Line.obj");
	// ステージの床コライダー
	CResourceManager::Load<CModel>("Stage1FloorCol", "Field\\OneShotFloor\\FloorCol.obj");
	// ステージの落下コライダー
	CResourceManager::Load<CModel>("Stage1FallCol", "Field\\OneShotFloor\\FallCol.obj");
	// ステージの空
	CResourceManager::Load<CModel>("StageSky", "Field\\StageSky\\Sky(Sphere).obj");
	// 初期の四角のモデル
	CResourceManager::Load<CModel>("FieldCube", "GameGimmick\\Object\\cube.obj");

	// ギミック関連
	// 回転する床のモデル
	CResourceManager::Load<CModel>("Rotationg", "GameGimmick\\Gimmick\\Rotate\\Rotationg.obj");
	// 回転する床のコライダー
	CResourceManager::Load<CModel>("RotationgCol", "GameGimmick\\Gimmick\\Rotate\\RotationgCol.obj");
	// 零番目の床
	CResourceManager::Load<CModel>("Number0", "GameGimmick\\Gimmick\\NumberFloor\\number0.obj");
	// 一番目の床ブロック
	CResourceManager::Load<CModel>("Number1", "GameGimmick\\Gimmick\\NumberFloor\\number1.obj");
	// 二番目の床ブロック
	CResourceManager::Load<CModel>("Number2", "GameGimmick\\Gimmick\\NumberFloor\\number2.obj");
	// 三番目の床ブロック
	CResourceManager::Load<CModel>("Number3", "GameGimmick\\Gimmick\\NumberFloor\\number3.obj");
	// 宝箱
	//CResourceManager::Load<CModel>("TreasureChest", "GameGimmick\\Gimmick\\TreasureChest.obj");
	// // 宝箱(蓋)
	//CResourceManager::Load<CModel>("TreasureChestTwo", "GameGimmick\\Gimmick\\TreasureChestTwo.obj");
	// // 宝箱(蓋コライダー)
	//CResourceManager::Load<CModel>("TreasureChestCol", "GameGimmick\\Gimmick\\TreasureChest(FloorCol).obj");
	// // 宝箱(壁コライダー)
	//CResourceManager::Load<CModel>("TreasureChestWallCol", "GameGimmick\\Gimmick\\TreasureChest(WallCol).obj");
	// 火炎放射器(土台)
	CResourceManager::Load<CModel>("FlamethrowerModel", "GameGimmick\\Gimmick\\Flame\\Flamethrower(foundation).obj");
	// 火炎放射器(タンク)
	CResourceManager::Load<CModel>("FlamethrowerTank", "GameGimmick\\Gimmick\\Flame\\Flamethrower(tank).obj");
	// 火炎放射器(コライダー)
	CResourceManager::Load<CModel>("FlamethrowerCol", "GameGimmick\\Gimmick\\Flame\\Flamethrower(WallCol).obj");
	// セーブポイントモデル
	CResourceManager::Load<CModel>("SavePoint", "GameGimmick\\Gimmick\\SaveFlag\\SavePoint.obj");
	// ゴールポストモデル
	CResourceManager::Load<CModel>("GoalPost", "GameGimmick\\Gimmick\\Goal\\GoalPost.obj");
	// ゴールブロックモデル
	CResourceManager::Load<CModel>("GoalCube", "GameGimmick\\Gimmick\\Goal\\GoalCube.obj");
	//// 針モデル(上下)
	//CResourceManager::Load<CModel>("Needle", "GameGimmick\\Gimmick\\Needle\\NeedleObject(needle).obj");
	//// 針モデルコライダー(上下)
	//CResourceManager::Load<CModel>("NeedleCol", "GameGimmick\\Gimmick\\Needle\\NeedleObjectCol.obj");
	//// 針ベースモデル(上下)
	//CResourceManager::Load<CModel>("NeedleBase", "GameGimmick\\Gimmick\\Needle\\NeedleObject(base).obj");
	//// 針ベースコライダー(上下)
	//CResourceManager::Load<CModel>("NeedleBaseCol", "GameGimmick\\Gimmick\\Needle\\NeedleObjectBaseCol.obj");
	//// 針モデル(左右)
	//CResourceManager::Load<CModel>("NeedleLeftRight", "GameGimmick\\Gimmick\\Needle\\NeedleObjLeftRight(Needle).obj");
	//// 針モデルコライダー(左右)
	//CResourceManager::Load<CModel>("NeedleColLeftRight", "GameGimmick\\Gimmick\\Needle\\NeedleObjLeftRight(NeedleCol).obj");
	//// 針ベースモデル(左右)
	//CResourceManager::Load<CModel>("NeedleBaseLeftRight", "GameGimmick\\Gimmick\\Needle\\NeedleObjLeftRight(Base).obj");
	//// 針ベースコライダー(左右)
	//CResourceManager::Load<CModel>("NeedleBaseColLeftRight", "GameGimmick\\Gimmick\\Needle\\NeedleObjLeftRight(BaseCol).obj");
	// 大砲土台モデル
	CResourceManager::Load<CModel>("CannonFound", "GameGimmick\\Gimmick\\Cannon\\CannonFoundations.obj");
	// 水平大砲土台モデル
	CResourceManager::Load<CModel>("HorizontalCannonFound", "GameGimmick\\Gimmick\\Cannon\\CannonFoundation(Horizontal).obj");
	// 大砲
	CResourceManager::Load<CModel>("Cannon", "GameGimmick\\Gimmick\\Cannon\\Cannon.obj");
	// 水平大砲
	CResourceManager::Load<CModel>("HorizontalCannon", "GameGimmick\\Gimmick\\Cannon\\HorizontalCannon.obj");
	// 大砲玉モデル
	CResourceManager::Load<CModel>("CannonBall", "GameGimmick\\Gimmick\\Cannon\\CannonBall.obj");
	// バネモデル(上とバネ)
	CResourceManager::Load<CModel>("Spring", "GameGimmick\\Gimmick\\Jump\\Spring.obj");
	// バネモデル(下)
	CResourceManager::Load<CModel>("SpringLower", "GameGimmick\\Gimmick\\Jump\\SpringLower.obj");
	// バネコライダーモデル
	CResourceManager::Load<CModel>("SpringCol", "GameGimmick\\Gimmick\\Jump\\SpringCol.obj");
	// 常時出ている針モデル
	CResourceManager::Load<CModel>("AlwaysNeedle", "GameGimmick\\Gimmick\\Needle\\Always\\AlwaysNeedleBase.obj");
	// 常時出ている針モデルのコライダー
	CResourceManager::Load<CModel>("AlwaysNeedleBaseCol", "GameGimmick\\Gimmick\\Needle\\Always\\AlwaysNeedleBaseCol.obj");
	// 常時出ている針モデルの針コライダー
	CResourceManager::Load<CModel>("AlwaysNeedleCol", "GameGimmick\\Gimmick\\Needle\\Always\\AlwaysNeedleBaseNeedleCol.obj");
	// ずっと回転する床
	CResourceManager::Load<CModel>("Rotationg", "GameGimmick\\Gimmick\\Rotate\\Rotationg.obj");
	// ずっと回転する床コライダー
	CResourceManager::Load<CModel>("Rotationg", "GameGimmick\\Gimmick\\Rotate\\RotationgCol.obj");
	// ハテナブロック(アイテム保有)
	CResourceManager::Load<CModel>("HatenaBlock", "GameGimmick\\Gimmick\\Block\\hatena.obj");
	// ハテナブロック(アイテム不保有)
	CResourceManager::Load<CModel>("HatenaBlockAfter", "GameGimmick\\Gimmick\\Block\\UsedHatenaBlock.obj");
	// レンガブロック
	CResourceManager::Load<CModel>("RengaBlock", "GameGimmick\\Gimmick\\Block\\RengaBlock.obj");

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
	// 肉モデル
	CResourceManager::Load<CModel>("Meat", "Item\\StageItem\\niku.obj");

	// アイテム関連
	// ブルーメダルモデル
	CResourceManager::Load<CModel>("BlueMedal", "Item\\BlueMedal\\Bluemedal.obj");

	// BGMを再生
	CBGMManager::Instance()->Play(EBGMType::eStage1);

	// 背景色設定
	System::SetClearColor(0.0f, 0.0f, 0.8f, 1.0f);

	CInput::ShowCursor(false);

	// フィールド
	mpField = new COneShotFloorField();
	mpField->Scale(1.0f, 1.0f, 1.0f);
	AddTask(mpField);
	// 落下コライダー
	mpFallCol = new COneShotFallCol();
	mpFallCol->Scale(1.0f, 1.0f, 1.0f);
	AddTask(mpFallCol);

	// 空
	mpSky = new CStageSky();
	mpSky->Scale(150.0f, 150.0f, 150.0f);
	AddTask(mpSky);

	// セーブポイント1
	CSavePoint1* savepoint1 = new CSavePoint1
	(
		CVector(26.0f, 5.0f, 390.0f),
		CVector(4.0f, 4.0f, 4.0f),
		CVector(0.0f, 10.0f, 0.0f)
	);
	savepoint1->Rotation(0.0f, 90.0f, 0.0f);
	AddTask(savepoint1);
	// セーブポイント2
	CSavePoint2* savepoint2 = new CSavePoint2
	(
		CVector(26.0f, 5.0f, 673.0f),
		CVector(4.0f, 4.0f, 4.0f),
		CVector(0.0f, 10.0f, 0.0f)
	);
	savepoint2->Rotation(0.0f, 90.0f, 0.0f);
	AddTask(savepoint2);

	// ゴールポスト0.0f, 10.0f, 720.0f
	CGoalObject* goal = new CGoalObject
	(
		CVector(26.0f, -10.0f, 1650.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, 90.0f, 0.0f)
	);
	AddTask(goal);

	// オブジェクトを配置するループ
	for (int i = 0; i < 8; ++i) {

		// X軸の位置を設定
		float xPos = 0.0f;
		if (i == 0) xPos = 26.0f;
		// 右ルート
		if (i == 1) xPos = -26.0f;
		if (i == 2) xPos = -56.0f;
		if (i == 3) xPos = -86.0f;
		if (i == 4) xPos = -265.0f;
		if (i == 5) xPos = -300.0f;
		if (i == 6) xPos = -335.0f;
		if (i == 7) xPos = -358.0f;

		// Y軸の位置を設定
		float yPos = 0.0f;
		if (i == 0) yPos = 0.0f;
		// 右ルート
		if (i == 1) yPos = 0.0f;
		if (i == 2) yPos = 0.0f;
		if (i == 3) yPos = 0.0f;
		if (i == 4) yPos = 0.0f;
		if (i == 5) yPos = 0.0f;
		if (i == 6) yPos = 0.0f;
		if (i == 7) yPos = 0.0f;

		// Z軸の位置を設定
		float zPos = 0.0f;
		if (i == 0)   zPos = 340.0f;
		// 右ルート
		if (i == 1)   zPos = 720.0f;;
		if (i == 2)   zPos = 770.0f;;
		if (i == 3)   zPos = 820.0f;;
		if (i == 4)   zPos = 843.0f;;
		if (i == 5)   zPos = 843.0f;;
		if (i == 6)   zPos = 843.0f;;
		if (i == 7)   zPos = 890.0f;;
		
		// X軸のスケール値を設定
		float xScale = 3.0f;
		if (i == 4) xScale = 2.0f;
		if (i == 5) xScale = 2.0f;
		if (i == 6) xScale = 2.0f;
		if (i == 7) xScale = 2.0f;
		
		// Z軸のスケール値を設定
		float zScale = 3.0f;
		if (i == 4) zScale = 2.0f;
		if (i == 5) zScale = 2.0f;
		if (i == 6) zScale = 2.0f;
		if (i == 7) zScale = 2.0f;

		// Y軸の回転値を設定
		float yRotate = 45.0f;
		if (i == 1) yRotate = 60.0f;
		if (i == 2) yRotate = 52.0f;
		if (i == 3) yRotate = 48.0f;
		if (i == 4) yRotate = 90.0f;
		if (i == 5) yRotate = 90.0f;
		if (i == 6) yRotate = 90.0f;
		if (i == 7) yRotate = 45.0f;
	
		// オブジェクトを作成してタスクに追加
		CNumberFloor1* numberfloor1 = new CNumberFloor1
		(
			CVector(xPos, yPos, zPos),
			CVector(xScale, 2.0f, zScale),
			CVector(0.0f, yRotate, 0.0f)
		);

		AddTask(numberfloor1); // タスクに追加
	}

	// オブジェクトを配置するループ
	for (int i = 0; i < 2; ++i) {

		// X軸の位置を設定
		float xPos = 0.0f;
		if (i == 0) xPos = 75.0f;
		if (i == 1) xPos = -23.0f;

		// Y軸の位置を設定
		float yPos = 0.0f;
		if (i == 0) yPos = 0.0f;
		if (i == 1) yPos = 0.0f;

		// Z軸の位置を設定
		float zPos = 0.0f;
		if (i == 0) zPos = 305.0f;
		if (i == 1) zPos = 305.0f;

		// X軸のスケール値を設定
		float xScale = 3.0f;

		// Z軸のスケール値を設定
		float zScale = 3.0f;
		
		// オブジェクトを作成してタスクに追加
		CNumberFloor2* numberfloor2 = new CNumberFloor2
		(
			CVector(xPos, yPos, zPos),
			CVector(xScale, 2.0f, zScale),
			CVector(0.0f, 45.0f, 0.0f)
		);

		AddTask(numberfloor2); // タスクに追加
	}

	// オブジェクトを配置するループ
	for (int i = 0; i < 10; ++i) {

		// X軸の位置を設定
		float xPos = 0.0f;
		if (i == 0) xPos = 26.0f;
		if (i == 1) xPos = 26.0f;
		// 左ルート
		if (i == 2) xPos = 95.0f;
		if (i == 3) xPos = 143.0f;
		if (i == 4) xPos = 173.0f;
		if (i == 5) xPos = 240.0f;
		if (i == 6) xPos = 240.0f;
		// ゴール付近
		if (i == 7) xPos = 26.0f;
		if (i == 8) xPos = 26.0f;
		if (i == 9) xPos = 26.0f;
		
		// Y軸の位置を設定
		float yPos = 0.0f;
		if (i == 0) yPos = -35.0f;
		if (i == 1) yPos = 5.0f;
		// 左ルート
		if (i == 2) yPos = 0.0f;
		if (i == 3) yPos = 0.0f;
		if (i == 4) yPos = 0.0f;
		if (i == 5) yPos = 0.0f;
		if (i == 6) yPos = 0.0f;
		// ゴール付近
		if (i == 7) yPos = 5.0f;
		if (i == 8) yPos = 15.0f;
		if (i == 9) yPos = 25.0f;

		// Z軸の位置を設定
		float zPos = 0.0f;
		if (i == 0) zPos = 26.0f;
		if (i == 1) zPos = 630.0f;
		// 左ルート
		if (i == 2) zPos = 720.0f;
		if (i == 3) zPos = 770.0f;
		if (i == 4) zPos = 820.0f;
		if (i == 5) zPos = 1100.0f;
		if (i == 5) zPos = 1250.0f;
		// ゴール付近
		if (i == 7) zPos = 1450.0f;
		if (i == 8) zPos = 1500.0f;
		if (i == 9) zPos = 1580.0f;
		
		// X軸のスケール値を設定
		float xScale = 3.0f;
		if (i == 5) xScale = 5.0f;

		// Z軸のスケール値を設定
		float zScale = 3.0f;
		if (i == 5) zScale = 5.0f;

		// Y軸の回転値を設定
		float yRotate = 45.0f;
		if (i == 2) yRotate = 30.0f;
		if (i == 3) yRotate = 38.0f;
		if (i == 4) yRotate = 45.0f;
		
		// オブジェクトを作成してタスクに追加
		CNumberFloor3* numberfloor3 = new CNumberFloor3
		(
			CVector(xPos, yPos, zPos),
			CVector(xScale, 2.0f, zScale),
			CVector(0.0f, yRotate, 0.0f)
		);

		AddTask(numberfloor3); // タスクに追加
	}

	// 動く床(右円回転)
	CCircleNbFlRight3* floor3right1 = new CCircleNbFlRight3
	(
		CVector(26.0f, -3.0f, 490.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, 45.0f, 0.0f),
		30.0f, 35.0f, 35.0f,
		true
	);
	AddTask(floor3right1);

	// 動く床(左円回転)
	CCircleNbFlLeft3* floor3left1 = new CCircleNbFlLeft3
	(
		CVector(220.0f, -5.0f, 927.0f),
		CVector(3.0f, 3.0f, 3.0f),
		CVector(0.0f, 45.0f, 0.0f),
		30.0f, 30.0f, 30.0f,
		true
	);
	AddTask(floor3left1);

	// 動く床(右円回転)
	CCircleNbFlRight1* floor1right1 = new CCircleNbFlRight1
	(
		CVector(-165.0f, -5.0f, 910.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, 45.0f, 0.0f),
		30.0f, 30.0f, 40.0f,
		false
	);
	AddTask(floor1right1);

	// 上下移動する床(3回)
	CNbFlUpDown3* floor3updown1 = new CNbFlUpDown3
	(
		CVector(240.0f, -5.0f, 1100.0f),
		CVector(5.0f, 2.0f, 5.0f),
		CVector(0.0f, 45.0f, 0.0f),
		CVector(0.0f, 30.0f, 0.0f),
		10.0f
	);
	AddTask(floor3updown1);

	// 上下移動する床(1回)
	CNbFlUpDown1* floor1updown1 = new CNbFlUpDown1
	(
		CVector(-295.0f, -5.0f, 1080.0f),
		CVector(3.0f, 2.0f, 3.0f),
		CVector(0.0f, 45.0f, 0.0f),
		CVector(0.0f, 30.0f, 0.0f),
		13.0f
	);
	AddTask(floor1updown1);

	// 指定した移動ポイント間を移動する回数制限床
	CMoveToNbFl3* mn3f1 = new CMoveToNbFl3
	(
		CVector(3.0f, 2.0f, 3.0f),
		CVector(0.0f, 45.0f, 0.0f),
		5.0f
	);
	mn3f1->SetReturnRoute(false);
	mn3f1->AddMovePoint(CVector(-52.0f, 0.0f, 473.0f), 10.0f);
	mn3f1->AddMovePoint(CVector(-52.0f, 0.0f, 630.0f), 8.0f);
	AddTask(mn3f1);

	// 指定した移動ポイント間を移動する回数制限床
	CMoveToNbFl3* mn3f2 = new CMoveToNbFl3
	(
		CVector(3.0f, 2.0f, 3.0f),
		CVector(0.0f, 45.0f, 0.0f),
		5.0f
	);
	mn3f2->SetReturnRoute(false);
	mn3f2->AddMovePoint(CVector(105.0f, 0.0f, 630.0f), 10.0f);
	mn3f2->AddMovePoint(CVector(105.0f, 0.0f, 473.0f), 10.0f);
	AddTask(mn3f2);

	// 指定した移動ポイント間を移動する回数制限床
	CMoveToNbFl3* mn3f4 = new CMoveToNbFl3
	(
		CVector(3.0f, 2.0f, 3.0f),
		CVector(0.0f, 45.0f, 0.0f),
		5.0f
	);
	mn3f4->SetReturnRoute(false);
	mn3f4->AddMovePoint(CVector(133.0f, 0.0f, 1021.0f), 5.0f);
	mn3f4->AddMovePoint(CVector(319.0f, 0.0f, 1021.0f), 5.0f);
	AddTask(mn3f4);

	// 指定した移動ポイント間を移動する回数制限床
	CMoveToNbFl3* mn3f5 = new CMoveToNbFl3
	(
		CVector(3.0f, 2.0f, 3.0f),
		CVector(0.0f, 45.0f, 0.0f),
		5.0f
	);
	mn3f5->SetReturnRoute(false);
	mn3f5->AddMovePoint(CVector(319.0f, 0.0f, 1164.0f), 5.0f);
	mn3f5->AddMovePoint(CVector(133.0f, 0.0f, 1164.0f), 5.0f);
	AddTask(mn3f5);

	// 指定した移動ポイント間を移動する回数制限床
	CMoveToNbFl2* mn2f1 = new CMoveToNbFl2
	(
		CVector(4.0f, 2.0f, 3.0f),
		CVector(0.0f, 45.0f, 0.0f),
		5.0f
	);
	mn2f1->SetReturnRoute(false);
	mn2f1->AddMovePoint(CVector(-355.0f, 0.0f, 926.0f), 5.0f);
	mn2f1->AddMovePoint(CVector(-355.0f, 0.0f, 1330.0f), 15.0f);
	AddTask(mn2f1);

	// 常時出ている針モデル
	CAlwaysVerticalNeedle* alwaysNeedle1 = new CAlwaysVerticalNeedle
	(
		CVector(26.0f, 7.0f, 580.0f),
		CVector(3.0f, 3.0f, 3.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(alwaysNeedle1);

	// 常時出ている針モデル
	CAlwaysVerticalNeedle* alwaysNeedle2 = new CAlwaysVerticalNeedle
	(
		CVector(105.0f, 7.0f, 640.0f),
		CVector(3.0f, 3.0f, 3.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(alwaysNeedle2);

	// 常時出ている針モデル
	CAlwaysVerticalNeedle* alwaysNeedle3 = new CAlwaysVerticalNeedle
	(
		CVector(-52.0f, 7.0f, 640.0f),
		CVector(3.0f, 3.0f, 3.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(alwaysNeedle3);

	// 常時出ている針モデル
	CAlwaysVerticalNeedle* alwaysNeedle4 = new CAlwaysVerticalNeedle
	(
		CVector(103.0f, 4.0f, 1021.0f),
		CVector(3.0f, 3.0f, 3.0f),
		CVector(0.0f, 90.0f, 0.0f)
	);
	AddTask(alwaysNeedle4);

	// 常時出ている針モデル
	CAlwaysVerticalNeedle* alwaysNeedle5 = new CAlwaysVerticalNeedle
	(
		CVector(349.0f, 4.0f, 1021.0f),
		CVector(3.0f, 3.0f, 3.0f),
		CVector(0.0f, -90.0f, 0.0f)
	);
	AddTask(alwaysNeedle5);

	// 常時出ている針モデル
	CAlwaysVerticalNeedle* alwaysNeedle6 = new CAlwaysVerticalNeedle
	(
		CVector(349.0f, 4.0f, 1164.0f),
		CVector(3.0f, 3.0f, 3.0f),
		CVector(0.0f, -90.0f, 0.0f)
	);
	AddTask(alwaysNeedle6);

	// 常時出ている針モデル
	CAlwaysVerticalNeedle* alwaysNeedle7 = new CAlwaysVerticalNeedle
	(
		CVector(103.0f, 4.0f, 1164.0f),
		CVector(3.0f, 3.0f, 3.0f),
		CVector(0.0f, 90.0f, 0.0f)
	);
	AddTask(alwaysNeedle7);

	// 常時出ている針モデル
	CAlwaysVerticalNeedle* alwaysNeedle8 = new CAlwaysVerticalNeedle
	(
		CVector(-196.0f, 4.0f, 930.0f),
		CVector(2.0f, 3.0f, 3.0f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(alwaysNeedle8);

	// バネ(上とバネ)
	CSpring* spring1 = new CSpring
	(
		CVector(26.0f, -26.0f, 114.0f),
		CVector(1.8f, 1.8f, 1.8f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(spring1);
	// バネ(下)
	CSpringLower* springlower1 = new CSpringLower
	(
		CVector(26.0f, -26.0f, 114.0f),
		CVector(1.8f, 1.8f, 1.8f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(springlower1);

	// バネ(上とバネ)
	CSpring* spring2 = new CSpring
	(
		CVector(26.0f, -10.0f, 1407.0f),
		CVector(1.8f, 1.8f, 1.8f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(spring2);
	// バネ(下)
	CSpringLower* springlower2 = new CSpringLower
	(
		CVector(26.0f, -10.0f, 1407.0f),
		CVector(1.8f, 1.8f, 1.8f),
		CVector(0.0f, 0.0f, 0.0f)
	);
	AddTask(springlower2);

	// ずっと回転するモデル
	CRotationg* rotationg1 = new CRotationg
	(
		CVector(-260.0f, 6.0f, 1319.0f),
		CVector(10.0f, 10.0f, 10.0f),
		1.0f
	);
	AddTask(rotationg1);

	// レンガブロック1
	CRengaBlock* renga1 = new CRengaBlock
	(
		CVector(112.0f, 0.0f, 187.0f),
		CVector(6.0f, 6.0f, 6.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(renga1);
	// ハテナブロック1
	CHatenaBlock* hatena1 = new CHatenaBlock
	(
		CVector(112.0f, 0.0f, 195.0f),
		CVector(6.0f, 6.0f, 6.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(hatena1);
	// レンガブロック1
	CRengaBlock* renga2 = new CRengaBlock
	(
		CVector(112.0f, 0.0f, 203.0f),
		CVector(6.0f, 6.0f, 6.0f),
		ETag::ePlayer, ELayer::ePlayer
	);
	AddTask(renga2);

	//// 大砲(偏差撃ち)
	//CPowerfulCannon* targetCannon = new CPowerfulCannon
	//(
	//	CVector(26.0f, -5.0f, 1700.0f),
	//	CVector(2.0f, 2.0f, 2.0f),
	//	CVector(0.0f, 180.0f, 0.0f),
	//	"Cannon"
	//);
	//AddTask(targetCannon);
	//// 大砲土台
	//CCannonFoundationsBase* targetCannonfound = new CCannonFoundationsBase
	//(
	//	CVector(26.0f, -5.0f, 1700.0f),
	//	CVector(2.0f, 2.0f, 2.0f),
	//	CVector(0.0f, 180.0f, 0.0f)
	//);
	//AddTask(targetCannonfound);

	//// 大砲
	//CCannon* Cannon = new CCannon
	//(
	//	CVector(10.0f, 0.0f, 1600.0f),
	//	CVector(2.0f, 2.0f, 2.0f),
	//	CVector(0.0f, 90.0f, 0.0f),
	//	"Cannon"
	//);
	//AddTask(Cannon);

	//// 大砲土台
	//CCannonFoundationsBase* Cannonfound = new CCannonFoundationsBase
	//(
	//	CVector(10.0f, 0.0f, 1600.0f),
	//	CVector(2.0f, 2.0f, 2.0f),
	//	CVector(0.0f, 0.0f, 0.0f)
	//);
	//AddTask(Cannonfound);

	// 道中の揺れる弾の大砲 //
	// 大砲
	CHorizontalCannon* cannon1 = new CHorizontalCannon
	(
		CVector(250.0f, 20.0f, 524.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, 90.0f, 0.0f)
	);
	AddTask(cannon1);
	// 大砲土台
	CCannonFoundationsHorizontal* cannonfound1 = new CCannonFoundationsHorizontal
	(
		CVector(250.0f, 20.0f, 524.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, 90.0f, 0.0f)
	);
	AddTask(cannonfound1);

	// 大砲
	CHorizontalCannon* cannon2 = new CHorizontalCannon
	(
		CVector(-200.0f, 20.0f, 524.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, -90.0f, 0.0f)
	);
	AddTask(cannon2);
	// 大砲土台
	CCannonFoundationsHorizontal* cannonfound2 = new CCannonFoundationsHorizontal
	(
		CVector(-200.0f, 20.0f, 524.0f),
		CVector(2.0f, 2.0f, 2.0f),
		CVector(0.0f, -90.0f, 0.0f)
	);
	AddTask(cannonfound2);

	// お肉アイテム
	// 肉1
	CMeat1* meat1 = new CMeat1
	(
		CVector(26.0f, 16.0f, 341.0f),
		CVector(0.0f, 0.0f, 0.0f),
		CVector(4.0f, 4.0f, 4.0f)
	);
	AddTask(meat1);
	meat1->SetMeatNumber(1);

	// 肉2
	CMeat2* meat2 = new CMeat2
	(
		CVector(-296.0f, 45.0f, 1080.0f),
		CVector(0.0f, 0.0f, 0.0f),
		CVector(4.0f, 4.0f, 4.0f)
	);
	meat2->SetMeatNumber(2);
	AddTask(meat2);

	// 肉3
	CMeat3* meat3 = new CMeat3
	(
		CVector(26.0f, 25.0f, 1407.0f),
		CVector(0.0f, 0.0f, 0.0f),
		CVector(4.0f, 4.0f, 4.0f)
	);
	meat3->SetMeatNumber(3);
	AddTask(meat3);

	// モンスター(プレイヤー)
	CPlayer* player = CPlayer::Instance();
	player->MaxStatus();
	// 初期値点		   : 26.0f, 6.5f, -28.0f
	// セーブポイント1 : 26.0f, 10.0f, 390.0f
	// セーブポイント2 : 26.0f, 10.0f, 673.0f
	// ゴール前		   : 26.0f, 10.0f, 1380.0f
	CVector playerPos = CVector(26.0f, 6.5f, -28.0f);
	if (player != nullptr)
	{
		player->SetStartPosition(playerPos);
		player->Rotation(0.0f, 0.0f, 0.0f);
	}
	// カメラの位置と向きを設定
	CVector camPos = playerPos + player->Rotation() * CVector(0.0f, 19.0f, -80.0f);
	CCamera* mainCamera = CCamera::MainCamera();
	mainCamera->LookAt(
		camPos,
		playerPos,
		CVector::up
	);
	mainCamera->SetFollowTargetTf(player);
	// スフィアかメッシュぐらい
	//mainCamera->AddCollider(mpField_Worlds_1->GetWallCol());



	// ブルーメダル獲得イベントを生成
	/*CBlueMedalEvent* bmEvent = new CBlueMedalEvent();
	AddTask(bmEvent);*/

	///////////////////////////////////////////////////////////////////////////

	//// ブルーメダルを作成
	//CBlueMedal* medal1 = new CBlueMedal
	//(
	//	CVector(70.0f, 22.0f, 325.0f),
	//	CVector(3.0f, 3.0f, 3.0f)
	//);
	//AddTask(medal1);
	//medal1->SetEvent(bmEvent);
	//bmEvent->AddBlueMedal(medal1);

	//CBlueMedal* medal2 = new CBlueMedal
	//(
	//	CVector(-70.0f, 22.0f, 455.0f),
	//	CVector(3.0f, 3.0f, 3.0f)
	//);
	//AddTask(medal2);
	//medal2->SetEvent(bmEvent);
	//bmEvent->AddBlueMedal(medal2);

	//CBlueMedal* medal3 = new CBlueMedal
	//(
	//	CVector(70.0f, 22.0f, 455.0f),
	//	CVector(3.0f, 3.0f, 3.0f)
	//);
	//AddTask(medal3);
	//medal3->SetEvent(bmEvent);
	//bmEvent->AddBlueMedal(medal3);

	//CBlueMedal* medal4 = new CBlueMedal
	//(
	//	CVector(0.0f, 22.0f, 130.0f),
	//	CVector(3.0f, 3.0f, 3.0f)
	//);
	//AddTask(medal4);
	//medal4->SetEvent(bmEvent);
	//bmEvent->AddBlueMedal(medal4);

	///////////////////////////////////////////////////////////////////////////

	////障害物の壁を作成
	//CObstacleWall* wall = new CObstacleWall
	//(
	//	CVector(0.0f, 25.0f, 623.0f),
	//	CQuaternion(0.0f, 0.0f, 0.0f),
	//	CVector(4.0f, 20.0f, 0.2f)
	//);
	//AddTask(wall);
	//wall->SetEvent(bmEvent);
	//bmEvent->SetObstacle(wall);
}

// ステージ破棄
void CStage1::Unload()
{
	// カメラから衝突するコライダーを取り除く
	//CCamera* mainCamera = CCamera::MainCamera();
	//mainCamera->RemoveCollider(mpField_Worlds_1->GetWallCol());
	CStageBase::Unload();
}