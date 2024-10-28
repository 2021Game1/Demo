#ifndef CPOWERFULCANNON_H
#define CPOWERFULCANNON_H

#include "CCannonBase.h"

class CPlayer;

// 偏差撃ち大砲クラス
class CPowerfulCannon : public CCannonBase
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// <param name="modelPath">モデルのパス</param>
	CPowerfulCannon(const CVector& pos, const CVector& scale, const CVector& rot,
		std::string modelPath = "Cannon");
	// デストラクタ
	~CPowerfulCannon();

	// 更新処理
	void Update() override;
	
private:

	// 次に打つまでの時間計測
	float mFireTime;
	// 打てるかどうか
	bool mFire;
	
};
#endif