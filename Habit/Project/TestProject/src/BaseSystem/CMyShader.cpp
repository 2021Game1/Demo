#include "glew.h"
#include "CMyShader.h"
//#include "CLight.h"
#include "CModelX.h"
#include "CMatrix.h"
#include "CModel.h"
#include "CVertex.h"

#include "CShadowMap.h"

void CMyShader::Render(CModelX* model, CMatrix* pCombinedMatrix) {
	//シェーダーを有効にする
	Enable();
	for (size_t i = 0; i < model->mFrame.size(); i++) {
		if (model->mFrame[i]->mpMesh != nullptr) {
			//面のあるメッシュは描画する
			Render(model, model->mFrame[i]->mpMesh, pCombinedMatrix);
		}
	}
	//シェーダーを無効にする
	Disable();
}
/*
メッシュの描画
*/
void CMyShader::Render(CModelX* model, CMesh* mesh, CMatrix* pCombinedMatrix) {
	//スキンマトリックス生成
	for (size_t i = 0; i < mesh->mSkinWeights.size(); i++) {
		//スキンメッシュの行列配列を設定する
		model->mpSkinningMatrix[mesh->mSkinWeights[i]->mFrameIndex]
			= mesh->mSkinWeights[i]->mOffset * pCombinedMatrix[mesh->mSkinWeights[i]->mFrameIndex];
	}

	Render330(mesh->mMyVertexBufferId,
		&(mesh->mMaterial),
		model->mpSkinningMatrix[0].M(),
		model->mFrame.size());
	//mesh->mSkinWeights.size());

	return;


	/*
	ライト設定
	*/
	CVector vec(100.0f, 700.0f, -300.0f), ambient(0.9f, 0.9f, 0.9f), diffuse(1.0f, 1.0f, 1.0f);
	vec = vec.Normalized();
	int lightId = glGetUniformLocation(GetProgram(), "lightVec");  //ライトの向きを設定
	glUniform3fv(lightId, 1, (float*)&vec);
	glUniform3fv(glGetUniformLocation(GetProgram(), "lightAmbientColor"), 1, (float*)&ambient);
	glUniform3fv(glGetUniformLocation(GetProgram(), "lightDiffuseColor"), 1, (float*)&diffuse);
	//スキンメッシュ行列設定
	int MatrixLocation = glGetUniformLocation(GetProgram(), "Transforms");
	glUniformMatrix4fv(MatrixLocation, model->mFrame.size(), GL_FALSE, model->mpSkinningMatrix[0].M());
	/*
	ワールドトランスフォーム
	*/
	//	int worldId = glGetUniformLocation(getProgram(), "WorldMatrix");
	//	glUniformMatrix4fv(worldId, 1, GL_FALSE, model->mFrame[0]->mCombinedMatrix.f);

	/* テクスチャユニット1を指定する */
	glUniform1i(glGetUniformLocation(GetProgram(), "DepthTexture"), 1);

	//頂点バッファをバインドする
	glBindBuffer(GL_ARRAY_BUFFER, mesh->mMyVertexBufferId);

	//頂点座標の位置を設定
	int idx = 0;
	glEnableClientState(GL_VERTEX_ARRAY);
	glVertexPointer(3, GL_FLOAT, sizeof(CVertex), (void*)idx);
	//法線ベクトルの位置を設定
	idx += sizeof(CVector);
	glEnableClientState(GL_NORMAL_ARRAY);
	glNormalPointer(GL_FLOAT, sizeof(CVertex), (void*)idx);
	//テクスチャマッピングデータの位置を設定
	idx += sizeof(CVector);
	glEnableClientState(GL_TEXTURE_COORD_ARRAY);
	glTexCoordPointer(2, GL_FLOAT, sizeof(CVertex), (void*)idx);

	//スキンウェイトデータの位置を設定
	idx += sizeof(CVector);
	int  weightLoc = glGetAttribLocation(GetProgram(), "weights");
	glEnableVertexAttribArray(weightLoc);
	glVertexAttribPointer(weightLoc, 4, GL_FLOAT, GL_TRUE, sizeof(CVertex), (void*)idx);
	//スキンウェイトのインデックスデータの位置を設定
	idx += sizeof(float) * 4;
	int  indexLoc = glGetAttribLocation(GetProgram(), "indices");
	glEnableVertexAttribArray(indexLoc);
	glVertexAttribPointer(indexLoc, 4, GL_FLOAT, GL_FALSE, sizeof(CVertex), (void*)idx);

	//マテリアル毎に頂点を描画します
	int k = 0;

	for (size_t i = 0; i < mesh->mMaterial.size(); i++) {
		//マテリアルの値をシェーダーに設定
		SetShader(model, mesh->mMaterial[i]);
		//三角形描画、開始頂点番号、描画に使用する頂点数
		glDrawArrays(GL_TRIANGLES, k, mesh->mMaterialVertexCount[i]);	//DrawArrays:VertexIndexなし
		//開始位置計算
		k += mesh->mMaterialVertexCount[i];
		//マテリアルの解除
		mesh->mMaterial[i]->Disabled();
	}

	//無効にする
	glDisableVertexAttribArray(weightLoc);
	glDisableVertexAttribArray(indexLoc);
	glDisableClientState(GL_VERTEX_ARRAY);
	glDisableClientState(GL_NORMAL_ARRAY);
	glDisableClientState(GL_TEXTURE_COORD_ARRAY);

	//頂点バッファのバインド解除
	glBindBuffer(GL_ARRAY_BUFFER, 0);
}

