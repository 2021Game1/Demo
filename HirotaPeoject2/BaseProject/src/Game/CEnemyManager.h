#ifndef CENEMYMANAGER_H
#define CENEMYMANAGER_H
#include "CXCharacter.h"

class CPicoChan;

// 敵の数のクラス
class CEnemyManager
{
public:
    //インスタンスのポインタの取得
    static CEnemyManager* Instance();
    // 敵キャラクターのリストを取得する
    const std::vector<CXCharacter*>& GetEnemies() const;
    // 敵をリストに追加する
    void AddEnemy(CXCharacter* enemy);
    // 敵をリストから除外する
    void RemoveEnemy(CXCharacter* enemy);

    // ソルジャーの数を増やす
    static void IncrementSoldierCount();
    // ソルジャーの数を減らす
    static void DecrementSoldierCount();
    // ソルジャーの数を取得
    static int GetSoldierCount();

    // ヴァンガードの数を増やす
    static void IncrementVanguardCount();
    // ヴァンガードの数を減らす
    static void DecrementVanguardCount();
    // ヴァンガードの数を取得
    static int GetVanguardCount();

    CEnemyManager();
    ~CEnemyManager();

private:
    // プレイヤーのインスタンス
    static CEnemyManager* spInstance;

    // 敵キャラクターを格納するリスト
    std::vector<CXCharacter*> enemies;

    // ソルジャーの数
    static int enemyCount;
    // ヴァンガードの数
    static int VanguardCount;
};
#endif