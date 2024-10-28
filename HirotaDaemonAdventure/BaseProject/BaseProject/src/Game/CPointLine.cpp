#include "CPointLine.h"

// コンストラクタ
CPointLine::CPointLine(const CVector& pos, const CVector& scale, const CVector& rot)
	: CObjectBase(ETag::eObstacle, ETaskPriority::eBackground, 0, ETaskPauseType::eGame)
{
	mpPointLine = CResourceManager::Get<CModel>("PointLine");

	Position(pos);
	Scale(scale);
	Rotate(rot);
}

// デストラクタ
CPointLine::~CPointLine()
{

}

// 描画処理
void CPointLine::Render()
{
	mpPointLine->SetColor(mColor);
	mpPointLine->Render(Matrix());
}