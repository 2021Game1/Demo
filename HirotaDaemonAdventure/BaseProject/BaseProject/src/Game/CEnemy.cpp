#include "CEnemy.h"
#include "CEffect.h"
#include "CCollisionManager.h"
#include "CPicoChan.h"

//敵1のモデル
//#define MODEL_Enemy "Character\\Player\\Maria.Model.x"

// コンストラクタ
CEnemy::CEnemy()
	: CCharaBase(ETag::eEnemy, ETaskPriority::eDefault)
{
	//// モデルデータ読み込み
	//CModelX* model = new CModelX();
	//model->Load();
}

//更新処理
void CEnemy::Update()
{
}