#include "CEnemyManager.h"

int CEnemyManager::enemyCount = 0;
int CEnemyManager::VanguardCount = 0;

// エネミーマネジャーのインスタンス
CEnemyManager* CEnemyManager::spInstance = nullptr;

//インスタンスのポインタの取得
CEnemyManager* CEnemyManager::Instance()
{
    if (spInstance == nullptr)
    {
        spInstance = new CEnemyManager();
    }
    return spInstance;
}

// 敵キャラクターのリストを取得する
const std::vector<CXCharacter*>& CEnemyManager::GetEnemies() const
{
    return enemies;
}

// 敵をリストに追加する
void CEnemyManager::AddEnemy(CXCharacter* enemy)
{
    if (enemy != nullptr)
    {
        enemies.push_back(enemy);
    }
}

// 敵をリストから除外する
void CEnemyManager::RemoveEnemy(CXCharacter* enemy)
{
    if (enemy == nullptr)
        return;

    // enemies 配列内で、指定された enemy を探して削除
    auto it = std::find(enemies.begin(), enemies.end(), enemy);
    if (it != enemies.end())
    {
        // 見つかった場合、配列から削除
        enemies.erase(it);
    }
}

// ソルジャーの数を増やす
void CEnemyManager::IncrementSoldierCount()
{
    enemyCount++;
}

// ソルジャーの数を減らす
void CEnemyManager::DecrementSoldierCount()
{
    enemyCount--;
}

// ソルジャーの数を取得
int CEnemyManager::GetSoldierCount()
{
    return enemyCount;
}

// ヴァンガードの数を増やす
void CEnemyManager::IncrementVanguardCount()
{
    VanguardCount++;
}

// ヴァンガードの数を減らす
void CEnemyManager::DecrementVanguardCount()
{
    VanguardCount--;
}

// ヴァンガードの数を取得
int CEnemyManager::GetVanguardCount()
{
    return VanguardCount;
}

CEnemyManager::CEnemyManager()
{
    // インスタンスの設定
    spInstance = this;
}

CEnemyManager::~CEnemyManager()
{
    spInstance = nullptr;
}
