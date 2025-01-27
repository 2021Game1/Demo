#include "CPlayer3.h"
#include "CInput.h"
#include "CNavNode.h"
#include "CNavManager.h"
#include "CColliderSphere.h"
#include "CInteractObject.h"
#include "Maths.h"
#include "CGaugeUI.h"
#include "CHpGauge.h"
#include "CStGauge.h"
#include "CSceneManager.h"

#include "CDebugFieldOfView.h"

// プレイヤーのインスタンス
CPlayer3* CPlayer3::spInstatnce = nullptr;

// プレイヤーのアニメーションデータのテーブル
const CPlayer3::AnimData CPlayer3::ANIM_DATA[] =
{
	{ "",											true,	  59.0f	},	// Tポーズ
};

// コンストラクタ
CPlayer3::CPlayer3()
	: CXCharacter(ETag::ePlayer, ETaskPriority::ePlayer)
	, mState(EState::eTPose)
{
	// インスタンスの設定
	spInstatnce = this;

	// モデルデータ取得
	CModelX* model = CResourceManager::Get<CModelX>("Ghost");

	// テーブル内のアニメーションデータを読み込み
	int size = ARRAY_SIZE(ANIM_DATA);
	for (int i = 0; i < size; i++)
	{
		const AnimData& data = ANIM_DATA[i];
		if (data.path.empty()) continue;
		model->AddAnimationSet(data.path.c_str());
	}
	// CXCharacterの初期化
	Init(model);

	// 最初は待機アニメーションを再生
	ChangeAnimation(EAnimType::eTPose);
}

// デストラクタ
CPlayer3::~CPlayer3()
{
	spInstatnce = nullptr;
}

// インスタンスのポインタの取得
CPlayer3* CPlayer3::Instance()
{
	return spInstatnce;
}

// 更新処理
void CPlayer3::Update()
{
	// キャラクターの更新
	CXCharacter::Update();
}

// ステータスを整数にして取得する
int CPlayer3::GetState()
{
	return static_cast<int>(mState);
}

// 衝突判定
void CPlayer3::Collision(CCollider* self, CCollider* other, const CHitInfo& hit)
{
}

// ダメージ処理
void CPlayer3::TakeDamege(int damage)
{
}

// 描画処理
void CPlayer3::Render()
{
	CXCharacter::Render();
}

// アニメーションの切り替え
void CPlayer3::ChangeAnimation(EAnimType type)
{
	int index = (int)type;
	if (!(0 <= index && index < (int)EAnimType::Num)) return;
	const AnimData& data = ANIM_DATA[index];
	CXCharacter::ChangeAnimation(index, data.loop, data.framelength);
}
