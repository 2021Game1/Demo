#ifndef CSHADOWMAP_H
#define CSHADOWMAP_H

/// <summary>
/// 参考記事 : https://marina.sys.wakayama-u.ac.jp/~tokoi/?date=20050926
/// </summary>

class CShadowMap
{
	// 光源の位置
	GLfloat mLightPos[3];
	// 影の色
	GLfloat mShadowCol[4];
	// デプステクスチャの幅
	int mTextureWidth;
	// デプステクスチャの高さ
	int mTextureHeight;
	// GLuint : 符号なし整数型
	// デプステクスチャID
	GLuint mDepthTextureID;
	// フレームバッファ識別子
	GLuint mFb;
	// Render関数のポインタ
	void(*mpRender)();
	// 初期化処理
	void Init();
public:
	// コンストラクタ
	CShadowMap();
	// デストラクタ
	~CShadowMap();
	/// <summary>
	/// 初期化処理
	/// </summary>
	/// <param name="width">デプステクスチャの幅</param>
	/// <param name="height">デプステクスチャの高さ</param>
	/// <param name="funcRender">描画関数のポインタ</param>
	/// <param name="shadowCol">影の色</param>
	/// <param name="lightPos">光源の位置</param>
	void Init(int width, int height, void (*funcRender)(), float shadowCol[], float lightPos[]);
	// 描画処理
	void Render();
};
#endif