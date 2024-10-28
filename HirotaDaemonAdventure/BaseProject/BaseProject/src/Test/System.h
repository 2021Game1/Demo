#pragma once
class CColor;

namespace System
{
	/// <summary>
	/// ゲームを終了
	/// </summary>
	void ExitGame();
	/// <summary>
	/// ゲームを終了するかどうかを返す
	/// </summary>
	/// <returns>trueなら、ゲームを終了</returns>
	bool IsExitGame();
	/// <summary>
	/// 画面のクリアから―を設定（rgba）
	/// </summary>
	/// <param name="r">設定する色の赤要素</param>
	/// <param name="g">設定する色の緑要素</param>
	/// <param name="b">設定する色の青要素</param>
	/// <param name="a">設定する色のアルファ値</param>
	void SetClearColor(float r, float g, float b, float a);
	/// <summary>
	/// 画面のクリアカラーを設定（CColor）
	/// </summary>
	/// <param name="color">設定する色</param>
	void SetClearColor(const CColor& color);
}