#pragma once

//シーンの種類
enum class EScene
{
	eNone,	//どのシーンにも所属していない

	eTitle,	//タイトルシーン
	eGame,	//ゲームシーン
	eGame2,	// ゲームシーン2
	eGame3,	// ゲームシーン3
	eGame4,	// ゲームシーン4

	eGameOver,	// ゲームオーバーシーン
	eClear,		// クリアシーン

	eBootMenu,	//起動時メニュー
	eColTest,	//衝突判定テスト
};
