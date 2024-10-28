#ifndef CRECOVERYOBJECT_H
#define CRECOVERYOBJECT_H
#include "CObjectBase.h"
#include "CItemObjectBase.h"
#include "CColliderLine.h"
#include "CColliderSphere.h"
#include "CModel.h"
class CSound;

// 回復アイテムオブジェのベースクラス
class CRecoveryObject : public CItemObjectBase
{
public:
	CRecoveryObject();
	~CRecoveryObject();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突したときの情報</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	// 回復開始
	void RecoverStart();
	// 回復終了
	void RecoverEnd();


	// 更新処理
	void Update();
	// 描画処理
	void Render();

	// 回復アイテムの行列を取得
	//CMatrix Matrix() const override;

private:

	// 移動処理
	// 手前
	void MoveFront();
	// 奥
	void MoveBack();
	// 右
	void MoveRight();
	// 左
	void MoveLeft();

	// モデル・素材関連
	// 回復モデル
	CModel* mpRecoverModel;
	// 回復判定用のコライダー
	CColliderSphere* mpRecoverCol;

	// 回復したときのSE
	CSound* mpRecoberSE;


	// ベクトル関連
	// 移動方向
	CVector mMoveVector;
	// 移動速度
	CVector mMoveSpeed;
	// 見る方向
	CVector mTargetDir;


	// 変数関連
	// カウント
	int mSwitchCounter;
	// 計測時間
	float mElapsedTime;
	// 床に接地しているか
	bool mIsGround;
	// 回復したかどうか
	bool mRecoveryUsed;
};
#endif