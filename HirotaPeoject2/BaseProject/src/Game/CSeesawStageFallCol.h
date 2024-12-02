#ifndef CSEESAWSTAGEFALLCOL_H
#define CSEESAWSTAGEFALLCOL_H

#include "CObjectBase.h"
#include "CColliderMesh.h"

// 「シーソーステージ」の落下コライダー
class CSeesawStageFallCol : public CObjectBase
{
public:
	CSeesawStageFallCol();
	~CSeesawStageFallCol();

	void Update() override;
	void Render() override;
private:
	CColliderMesh* mpFallCol;
};
#endif