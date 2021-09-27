#include "CRectangle.h"
//vector型のインクルード
#include <vector>
/*
可変長配列の定義
std;;vector<配列要素のデータ型> 配列名
*/
std::vector<CRectangle*> VectorRect;

//デフォルトコンストラクタ
CRectangle::CRectangle()
: mTag(EBLOCK)	//初期値ブロック
//37
, mEnabled(true)
, mStatus(EDISABLED)
{
	/*
	可変長配列に自身のポインタを追加する
	配列名.push_back(値)
	値を配列の最後に追加する
	*/
	VectorRect.push_back(this);
}


void CRectangle::DrawTriangle(int x0, int y0, int x1, int y1, int x2, int y2) {
	//三角形の描画
	glBegin(GL_TRIANGLES);	//三角形の描画開始
	glVertex2d(x0, y0);		//頂点１の座標を指定
	glVertex2d(x1, y1);		//頂点２の座標を指定
	glVertex2d(x2, y2);		//頂点３の座標を指定
	glEnd();	//描画終了
}

void CRectangle::DrawRectangle(int x0, int y0, int x1, int y1, int x2, int y2, int x3, int y3) {
	DrawTriangle(x0, y0, x1, y1, x2, y2);
	DrawTriangle(x0, y0, x2, y2, x3, y3);
}

void CRectangle::Render() {
	//クラスメンバの変数x,y,w,hを使用します
	DrawRectangle(x + w, y + h, x - w, y + h, x - w, y - h, x + w, y - h);
}

bool CRectangle::Collision(const CRectangle &r) {
	//X軸の重なりを判定
	//中心のX座標の距離を求める
	int lenX = x - r.x;
	//距離の絶対値を求める
	lenX = lenX < 0 ? -lenX : lenX;
	//距離が幅の合計より大きいとき、X軸は重なっていない
	if (lenX > w + r.w) {
		//重なってなければ、衝突していない
		//falseを返す
		return false;
	}

	//Y軸の重なり判定
	//中心のY座標の距離を求める
	int lenY = y - r.y;
	//距離の絶対値を求める
	lenY = lenY < 0 ? -lenY : lenY;
	//距離が幅の合計より大きいとき、Y軸は重なっていない
	if (lenY > h + r.h) {
		//重なってなければ、衝突していない
		//falseを返す
		return false;
	}

	//X軸、Y軸ともに重なっているので、trueを返す
	return true;
}

bool CRectangle::Collision(CRectangle *pr, int *px, int *py) {
	//xとyを0に0を代入
	*px = 0;
	*py = 0;
	//X軸の重なりを判定
	//中心のX座標の距離を求める
	int lenX = x - pr->x;
	//距離の絶対値を求める
	lenX = lenX < 0 ? -lenX : lenX;
	//距離が幅の合計より小さいとき、X軸は重なっている
	if (lenX < w + pr->w) {
		//戻す量を計算
		if (x < pr->x) {
			//相手が右の時は左へ移動
			*px = lenX - w - pr->w;
		}
		else {
			//相手が左の時は右へ移動
			*px = w + pr->w - lenX;
		}
	}
	else {
		//重なってなければ、衝突していない
		//falseを返す
		return false;
	}
	//Y軸の重なり判定
	//中心のX座標の距離を求める
	int lenY = y - pr->y;
	//距離の絶対値を求める
	lenY = lenY < 0 ? -lenY : lenY;
	//距離が幅の合計より小さいとき、Y軸は重なっている
	if (lenY < h + pr->h) {
		//戻す量を計算
		if (y < pr->y) {
			//相手が右の時は左へ移動
			*py = lenY - h - pr->h;
		}
		else {
			//相手が左の時は右へ移動
			*py = h + pr->h - lenY;
		}
	}
	else {
		//重なってなければ、衝突していない
		//falseを返す
		return false;
	}

	//X軸、Y軸ともに重なっているので、trueを返す
	return true;
}
