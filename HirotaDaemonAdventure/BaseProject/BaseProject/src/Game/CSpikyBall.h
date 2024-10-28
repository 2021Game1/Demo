#ifndef CSPIKYBALL_H
#define CSPIKYBALL_H
#include "CObjectBase.h"
#include "CWeapon.h"
#include "CColliderSphere.h"
#include "CTrailEffect.h"
#include "CModel.h"

class CPlayer;

// とげとげボールクラス
class CSpikyBall : public CWeapon
{
public:
	// コンストラクタ
	CSpikyBall(const CVector& pos, const CVector& dir,
		float speed, float distance, float initialVelocityY);
	// デストラクタ
	~CSpikyBall();

	/// <summary>
	/// 衝突処理
	/// </summary>
	/// <param name="self">衝突した自身のコライダー</param>
	/// <param name="other">衝突した自身のコライダー</param>
	/// <param name="hit">衝突したときの情報</param>
	void Collision(CCollider* self, CCollider* other, const CHitInfo& hit);

	// 攻撃開始
	void AttackStart() override;

	// 攻撃終了
	void AttackEnd() override;

	// 武器の行列を取得
	CMatrix Matrix() const override;

	// 現在のスピード設定
	void SetSpeed(float newSpeed);
	// 現在の飛距離設定
	void SetDistance(float newDistance);
	// 現在の位置設定
	void SetPosition(CVector pos);
	// 現在の位置を返す
	CVector GetPosition() const;

	/// <summary>
	/// 予測線のパスを設定
	/// </summary>
	/// <param name="startPosition">弾の初期位置</param>
	/// <param name="initialVelocityXZ">XX平面での初速度</param>
	/// <param name="initialVelocityY">垂直方向の初速度</param>
	/// <param name="gravity">重力の値</param>
	/// <param name="timeStep">ポイント間の時間ステップ</param>
	/// <param name="numPoints">描画するポイントの数</param>
	/// <param name="color">パスの色</param>
	/// <param name="lineWidth">ラインの太さ</param>
	void DrawProjectilePath(const CVector& startPosition, const CVector& initialVelocityXZ, float initialVelocityY, float gravity, float timeStep, int numPoints, const CColor& color, float lineWidth);

	// 弾道の予測ラインを描画する関数
	void RenderPredictionLine();

	// プレイヤーの向きを保存する関数
	void PlayerVectorZ(const CPlayer& player);

	// 更新処理
	void Update();
	// 描画処理
	void Render();

private:

	// とげとげボールのモデル
	CModel* mpSpikyBallModel;
	// 攻撃判定用のコライダー
	CColliderSphere* mpAttackCol;

	// とげとげボールの軌跡のエフェクト
	CTrailEffect* mpTrailEffect;
	// とげとげボールのコライダー
	CColliderSphere* mpSpherer;

	// XZ平面での移動速度
	CVector mMoveSpeedXZ;
	// 弾の現在の位置
	CVector mPosition;
	// 弾の初期位置
	CVector mInitialPos;
	// プレイヤーの前方向の向き
	CVector ForwardVectorZ;

	// 移動速度
	float mMoveSpeed;
	// 飛距離
	float mFlyingDistance;
	// 現在の飛距離
	float mCurrentFlyingDistance;
	// 重力によるY軸の移動速度
	float mMoveSpeedY;
};
#endif