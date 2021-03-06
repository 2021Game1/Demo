#ifndef CKEY_H
#define CKEY_H

//GetKeyState関数のヘッダファイル
#include <Windows.h>
/*
CKeyクラス
キーボード入力を取得する
*/
class CKey {
public:
	static bool Flg[256]; //キーが押されている時はtrue
	/*
	Pushはstatic(スタティック)メソッド
	keyの値のキーが押されていればtrueを、
	押されていなければfalseを戻す
	*/
	static bool Push(char key);
	//キーが押された瞬間だけtrueを返す
	static bool Once(char key);
};

#endif
