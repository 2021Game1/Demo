#pragma once

//シーンの種類
enum class EScene
{
	eNone,	//どのシーンにも所属していない

	eTitle,			// タイトルシーン
	eGame,			// ゲームシーン
	eClear,			// ゲームクリアシーン
	eOver,			// ゲームオーバーシーン
	eResult,		// リザルトシーン
	eStuffedRoll,	// スタッフロールシーン

	eBootMenu,	//起動時メニュー
	eColTest,	//衝突判定テスト
};
