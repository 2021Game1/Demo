#ifndef CHARASTATUS_H
#define CHARASTATUS_H

//キャラクターのステータス
struct CharaStatus
{
	int level;			// レベル
	int hp;				// HP
	int power;			// 攻撃力
	int defense;		// 防御力
	int stamina;		// スタミナ
	int baria;			// バリア
	float moveSpeed;	// 移動速度
};

// プレイヤーの最大レベル
#define PLAYER_LEVEL_MAX 100
// プレイヤーのレベルごとのステータスのテーブル
extern const CharaStatus PLAYER_STATUS[PLAYER_LEVEL_MAX];

// 敵の最大レベル
#define ENEMY_LEVEL_MAX 5
// 敵のレベルごとのステータスのテーブル
extern const CharaStatus ENEMY_STATUS[ENEMY_LEVEL_MAX];

// 敵の最大レベル
#define PICOCHAN_LEVEL_MAX 5
// 敵のレベルごとのステータスのテーブル
extern const CharaStatus PICOCHAN_STATUS[PICOCHAN_LEVEL_MAX];


// ヴァンガードの最大レベル
#define VANGUARD_LEVEL_MAX 5
// ヴァンガードごとのステータスのテーブル
extern const CharaStatus VANGUARD_STATUS[VANGUARD_LEVEL_MAX];
#endif