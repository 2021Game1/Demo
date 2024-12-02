#ifndef CSTAGESKY_H
#define CSTAGESKY_H

#include "CObjectBase.h"
#include "CModel.h"

// ステージ用の空オブジェクト
class CStageSky : public CObjectBase
{
public:
	CStageSky();
	~CStageSky();

	void Update() override;
	void Render() override;	
private:
	CModel* mpStageSky;
};
#endif