#pragma once
#include <initializer_list>

// 衝突判定レイヤー
enum class ELayer
{
	eNone = -1,
	eTest,

	eField,
	eStageMenuObject,		// ステージメニューのオブジェクト
	eFieldWall,
	eFieldEnemyWall,

	eClimb,					// 登れるコライダー
	eClimbedTop,			// 登れる壁の頂上コライダー
	eWireClimb,				// 登れる金網コライダー
	eWireClimbedTop,		// 登れる金網の頂上コライダー
	eWireMoveClimb,			// 登れる動く金網コライダー
	eWireMoveClimbedTop,	// 登れる金網の頂上コライダー
	eMetalLadder,			// 金属梯子のコライダー
	eMetalLadderTop,		// 金属梯子の頂上コライダー
	
	eFall,			// 落下判定用のコライダー

	eEffect,
	ePlayer,
	eEnemy,


	eVarious,		// 色々コライダー
	eSavePoint1,	// セーブポイントのコライダー
	eSavePoint2,	// セーブポイントのコライダー
	eFlame,			// 炎のコライダー
	eSmoke,			// 煙のコライダー
	eFlameWall,		// 火炎放射器のコライダー
	eBiribiri,		// ビリビリコライダー
	eRecoverCol,	// 回復コライダー
	eInvincbleCol,	// 無敵コライダー
	eMedalCol,		// メダルコライダー
	eMeatCol,		// 肉コライダー
	eAttackCol,		// 攻撃を与える時のコライダー
	eElectricCol,	// 電撃コライダー
	eBulletCol,		// 弾のコライダー
	eKickCol,		// キックコライダー
	eDamageCol,		// ダメージを受ける時のコライダー
	eJumpingCol,	// ジャンプさせるコライダー
	eReflection,	// 反射コライダー
	eReflectionJump,// 反射ジャンプコライダー
	eFallingCol,	// 落下ブロックコライダー
	eGoalCol,		// ゴールのコライダー
	eDamageObject,	// ダメージを与えるコライダー
	eBlockCol,		// ブロックのコライダー
	eNeedleCol,		// 針ブロックのコライダー
};
// 衝突判定レイヤーの初期化リスト
using Layers = std::initializer_list<ELayer>;
