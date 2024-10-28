#pragma once

// Taskの優先順序
enum class ETaskPriority
{
	eNone = -1,

	// イベント関連
	eEvent,

	// 3D関連
	eDefault,		// デフォルト
	eBackground,	// 背景
	eObstacle,		// 障害物
	eKinoko,		// キノコ
	eSeesaw,		// シーソーオブジェクト
	ePlayer,		// プレイヤー
	eEnemy,			// エネミー
	eWeapon,		// プレイヤー武器
	eEnemyWeapon,	// 敵の武器

	eNumberFalling,	// 回数で落下するオブジェクト
	eFall,			// 落下判定用のオブジェクト
	eMedal,			// メダルオブジェクト
	eTransparent,	// 透明オブジェクト
	eFalling,		// 落下オブジェクト
	eRising,		// 上昇するオブジェクト
	eHatenaOBJ,		// ハテナブロックオブジェクト
	eNeedle,		// 針オブジェクト
	eRotate,		// 回転するオブジェクト
	eBillboard,		// ビルボードイメージ
	eEnemyGauge,	// エネミーのゲージ
	eEnemyUi,		// エネミーのUI
	eItem,			// アイテム
	eHealingEffect,	// 回復エフェクト
	eEffect,		// エフェクト
	eSmokeEffecit,	// 煙エフェクト

	eCamera,		// カメラ
	eLeteCamera,	// カメラ後の更新

	// 2D関連
	eUI,			// UI関連のデフォルト
	eFade,			// 画面フェード
	eSystem,		// システム関連
	eDebug,			// デバッグ関連

	Num,

	// 2D関連のタスクの開始位置
	Start2d = eUI,
};