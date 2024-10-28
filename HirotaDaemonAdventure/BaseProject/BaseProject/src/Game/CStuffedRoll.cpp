#include "CStuffedRoll.h"
#include "CText.h"
#include "CImage.h"
#include "CFont.h"
#include "CGameManager.h"
#include "CTaskManager.h"
#include "CPlayer.h"
#include "CStageManager.h"
#include "CInput.h"
#include "CSceneManager.h"

const CStuffedRoll::StafData CStuffedRoll::STAFF_DATA[] =
{
	// テキスト名									// 開始時間		// X座標	R		G		B
	{"Game Title\n \nDemon Adventure",				3.0f,			450.0f,		1.0f,	0.0f,	0.0f},
	{"Producer\n \nTanaka Taro",					10.0f,			450.0f,		0.0f,	1.0f,	0.0f},
	{"Director\n \nTanaka Taro",					16.0f,			450.0f,		0.0f,	0.0f,	1.0f},
	{"Designer\n \nTanaka Taro",					22.0f,			450.0f,		1.0f,	1.0f,	0.0f},
	{"Programmer\n \nTanaka Taro",					28.0f,			450.0f,		1.0f,	0.0f,	1.0f},
	{"Creator\n \nTanaka Taro",						34.0f,			450.0f,		1.0f,	1.0f,	1.0f},
	{"Debugger\n \nTanaka Taro",					40.0f,			450.0f,		0.0f,	1.0f,	1.0f},
	{"Homeroom Teacher\n \nABCDEFG\n \nHIJKLMN",	46.0f,			450.0f,		1.0f,	0.0f,	0.0f},
	{"スタッフ4",									52.0f,			450.0f,		1.0f,	0.0f,	0.0f},
	{"スタッフ5",									58.0f,			450.0f,		1.0f,	0.0f,	0.0f},
	{"スタッフ6",									64.0f,			450.0f,		1.0f,	0.0f,	0.0f},
	{"Thank you for Playing this Game!",			75.0f,			250.0f,		1.0f,	0.0f,	0.0f},
};

// コンストラクタ
CStuffedRoll::CStuffedRoll()
	: CTask(ETaskPriority::eUI, 0, ETaskPauseType::eDefault)
	, mStaffRollTime(0.0f)
	, mXPos(0.0f)
{
	// ロゴのフォントデータを生成
	mpFont = new CFont("res\\Font\\toroman.ttf");
	mpFont->SetFontSize(70);
	//mpFont->SetAlignment(FTGL::TextAlignment::ALIGN_LEFT);
	mpFont->SetLineLength(WINDOW_WIDTH);

	// テキストオブジェクトと初期Y位置の設定
	int size = ARRAY_SIZE(STAFF_DATA);
	for (int i = 0; i < size; i++)
	{
		CText* text = new CText
		(
			mpFont, 70,
			CVector2(0.0f, 720.0f),
			CVector2(600.0f, 600),
			CColor(1.0f, 1.0f, 0.0f, 1.0f),
			ETaskPriority::eUI,
			0,
			ETaskPauseType::eDefault,
			false, false
		);
		mStuffedRolls.push_back(text);
		mTextYPositions.push_back(720.0f);  // 初期Y位置
	}
}

// デストラクタ
CStuffedRoll::~CStuffedRoll()
{
	SAFE_DELETE(mpFont);
	CStageManager::RemoveTask(this);
	int size = mStuffedRolls.size();
	for (int i = 0; i < size; i++)
	{
		CText* tex = mStuffedRolls[i];
		mStuffedRolls[i] = nullptr;
		SAFE_DELETE(tex);
	}
	mStuffedRolls.clear();
	mTextYPositions.clear();
}

// 更新処理
void CStuffedRoll::Update()
{
	for (CText* text : mStuffedRolls)
	{
		text->Update();
	}

	if (CInput::Key(VK_UP))
	{
		mStaffRollTime += Time::DeltaTime() * 2.0f;
	}
	else
	{
		mStaffRollTime += Time::DeltaTime();
	}

	if (mStaffRollTime >= 90.0f)
	{
		CSceneManager::Instance()->LoadScene(EScene::eTitle);
	}

	//CDebugPrint::Print("mTime:%f\n", mStaffRollTime);
}

// テキストを移動させる処理
void CStuffedRoll::ScrollTextUp(CText* pText, float& yPos, float speed)
{
	if (mStaffRollTime >= 82.0f)
	{
		return;
	}

	// 上キーが押されている場合、2.0倍の速さでスクロール
	if (CInput::Key(VK_UP))
	{
		yPos -= speed * 2.0f;
	}
	else
	{
		yPos -= speed;
	}

	pText->SetPos(CVector2(mXPos, yPos));

	//CDebugPrint::Print("Text Position: %f, %f\n", pText->GetPos().X(), pText->GetPos().Y());
	//CDebugPrint::Print("yPos: %f\n", yPos);
}

// テキストのX軸のポジションを設定
void CStuffedRoll::TextXPos(const float pos)
{
	mXPos = pos;
}

// 描画処理
void CStuffedRoll::Render()
{
	int size = ARRAY_SIZE(STAFF_DATA);
	for (int i = 0; i < size; i++)
	{
		const StafData& data = STAFF_DATA[i];
		mXPos = data.xPos;
		if (mStaffRollTime < data.startTime) continue;
		// 最後の要素でない場合にのみ16.0fの制限を適用
		if (i < mStuffedRolls.size() - 1 && mStaffRollTime > data.startTime + 16.0f) continue;

		mStuffedRolls[i]->SetText(data.stuffName.c_str());
		// スクロール処理
		ScrollTextUp(mStuffedRolls[i], mTextYPositions[i], 1.0f);
		mStuffedRolls[i]->SetColor(data.r, data.g, data.b);
		mStuffedRolls[i]->SetFontSize(42);
		mStuffedRolls[i]->Render();
	}
}