#pragma once
#include <initializer_list>

// オブジェクト識別用のタグ
enum class ETag
{
	eNone = -1,

	eField,				// フィールドを構成するオブジェクト
	eRideableObject,	// 乗ることができるオブジェクト
	eInteractObject,	// 調べることの出来るオブジェクト
	

	ePlayer,// プレイヤー
	eEnemy,	// エネミー

	eBullet,// 弾丸
	eFlame,	// 炎
	eSlash,	// 斬撃
	eTrap,	// 罠
	eItem,	// アイテムのオブジェクト

	eClear,	// クリアエリア
	eUI,	// UI

	eCamera,// カメラ

	eDebug,	// デバッグ用のオブジェクト

	Num
};
// オブジェクト識別用のタグの初期化リスト
using Tags = std::initializer_list<ETag>;
