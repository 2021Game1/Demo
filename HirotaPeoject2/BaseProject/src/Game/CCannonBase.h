#ifndef CCANNONBASE_H
#define CCANNONBASE_H

#include "CObjectBase.h"
#include "CModel.h"

class CPlayer;

// 大砲クラス
class CCannonBase : public CObjectBase
{
public:
	/// <summary>
	/// デストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	CCannonBase(const CVector& pos, const CVector& scale, const CVector& rot);
	// デストラクタ
	virtual ~CCannonBase();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した自身のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新処理
	virtual void Update() override;
	// 描画処理
	void Render() override;

protected:

	// プレイヤーを見つける処理
	bool IsFoundPlayer() const;

	// 大砲モデル
	CModel* mpCannon;
	// 最初に向いている方向
	CVector InitialVectorZ;
};

class CCannonFoundationsBase : public CObjectBase
{
public:
	/// <summary>
	/// デストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	CCannonFoundationsBase(const CVector& pos, const CVector& scale, const CVector& rot,
		std::string modelPath = "CannonFound");
	// デストラクタ
	~CCannonFoundationsBase();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した自身のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit) override;

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

protected:

	// 大砲の土台モデル
	CModel* mpFoundations;
};
#endif