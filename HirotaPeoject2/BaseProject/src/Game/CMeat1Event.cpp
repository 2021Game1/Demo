#include "CMeat1Event.h"
#include "CMeat1.h"
#include "CHighKinoko.h"
#include "CStageManager.h"
#include "CMeat1.h"

// コンストラクタ
CMeat1Event::CMeat1Event()
	: CTask(ETaskPriority::eEvent, 0, ETaskPauseType::eGame, false, true)
	, mpKinoko(nullptr)
{

}

// デストラクタ
CMeat1Event::~CMeat1Event()
{
	// 作成したタスクを取り除く
	CStageManager::RemoveTask(this);
	// 肉1がまだ存在していたら、
	// 肉から自身のイベントへのリンクを解除
	for (CMeat1* meat1 : mMeats)
	{
		meat1->SetEvent(nullptr);
	}
	
	// ハイジャンプキノコがまだ存在していたら
	// ハイジャンプキノコから自信のイベントへのリンクを解除
	if (mpKinoko != nullptr)
	{
		mpKinoko->SetEvent(nullptr);
	}
}

// 肉を追加
void CMeat1Event::AddMeat1(CMeat1* meat)
{
	// 肉のリストに追加
	mMeats.push_back(meat);
}

// 肉を獲得時に呼び出す
void CMeat1Event::KilledMeat1(CMeat1* meat)
{
	// 肉のリスト内に肉が存在しない場合は処理しない
	if (mMeats.size() == 0) return;

	// 肉のリストから取り除く
	// killしないのでコメントアウト
	//mMeats.remove(meat);

	CMeat1* meat1 = CMeat1::Instance();
	bool IsMeat = meat1->IsMeat1();

	// 肉を獲得したら
	//mMeats.size() == 0
	if (IsMeat)
	{
		if (mpKinoko != nullptr)
		{
			mpKinoko->Alpha();
		}
	}
}

// ハイジャンプキノコを設定
void CMeat1Event::SetHighKinoko(CHighKinoko* kinoko)
{
	mpKinoko = kinoko;
}

// ハイジャンプキノコが削除されるときに呼び出す
void CMeat1Event::KilledHighKinoko(CHighKinoko* kinoko)
{
	mpKinoko = nullptr;

	// ハイジャンプキノコの削除まで終われば、
	// 管理クラスは不要なので削除する
	Kill();
}

// 更新処理
void CMeat1Event::Update()
{

}