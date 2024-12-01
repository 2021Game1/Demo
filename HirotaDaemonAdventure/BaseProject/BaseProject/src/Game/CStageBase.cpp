#include "CStageBase.h"
#include "CEnemyManager.h"
#include "CPlayer.h"
#include "CGameManager.h"

// コンストラクタ
CStageBase::CStageBase()
	: mStageNo(0)
	, mElapsedTime(0.0f)
{

}

// デストラクタ
CStageBase::~CStageBase()
{

}

// ステージ破棄
void CStageBase::Unload()
{
	// このステージで作成したタスクをすべて削除
	for (CTask* task : mCreateTasks)
	{
		task->Kill();
	}
}

// 作成したタスクをリストに追加
void CStageBase::AddTask(CTask* task)
{
	mCreateTasks.push_back(task);
}

// 作成したタスクをリストから取り除く
void CStageBase::RemoveTask(CTask* task)
{
	mCreateTasks.remove(task);
}

// ステージ番号取得
int CStageBase::GetStageNo() const
{
	return mStageNo;
}

// 敵の配列の数を調べる処理
void CStageBase::CheckNumberEnemies()
{
	// インスタンスを取得
	CEnemyManager* enemyManager = CEnemyManager::Instance();
	if (enemyManager == nullptr) return;

	// 敵リストを参照で取得
	const std::vector<CXCharacter*>& enemies = enemyManager->GetEnemies();

	// 削除対象を一時的に保持する
	std::vector<CXCharacter*> enemiesToRemove;

	if (CGameManager::GameState() == EGameState::eGame)
	{
		// 敵を確認
		for (CXCharacter* enemy : enemies)
		{
			if (enemy->HPStatus())
			{
				if (mElapsedTime <= 3.0f)
				{
					mElapsedTime += Time::DeltaTime();
				}
				else
				{
					enemiesToRemove.push_back(enemy);
					mElapsedTime = 0.0f;
				}
			}
		}
	}

	// 削除対象を削除
	for (CXCharacter* enemy : enemiesToRemove)
	{
		enemyManager->RemoveEnemy(enemy);
	}

	CPlayer* player = CPlayer::Instance();
	if (player == nullptr) return;
	// プレイヤーのロックオンとカメラ位置を更新
	player->UpdateLockOnAndCameraPosition(enemies);
}

// 更新
void CStageBase::Update()
{

}