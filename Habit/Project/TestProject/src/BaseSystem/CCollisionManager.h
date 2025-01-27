#pragma once
#include <list>
#include "CCollider.h"

/// <summary>
/// 衝突処理の管理クラス
/// </summary>
class CCollisionManager
{
public:
	/// <summary>
	/// インスタンスを取得
	/// </summary>
	/// <returns>インスタンス</returns>
	static CCollisionManager* Instance();
	// インスタンスの破棄
	static void ClearInstance();

	/// <summary>
	/// 指定したコライダーをリストに追加
	/// </summary>
	/// <param name="col">追加するコライダー</param>
	void Add(CCollider* col);
	/// <summary>
	/// 指定したコライダーをリストから取り除く
	/// </summary>
	/// <param name="col">取り除くコライダー</param>
	void Remove(CCollider* col);

	/// <summary>
	/// 指定した2つのコライダーの衝突処理を行う
	/// </summary>
	/// <param name="col0">衝突処理を行うコライダー 1つ目</param>
	/// <param name="col1">衝突処理を行うコライダー 2つ目</param>
	void Collision(CCollider* col0, CCollider* col1);
	/// <summary>
	/// 指定したコライダーと他の全てのコライダーとの衝突処理を行う
	/// </summary>
	/// <param name="col">衝突処理を行うコライダー</param>
	void Collision(CCollider* col);
	/// <summary>
	/// 全てのコライダーの衝突処理を行う
	/// </summary>
	void CollisionAll();

	// 全コライダーを描画
	void Render();

	//２分探索化
	void Add(CBTree* add);
	void Add(CBTree* parent, CBTree* add);

	void Collision(CBTree* m, CBTree* o, int low, int high);
	void Collision(CBTree* c);

	// Remove(削除ノード)
	void Remove(CBTree* remove);
	// 最大値下位ノードの取得
	CBTree* Max(CBTree* task);
	// 最小値下位ノードの取得
	CBTree* Min(CBTree* task);
	// Move(移動先, 移動元）
	void Move(CBTree* dest, CBTree* src);
	void UpdateAllNode(CBTree* t);

	//2分探索木
	CBTree* mpRoot;
private:
	// コンストラクタ
	CCollisionManager();
	// デストラクタ
	~CCollisionManager();

	// コリジョンマネージャのインスタンス
	static CCollisionManager* mpInstance;
	// コライダーのリスト
	std::list<CCollider*> mColliderList;
	// コライダーを描画するかどうか
	bool mIsShowCollider;

};

