#pragma once
#include "CObjectBase.h"
#include "CModel.h"
#include "CInteractObject.h"

class CCollider;

// スイッチのクラス
class CPushSwitch : public CInteractObject
{
public:
	// コンストラクタ
	CPushSwitch(const CVector& pos, const CVector& angle, const CVector& size);
	// デストラクタ
	~CPushSwitch();
	
	// スイッチが押されたかどうか
	bool IsOnSwtch();

	// 調べる
	void Interact() override;

	// 描画処理
	void Render() override;

private:
	CModel* mpModel;	// スイッチのモデルデータ
	CCollider* mpCollider;	// スイッチのコリジョンデータ

	bool mSwitch;	// スイッチがオンかオフか
	int mNumber;	// 番号
	int mNum;		// 何個作られたか

};