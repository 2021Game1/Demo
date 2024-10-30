#ifndef CMYSHADER_H
#define CMYSHADER_H

#include "CShader.h"

class CModelX;
class CMaterial;
class CMesh;
class CMatrix;
class CModel;

class CMyShader : public CShader {
private:
	//�}�e���A���̐ݒ�
	void SetShader(CModelX* model, CMaterial* material);
	//�`�揈��
	void Render(CModelX* model, CMesh* mesh, CMatrix* pCombinedMatrix);
public:
	//�`�揈��
	void Render(CModelX* model, CMatrix* combinedMatrix);
	//	void Render(CModel *mesh);
};

class CMyShader2 : public CShader
{
public:
	void Update(
		int FrameSize,
		CMatrix* pSkinningMatrix,
		std::vector<CMaterial*>* pMaterials,
		GLuint VertexBufferId
	);
	void Render(
		int FrameSize,
		CMatrix* pSkinningMatrix,
		std::vector<CMaterial*>* pMaterials,
		GLuint VertexBufferId
	);
	void Render();
private:
	int mFrameSize;
	GLuint mVertexBufferId;
	CMatrix* mpSkinningMatrix;
	std::vector<CMaterial*> *mpMaterials;
	//int mVertexSize;
	//CVertex* mpVertex;
};

#endif