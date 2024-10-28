#ifndef CSPRING_H
#define CSPRING_H

#include "CSpringObject.h"
#include "CObjectBase.h"

// バネ(上とバネ)
class CSpring : public CSpringObject
{
public:
	/// <summary>
	/// コンストラクタ
	/// </summary>
	/// <param name="pos">位置</param>
	/// <param name="scale">大きさ</param>
	/// <param name="rot">回転</param>
	/// <param name="modelPath">モデルパス</param>
	CSpring(const CVector& pos, const CVector& scale, const CVector& rot,
		std::string modelPath = "Spring");
	// デストラクタ
	virtual ~CSpring();
};

// バネ下
class CSpringLower : public CObjectBase
{
public:
	CSpringLower(const CVector& pos, const CVector& scale, const CVector& rot,
		std::string modelPath = "SpringLower");
	~CSpringLower();

	void Update() override;
	void Render() override;
private:
	CModel* mpModel;
};

#endif