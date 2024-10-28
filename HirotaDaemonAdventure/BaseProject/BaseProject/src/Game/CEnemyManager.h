#ifndef CENEMYMANAGER_H
#define CENEMYMANAGER_H

// 敵の数のクラス
class CEnemyManager
{
public:
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

private:
    // ソルジャーの数
    static int enemyCount;
    // ヴァンガードの数
    static int VanguardCount;
};
#endif