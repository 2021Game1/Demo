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
	if (!col0->IsCollision(col1))
		return;
	if (!col1->IsCollision(col0))
		return;

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

void CCollisionManager::Add(CTree* add)
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

void CCollisionManager::Add(CTree* parent, CTree* add)
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

//int max = 0;
//int nest = 0;

void CCollisionManager::Collision(CTree* m, CTree* o, int low, int high)
{
	if (o == nullptr) return;
	//printf("%ld:%ld\n", m->mPriority, o->mPriority);
	//oが下限以上の場合
	if (low <= o->mPriority)
	{
		//if (max < ++nest)
		//{
		//	max = nest;
		//	printf("max = %d\n", max);
		//	if (max > 1000)
		//	{
		//		printf("pointer = %x\n", o);
		//		getchar();
		//	}
		//}
		//oの左と衝突判定
		Collision(m, o->mpLeft, low, high);
		//nest--;
		//戻って来てoが上限以下の場合はmと衝突判定
		if (o->mPriority <= high)
		{
			if (m != o)
				Collision((CCollider*)m, (CCollider*)o);
		}
	}
	//oが上限以下の場合
	if (o->mPriority <= high)
	{
		//if (max < ++nest)
		//{
		//	max = nest;
		//	printf("max = %d\n", max);
		//}
		//oの右と衝突判定
		Collision(m, o->mpRight, low, high);
		//nest--;
	}
}

#define COLLISION_RANGE 100 //衝突判定範囲
void CCollisionManager::Collision(CTree* c)
{
	//ルートノードから衝突判定開始
	Collision(c, COLLISION_RANGE);
}

void CCollisionManager::Collision(CTree* c, int range)
{
	//範囲下限を設定
	int low = c->mPriority - range;
	//範囲上限を設定
	int high = c->mPriority + range;

	//ルートノードから衝突判定開始
	Collision(c, mpRoot, low, high);
}

void CCollisionManager::Remove(CTree* remove)
{
	//左がある時は、左の最大値ノードと入替
	if (remove->mpLeft != nullptr)
	{
		//左ノード内の最大値ノードをMaxで取得
		CTree* move = Max(remove->mpLeft);
		//最大値がすぐ左
		if (move == remove->mpLeft)
		{
			remove->mpLeft = move->mpLeft;
		}
		//最大値が左ではない場合
		else
		{
			//最大値の親ノードの右に、最大値ノードの左を歳入
			move->mpParentNode->mpRight = move->mpLeft;
			//最大値ノードの左がある場合
			if (move->mpLeft != nullptr)
				//最大値ノードの左の親に、最大値ノードの親を代入
				move->mpLeft->mpParentNode = move->mpParentNode;
		}
		//removeの位置に、moveを移動させる
		Move(remove, move);
	}
	//左がない時は、右の最小値ノードと入替
	else if (remove->mpRight != nullptr)
	{
		//右ノードの最小値をMinで取得
		CTree* move = Min(remove->mpRight);
		//最小値がすぐ右の場合
		if (move == remove->mpRight)
		{
			remove->mpRight = move->mpRight;
		}
		//最小値がすぐ右でない場合
		else
		{
			//最小値の親ノードの左に、最小値ノードの右を代入
			move->mpParentNode->mpLeft = move->mpRight;
			//最小値ノードの右がある場合
			if (move->mpRight != nullptr)
				//最小値ノードの右の親に、最小値ノードの親を代入
				move->mpRight->mpParentNode = move->mpParentNode;
		}
		//removeの位置に、moveを移動させる
		Move(remove, move);
	}
	//子ノードがない時
	else
	{
		//削除ノードがルートの場合
		if (remove->mpParentNode == remove)
		{
			//ルートを初期値にする
			CCollisionManager::Instance()->mpRoot = nullptr;
		}
		//削除ノードがルート以外の場合
		else
		{
			if (remove->mpParentNode != nullptr)
			{
				//削除ノードが親ノードの左の場合
				if (remove->mpParentNode->mpLeft == remove)
					//削除ノードの親ノードの左を初期化する
					remove->mpParentNode->mpLeft = nullptr;
				//削除ノードが親ノードの右の場合
				if (remove->mpParentNode->mpRight == remove)
					//削除ノードの親ノードの右を初期化する
					remove->mpParentNode->mpRight = nullptr;
			}
		}
	}
	//削除ノードの親、左、右を初期化する
	remove->mpParentNode = remove->mpLeft = remove->mpRight = nullptr;
}

CTree* CCollisionManager::Max(CTree* task)
{
	//一番右にあるノードが最大値
	//一番右にあるノードの右はnullptr
	if (task->mpRight == nullptr)
		return task;
	return Max(task->mpRight);
}

CTree* CCollisionManager::Min(CTree* task)
{
	//一番左にあるノードが最小値
	//一番左にあるノードの左はnullptr
	if (task->mpLeft == nullptr)
		return task;
	return Min(task->mpLeft);
}

void CCollisionManager::Move(CTree* remove, CTree* move)
{
	// 親の更新
	//ルートノードは、親ポインタを自身のポインタにしている
	if (remove->mpParentNode == remove)
	{
		// 削除ノードがルートの場合
		//ルートを移動ノードにして、移動ノードの親を自身のポインタにする
		CCollisionManager::Instance()->mpRoot = move;
		move->mpParentNode = move;
	}
	else
	{
		//削除ノードの親の左が、削除ノードの場合
		if (remove->mpParentNode->mpLeft == remove)
			//削除ノードの親の左を移動ノードにする
			remove->mpParentNode->mpLeft = move;
		//削除ノードの親の右が、削除ノードの場合
		if (remove->mpParentNode->mpRight == remove)
			//削除ノードの親の右を移動ノードにする
			remove->mpParentNode->mpRight = move;
		//移動ノードの親に、削除ノードの親を代入
		move->mpParentNode = remove->mpParentNode;
	}

	// 左の更新
	// 削除ノードに左があれば
	if (remove->mpLeft != nullptr)
	{
		//削除ノードの左の親に、移動ノードを代入
		remove->mpLeft->mpParentNode = move;
	}
	//移動ノードの左に削除ノードの左を代入
	move->mpLeft = remove->mpLeft;

	// 右の更新
	// 削除ノードに右があれば
	if (remove->mpRight != nullptr)
	{
		//削除ノードの右の親に、移動ノードを代入
		remove->mpRight->mpParentNode = move;
	}
	//移動ノードの右に削除ノードの右を代入
	move->mpRight = remove->mpRight;
}

//void CCollisionManager::UpdateAllNode(CTree* t)
//{
//	if (t->mpLeft)
//		UpdateAllNode(t->mpLeft);
//	((CCollider*)t)->Update();
//	((CCollider*)t)->UpdateCol();
//	if (t->mpRight)
//		UpdateAllNode(t->mpRight);
//}