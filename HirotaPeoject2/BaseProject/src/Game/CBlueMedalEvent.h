#ifndef CBLUEMEDALEVENT_H
#define CBLUEMEDALEVENT_H

#include "CTask.h"
#include <list>

class CBlueMedal;
class CObstacle;

// 青メダル獲得時に発生するイベント管理クラス
class CBlueMedalEvent : public CTask
{
public:
	// コンストラクタ
	CBlueMedalEvent();
	// デストラクタ
	~CBlueMedalEvent();

	// ブルーメダルを追加
	void AddBlueMedal(CBlueMedal* medal);
	// ブルーメダルを獲得時に呼び出す
	void KilledBlueMedal(CBlueMedal* medal);

	// 障害物を設定
	void SetObstacle(CObstacle* obj);
	// 障害物が削除されるときに呼び出す
	void KilledObstacle(CObstacle* obj);

	// 更新
	void Update() override;

private:
	// 全て獲得したらイベントが発生するブルーメダルのリスト
	std::list<CBlueMedal*> mBlueMedals;
	// 障害物
	CObstacle* mpObstacle;
};
#endif