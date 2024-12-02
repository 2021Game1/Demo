#ifndef CMEAT1EVENT_H
#define CMEAT1EVENT_H

#include "CTask.h"
#include <list>

class CMeat1;
class CHighKinoko;

// 肉1獲得時に発生するイベント管理クラス
class CMeat1Event : public CTask
{
public:
	// コンストラクタ
	CMeat1Event();
	// デストラクタ
	~CMeat1Event();

	// 肉を追加
	void AddMeat1(CMeat1* meat);
	// 肉を獲得時に呼び出す
	void KilledMeat1(CMeat1* meat);

	// ハイジャンプキノコを設定
	void SetHighKinoko(CHighKinoko* kinoko);
	// ハイジャンプキノコが削除されるときに呼び出す
	void KilledHighKinoko(CHighKinoko* kinoko);

	// 更新処理
	void Update() override;
private:
	// 獲得したらイベントが発生する肉のリスト
	std::list<CMeat1*> mMeats;
	// ハイジャンプキノコ
	CHighKinoko* mpKinoko;
};
#endif