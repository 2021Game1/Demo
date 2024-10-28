#pragma once
#include <initializer_list>

// オブジェクト識別用のタグ
enum class ETag
{
	eNone = -1,

	eSky,				// 空

	eBullet,			// 弾丸
	eFlame,				// 炎
	eSlash,				// 斬撃
	eBiribiri,			// ビリビリ
	eSmoke,				// 煙

	eSeesaw,			// シーソー
	ePropeller,			// プロペラ
	eReflection,		// 反射させるオブジェクト
	eField,				// フィールドを構成するオブジェクト
	eStageMenuObject,	// ステージメニューのオブジェクト
	eButton,			// ステージ選択ボタン
	eObstacle,			// 障害物
	eRideableObject,	// 乗ることができるオブジェクト
	eItemRecover,		// 回復アイテムのオブジェクト
	eItemInvincible,	// 無敵アイテム
	eAttackObject,		// 攻撃力アップモデル
	eMedal,				// メダルアイテム
	eMeat,				// 肉アイテム
	eGoalObject,		// クリア条件のオブジェクト
	eSavePoint1,		// セーブポイント
	eSavePoint2,		// セーブポイント
	eJumpingObject,		// ジャンプするオブジェクト
	eNeedleObject,		// 針オブジェクト
	eNumberObject,		// 回数制限オブジェクト
	eFall,				// 落下判定用オブジェクト
	eRingBeam,			// リングビームオブジェクト

	ePlayer,			// プレイヤー
	eEnemy,				// エネミー
	eSoldier,

	eWeapon,			// プレイヤーの武器
	eEnemyWeapon,		// 敵の武器

	eHealing,			// 回復エフェクト

	eBakuhatu,
	eGauge,
	eEnemyFrame,

	eEffect,	// エフェクト
	eBillboard,	// ビルボードイメージ

	eCamera,			// カメラ

	Num
};
// オブジェクト識別用のタグの初期化リスト
using Tags = std::initializer_list<ETag>;