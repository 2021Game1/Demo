#include "CCollisionManager.h"
#include "CCollider.h"
#include "CObjectBase.h"
#include "CDebugInput.h"

// コリジョンマネージャのインスタンス
CCollisionManager* CCollisionManager::mpInstance = nullptr;

// インスタンスを取得
CCollisionManager* CCollisionManager::Instance()
{
	if (mpInstance == nullptr)
	{
		mpInstance = new CCollisionManager();
	}
	return mpInstance;
}

// インスタンスの破棄
void CCollisionManager::ClearInstance()
{
	delete mpInstance;
	mpInstance = nullptr;
}

// コンストラクタ
CCollisionManager::CCollisionManager()
	: mIsShowCollider(false)
	, mpRoot(nullptr)
{
}

// デストラクタ
CCollisionManager::~CCollisionManager()
{
}

// 指定したコライダーをリストに追加
void CCollisionManager::Add(CCollider* col)
{
	// 既にリストに追加されていたら、追加しない
	auto it = std::find(mColliderList.begin(), mColliderList.end(), col);
	if (it != mColliderList.end()) return;

	// リストの最後尾に追加
	mColliderList.push_back(col);
}

// 指定したコライダーをリストから取り除く
void CCollisionManager::Remove(CCollider* col)
{
	mColliderList.remove(col);
}

// 指定した2つのコライダーの衝突処理を行う
void CCollisionManager::Collision(CCollider* col0, CCollider* col1)
{
	// 指定したコライダーが有効でなければ、衝突判定を行わない
	if (col0 == nullptr || col1 == nullptr) return;
	if (!col0->IsEnable() || !col1->IsEnable()) return;
	// 両コライダーに持ち主が存在しない場合は、衝突判定を行わない
	if (col0->Owner() == nullptr && col1->Owner() == nullptr) return;
	// 同じ持ち主のコライダーであれば、衝突判定を行わない
	if (col0->Owner() == col1->Owner()) return;
	// 1つ目のコライダーの持ち主が衝突判定を行わない状態であれば、衝突判定を行わない
	if (col0->Owner() != nullptr && !col0->Owner()->IsEnableCol()) return;
	// 2つ目のコライダーの持ち主が衝突判定を行わない状態であれば、衝突判定を行わない
	if (col1->Owner() != nullptr && !col1->Owner()->IsEnableCol()) return;

	// 相手のコライダーと衝突判定を行うコライダーでなければ、衝突判定を行わない
	if (!col0->IsCollision(col1)) return;
	if (!col1->IsCollision(col0)) return;

	// どちらのコライダーもメッシュコライダーでなければ、
	if (col0->mType != EColliderType::eMesh && col1->mType != EColliderType::eMesh)
	{
		// バウンディングボックス同士が交差していない場合は、衝突判定を行わない
		if (!CBounds::Intersect(col0->Bounds(), col1->Bounds())) return;
	}

	// 衝突判定を行う
	CHitInfo hit;
	bool collision = CCollider::Collision(col0, col1, &hit);
	// 衝突していなければ、衝突処理を行わない
	if (!collision) return;

	// 押し戻しの影響割合を重量で計算
	hit.weight = CCollider::CalcPushBackRatio(col0, col1);
	
	// 各コライダーの持ち主に衝突したことを伝える
	if (col0->Owner() != nullptr)
	{
		col0->Owner()->Collision(col0, col1, hit);
	}
	if (col1->Owner() != nullptr)
	{
		// 押し戻し方向と影響割合を反転
		hit.adjust = -hit.adjust;
		hit.weight = 1.0f - hit.weight;
		col1->Owner()->Collision(col1, col0, hit);
	}
}

// 指定したコライダーと他の全てのコライダーとの衝突処理を行う
void CCollisionManager::Collision(CCollider* col)
{
	// 指定したコライダーが有効でなければ、衝突判定は行わない
	if (col == nullptr) return;
	if (!col->IsEnable()) return;

	// コライダーリスト内の全てコライダーと衝突処理を行う
	for (auto& other : mColliderList)
	{
		// 2つのコライダーの衝突処理を行う
		Collision(col, other);
	}
}

// 全てのコライダーの衝突処理を行う
void CCollisionManager::CollisionAll()
{
	// 衝突判定を行う前に全てのコライダーの情報を更新
	for (CCollider* c : mColliderList)
	{
		c->UpdateCol();
	}

	// リストの先頭から順番に衝突処理を行う
	auto it = mColliderList.begin();
	auto end = mColliderList.end();
	for (; it != end; ++it)
	{
		CCollider* current = *it;

		// currentの次のコライダーから順番に衝突処理を行う
		// （currentより前のコライダーとは既に衝突処理を行っているため）
		auto nextIt = it;
		nextIt++;
		for (; nextIt != end; ++nextIt)
		{
			CCollider* next = *nextIt;
			// 2つのコライダーの衝突処理を行う
			Collision(current, next);
		}
	}
}

