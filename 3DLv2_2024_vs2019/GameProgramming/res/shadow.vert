#version 330 core
//attribute vec4 indices;
//attribute vec4 weights;
uniform mat4 Transforms[128];
//uniform mat4 WorldMatrix;

layout(location = 0) in vec3 aPosition;
layout(location = 1) in vec3 aNormal;
layout(location = 2) in vec2 aTexCoord;
layout(location = 3) in vec4 weights;
layout(location = 4) in vec4 indices;
// 出力：フラグメントシェーダに渡すテクスチャ座標
out vec2 TexCoord;
out vec2 TexCoord1;

uniform mat4 depthMVP;
uniform mat4 textureMatrix1; // テクスチャ座標変換行列

//フラグメントシェーダーに渡す変数
//varying vec3 N;//法線ベクトル
out vec3 N;//法線ベクトル

void main(void)
{
    mat4 comb = mat4(0);
	comb += Transforms[int(indices.x)] * weights.x;
	comb += Transforms[int(indices.y)] * weights.y;
	comb += Transforms[int(indices.z)] * weights.z;
	comb += Transforms[int(indices.w)] * weights.w;
		  
	//vec4 skinPosition = gl_ModelViewMatrix * comb * gl_Vertex;
    N = normalize(mat3(comb) * aNormal);

	//gl_Position = gl_ProjectionMatrix * skinPosition;
	gl_Position = depthMVP * comb * vec4(aPosition,1);
	//gl_TexCoord[0] = gl_MultiTexCoord0;
	TexCoord = aTexCoord;

	//デプステクスチャのテクスチャ座標を求める
	//gl_TexCoord[1] = gl_TextureMatrix[1] * gl_Vertex;
	vec4 transformedTexCoord = textureMatrix1 * vec4(aPosition,1);
	TexCoord1 = transformedTexCoord.st;
}