void CMyShader::Render(const CModel& model, const CMatrix& matrix)
{
	//シェーダーを有効にする
	Enable();

	Render330(model.MyVertexBufferId(), model.PMaterials(), matrix.M(), 1);

	//シェーダーを無効にする
	Disable();

	return;
}

void CMyShader::Render330(const GLuint vertexBufferId, const std::vector<CMaterial*>* materials, const float skinMatrix[], int matrixSize) 
{
	/*
	ライト設定
	*/
	CVector vec(100.0f, 700.0f, -300.0f), ambient(0.9f, 0.9f, 0.9f), diffuse(1.0f, 1.0f, 1.0f);
	//	vec = (CVector() - vec).Normalize();
	/*vec = */vec.Normalize();
	int lightId = glGetUniformLocation(GetProgram(), "lightVec");  //ライトの向きを設定
	glUniform3fv(lightId, 1, (float*)&vec);
	glUniform3fv(glGetUniformLocation(GetProgram(), "lightAmbientColor"), 1, (float*)&ambient);
	glUniform3fv(glGetUniformLocation(GetProgram(), "lightDiffuseColor"), 1, (float*)&diffuse);
	//スキンメッシュ行列設定
	int MatrixLocation = glGetUniformLocation(GetProgram(), "Transforms");
	glUniformMatrix4fv(MatrixLocation, matrixSize, GL_FALSE, skinMatrix);

	CMatrix modelview, projection;
	glGetFloatv(GL_MODELVIEW_MATRIX, modelview.M());
	/* 現在の透視変換行列を保存しておく */
	glGetFloatv(GL_PROJECTION_MATRIX, projection.M());
	MatrixLocation = glGetUniformLocation(GetProgram(), "MVP");
	glUniformMatrix4fv(MatrixLocation, 1, GL_FALSE, (modelview * projection).M());

	MatrixLocation = glGetUniformLocation(GetProgram(), "TextureMatrix1");
//	glUniformMatrix4fv(MatrixLocation, 1, GL_FALSE, CMatrix().M());
	glUniformMatrix4fv(MatrixLocation, 1, GL_FALSE, CShadowMap::msModelviewLight.M());

	/* テクスチャユニット1を指定する */
	glUniform1i(glGetUniformLocation(GetProgram(), "DepthTexture"), 1);

	//頂点バッファをバインドする
	glBindBuffer(GL_ARRAY_BUFFER, vertexBufferId);

	const int POSITION_LOC = 0;
	const int NORMAL_LOC = 1;
	const int TEXCOORD_LOC = 2;
	const int WEIGHT_LOC = 3;
	const int WINDEX_LOC = 4;

	//頂点座標の位置を設定
	int idx = 0;
	glEnableVertexAttribArray(POSITION_LOC);
	glVertexAttribPointer(POSITION_LOC, 3, GL_FLOAT, GL_TRUE, sizeof(CVertex), (void*)idx);

	//法線ベクトルの位置を設定
	idx += sizeof(CVector);
	glEnableVertexAttribArray(NORMAL_LOC);
	glVertexAttribPointer(NORMAL_LOC, 3, GL_FLOAT, GL_TRUE, sizeof(CVertex), (void*)idx);

	//テクスチャマッピングデータの位置を設定
	idx += sizeof(CVector);
	glEnableVertexAttribArray(TEXCOORD_LOC);
	glVertexAttribPointer(TEXCOORD_LOC, 2, GL_FLOAT, GL_TRUE, sizeof(CVertex), (void*)idx);

	//スキンウェイトデータの位置を設定
	idx += sizeof(CVector);
	glEnableVertexAttribArray(WEIGHT_LOC);
	glVertexAttribPointer(WEIGHT_LOC, 4, GL_FLOAT, GL_TRUE, sizeof(CVertex), (void*)idx);
	//スキンウェイトのインデックスデータの位置を設定
	idx += sizeof(float) * 4;
	glEnableVertexAttribArray(WINDEX_LOC);
	glVertexAttribPointer(WINDEX_LOC, 4, GL_FLOAT, GL_FALSE, sizeof(CVertex), (void*)idx);

	//マテリアル毎に頂点を描画します
	int k = 0;

	for (size_t i = 0; i < (*materials).size(); i++) {
		//マテリアルの値をシェーダーに設定
		SetShader((*materials)[i]);
		//三角形描画、開始頂点番号、描画に使用する頂点数
		glDrawArrays(GL_TRIANGLES, k, (*materials)[i]->mVertexNum);	//DrawArrays:VertexIndexなし
		//開始位置計算
		k += (*materials)[i]->mVertexNum;
		//マテリアルの解除
		(*materials)[i]->Disabled();
	}

	//無効にする
	glDisableVertexAttribArray(WINDEX_LOC);
	glDisableVertexAttribArray(WEIGHT_LOC);
	glDisableVertexAttribArray(TEXCOORD_LOC);
	glDisableVertexAttribArray(NORMAL_LOC);
	glDisableVertexAttribArray(POSITION_LOC);

	//頂点バッファのバインド解除
	glBindBuffer(GL_ARRAY_BUFFER, 0);
}

