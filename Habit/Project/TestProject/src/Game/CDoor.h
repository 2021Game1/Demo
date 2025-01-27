#pragma once
#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderMesh.h"

// 扉クラス
class CDoor : public CObjectBase
{
public:
	// コンストラクタ
	CDoor(const CVector& pos, const CVector& angle, const CVector& size);
	// デストラクタ
	~CDoor();

	// 接続するスイッチを設定
	void SetSwitch(size_t index);

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	CModel* mpModel;	// 扉のモデルデータ
	CColliderMesh* mpColliderMesh;	// 扉のコリジョンデータ

	//CPushSwitch* mpOwner;

};