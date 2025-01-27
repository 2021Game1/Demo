#pragma once
#include "CObjectBase.h"
#include "CModel.h"
#include "CColliderMesh.h"

class CPushSwitch;

// 扉クラス
class CSwitchDoor : public CObjectBase
{
public:
	// コンストラクタ
	CSwitchDoor(const CVector& pos, const CVector& angle, const CVector& size);
	// デストラクタ
	~CSwitchDoor();

	// 接続するスイッチを追加
	void AddSwitch(CPushSwitch* sw);

	// コンストラクタで書いてもおｋ
	// 扉を閉じた時の座標と開いた時の座標を設定する
	void SetAnimPos(const CVector& openPos, const CVector closePos);

	// 更新処理
	void Update() override;
	// 描画処理
	void Render() override;

private:
	// スイッチが全て押されているかどうか
	bool IsSwitchOn() const;

	CModel* mpModel;	// 扉のモデルデータ
	CColliderMesh* mpColliderMesh;	// 扉のコリジョンデータ

	// このドアを開くために押す必要があるスイッチ
	std::list<CPushSwitch*> mpSwitches;

	bool mIsOpened;	// 扉が開いているかどうか

	CVector mClosePos;	// 扉が閉まっている時の座標
	CVector mOpenPos;	// 扉が開いている時の座標
	float mAnimTime;	// 開閉時間
	float mElapsedTime;	// 経過時間保存用
	bool mIsPlaying;	// 開閉中かどうか

	EScene mScene;
};