// 全コライダーを描画
void CCollisionManager::Render()
{
#if _DEBUG
	// 「SHIFT」+「9」でコライダー表示機能オンオフ
	if (CDebugInput::Key(VK_SHIFT) && CDebugInput::PushKey('9'))
	{
		mIsShowCollider = !mIsShowCollider;
	}
	// コライダー表示フラグがオフなら、以降処理しない
	if (!mIsShowCollider) return;

	// リスト内の全てのコライダーを描画
	for (auto& col : mColliderList)
	{
		col->Render();
	}
#endif
}

void CCollisionManager::Add(CBTree* add)
{
	if (mpRoot == nullptr)
	{
		mpRoot = add;
		add->mpParentNode = mpRoot;
	}
	else
	{
		Add(mpRoot, add);
	}
}

void CCollisionManager::Add(CBTree* parent, CBTree* add)
{
	if (add->mPriority == parent->mPriority)
	{
		if (parent->mpLeft == nullptr)
		{
			add->mpParentNode = parent;
			parent->mpLeft = add;
		}
		else
		{
			add->mpLeft = parent->mpLeft;
			parent->mpLeft->mpParentNode = add;
			parent->mpLeft = add;
			add->mpParentNode = parent;
		}
	}
	else if (add->mPriority < parent->mPriority)
	{
		if (parent->mpLeft == nullptr)
		{
			add->mpParentNode = parent;
			parent->mpLeft = add;
		}
		else
		{
			Add(parent->mpLeft, add);
		}
	}
	else
	{
		if (parent->mpRight == nullptr)
		{
			add->mpParentNode = parent;
			parent->mpRight = add;
		}
		else
		{
			Add(parent->mpRight, add);
		}
	}
}

void CCollisionManager::Collision(CBTree* m, CBTree* o, int low, int high)
{
	if (o == nullptr) return;
	if (low <= o->mPriority)
	{
		Collision(m, o->mpLeft, low, high);
		if (o->mPriority <= high)
		{
			if (m != o)
				Collision((CCollider*)m, (CCollider*)o);
		}
	}
	if (o->mPriority <= high)
	{
		Collision(m, o->mpRight, low, high);
	}
}

#define COLLISION_RANGE 3000 //衝突判定範囲
void CCollisionManager::Collision(CBTree* c)
{
	int low = c->mPriority - COLLISION_RANGE;
	int high = c->mPriority + COLLISION_RANGE;

	Collision(c, mpRoot, low, high);
}

void CCollisionManager::Remove(CBTree* remove)
{
	if (remove->mpLeft != nullptr)
	{
		CBTree* move = Max(remove->mpLeft);
		if (move != remove->mpLeft)
		{
			move->mpParentNode->mpRight = move->mpLeft;
			Move(remove, move);
		}
		else
		{
			remove->mpLeft = move->mpLeft;
			Move(remove, move);
		}
	}
	else if (remove->mpRight != nullptr)
	{
		CBTree* move = Min(remove->mpRight);

		if (move != remove->mpRight)
		{
			move->mpParentNode->mpLeft = move->mpRight;
			Move(remove, move);
		}
		else
		{
			remove->mpRight = move->mpRight;
			Move(remove, move);
		}
	}
	else
	{
		if (remove->mpParentNode == remove)
		{
			CCollisionManager::Instance()->mpRoot = nullptr;
		}
		else
		{
			if (remove->mpParentNode->mpLeft == remove)
				remove->mpParentNode->mpLeft = nullptr;
			if (remove->mpParentNode->mpRight == remove)
				remove->mpParentNode->mpRight = nullptr;
		}
	}
	remove->mpParentNode = remove->mpLeft = remove->mpRight = nullptr;
}

CBTree* CCollisionManager::Max(CBTree* task)
{
	if (task->mpRight == nullptr)
		return task;
	return Max(task->mpRight);
}

CBTree* CCollisionManager::Min(CBTree* task)
{
	if (task->mpLeft == nullptr)
		return task;
	return Min(task->mpLeft);
}

void CCollisionManager::Move(CBTree* dest, CBTree* src)
{
	// Parentの更新
	if (dest->mpParentNode == dest)
	{
		// destがRootの時
		CCollisionManager::Instance()->mpRoot = src;
		src->mpParentNode = src;
	}
	else
	{
		if (dest->mpParentNode->mpLeft == dest)
			dest->mpParentNode->mpLeft = src;
		if (dest->mpParentNode->mpRight == dest)
			dest->mpParentNode->mpRight = src;
		src->mpParentNode = dest->mpParentNode;
	}
	// 左の更新
	if (dest->mpLeft != nullptr)
	{
		dest->mpLeft->mpParentNode = src;
	}
	src->mpLeft = dest->mpLeft;
	// 右の更新
	if (dest->mpRight != nullptr)
	{
		dest->mpRight->mpParentNode = src;
	}
	src->mpRight = dest->mpRight;
}

void CCollisionManager::UpdateAllNode(CBTree* t)
{
	if (t->mpLeft)
		UpdateAllNode(t->mpLeft);
	((CCollider*)t)->Update();
	((CCollider*)t)->UpdateCol();
	if (t->mpRight)
		UpdateAllNode(t->mpRight);
}