#ifndef CCANNON_H
#define CCANNON_H

#include "CCannonBase.h"

class CPlayer;

// 大砲クラス
class CCannon : public CCannonBase
{
public:
	/// <summary>
	/// デストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// /// <param name="modelPath">モデルのパス</param>
	CCannon(const CVector& pos, const CVector& scale, const CVector& rot,
		std::string modelPath = "Cannon");
	// デストラクタ
	~CCannon();

	// 更新処理
	void Update() override;

private:

	// 次に打つまでの時間計測
	float mFireTime;
	// 打てるかどうか
	bool mFire;

};
#endif