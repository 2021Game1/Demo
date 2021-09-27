#include "CKey.h"

//1バイトの種類分のフラグ作成
bool CKey::Flg[256];	//true:押し中　false:押されていない
//keyが押された瞬間だけtrueを返す
bool CKey::Once(char key) {
	//キーが押されているか
	if ((GetKeyState(key) & 0x8000)) {
		//!演算子：否定
		//押し中か判定
		if (!Flg[key]) {
			//押し中にする
			Flg[key] = true;
			//初めて押されたのでtrue返す
			return true;
		}
	}
	else {
		//押されていないのでfalseにする
		Flg[key] = false;
	}
	//押されていないか、押し中
	return false;
}

bool CKey::Push(char key) {
	/*
	GetKeyState関数は引数のキーが押されている状態だと
	先頭ビットが1の16ビットの値を返します。
	押されていないと先頭ビットは0です。
	0x8000は1000000000000000の16ビットの値
	（16ビットの2進数）です。
	&は論理積演算(AND)です。
	*/
	return (GetKeyState(key) & 0x8000) == 0x8000;
}