/*
マテリアルの値をシェーダーに設定する
*/
void CMyShader::SetShader(CModelX* model, CMaterial* material) {

	//	float mColorRGBA[4] = { 1.0f, 1.0f, 1.0f, 1.0f };
	int AmbientId = glGetUniformLocation(GetProgram(), "Ambient");  //カラー設定
	glUniform4fv(AmbientId, 1, (GLfloat*)material->mDiffuse);

	int DiffuseId = glGetUniformLocation(GetProgram(), "Diffuse");  //カラー設定
	glUniform4fv(DiffuseId, 1, (GLfloat*)material->mDiffuse);

	//int ColorRGAB_ID = glGetUniformLocation(getProgram(), "ColorRGBA");  //カラー設定　重ねてカラーの表示
	//glUniform4fv(ColorRGAB_ID, 1, (GLfloat*)mColorRGBA);

	int PowId = glGetUniformLocation(GetProgram(), "Pow");  //強さを設定
	glUniform1f(PowId, material->mPower);

	int SpecularId = glGetUniformLocation(GetProgram(), "Specular");  //カラー設定
	glUniform3fv(SpecularId, 1, (GLfloat*)material->mSpecular);

	int EmissiveId = glGetUniformLocation(GetProgram(), "Emissive");  //カラー設定
	glUniform3fv(EmissiveId, 1, (GLfloat*)material->mEmissive);
	GLint samplerId = glGetUniformLocation(GetProgram(), "Sampler");
	GLint textureFlg = glGetUniformLocation(GetProgram(), "TextureFlg");
	//if (material->mTextureId > 0) {
	material->Enabled(model->GetColor());
	if (material->mpTexture != nullptr && material->mpTexture->Id()) {
		//テクスチャあり
		glUniform1i(samplerId, 0);//GL_TEXTURE0を適用
		glUniform1i(textureFlg, 0);//GL_TEXTURE0を適用
	}
	else
	{
		//テクスチャなし
		glUniform1i(textureFlg, -1);//GL_TEXTURE1を適用
	}
}
void CMyShader::SetShader(CMaterial* material)
{
	//	float mColorRGBA[4] = { 1.0f, 1.0f, 1.0f, 1.0f };
	int AmbientId = glGetUniformLocation(GetProgram(), "Ambient");  //カラー設定
	glUniform4fv(AmbientId, 1, (GLfloat*)material->mDiffuse);

	int DiffuseId = glGetUniformLocation(GetProgram(), "Diffuse");  //カラー設定
	glUniform4fv(DiffuseId, 1, (GLfloat*)material->mDiffuse);

	//int ColorRGAB_ID = glGetUniformLocation(getProgram(), "ColorRGBA");  //カラー設定　重ねてカラーの表示
	//glUniform4fv(ColorRGAB_ID, 1, (GLfloat*)mColorRGBA);

	int PowId = glGetUniformLocation(GetProgram(), "Pow");  //強さを設定
	glUniform1f(PowId, material->mPower);

	int SpecularId = glGetUniformLocation(GetProgram(), "Specular");  //カラー設定
	glUniform3fv(SpecularId, 1, (GLfloat*)material->mSpecular);

	int EmissiveId = glGetUniformLocation(GetProgram(), "Emissive");  //カラー設定
	glUniform3fv(EmissiveId, 1, (GLfloat*)material->mEmissive);
	GLint samplerId = glGetUniformLocation(GetProgram(), "Sampler");
	GLint textureFlg = glGetUniformLocation(GetProgram(), "TextureFlg");
	//if (material->mTextureId > 0) {
	if (material->Texture() != nullptr &&
		material->Texture()->Id() > 0) {
		//テクスチャあり
		//テクスチャを使用可能にする
		glEnable(GL_TEXTURE_2D);
		//テクスチャをバインドする
		glBindTexture(GL_TEXTURE_2D, material->Texture()->Id());

		glUniform1i(samplerId, 0);//GL_TEXTURE0を適用
		glUniform1i(textureFlg, 0);//GL_TEXTURE0を適用
	}
	else
	{
		//テクスチャなし
		glUniform1i(textureFlg, -1);//GL_TEXTURE1を適用
	}
}
