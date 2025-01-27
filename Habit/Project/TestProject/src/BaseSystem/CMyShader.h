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
	void SetShader(CMaterial* material);
	void Render330(const GLuint vertexBufferId, const std::vector<CMaterial*>* materials, const float skinMatrix[], int matrixSize);

	//ƒ}ƒeƒŠƒAƒ‹‚Ìİ’è
	void SetShader(CModelX* model, CMaterial* material);
	//•`‰æˆ—
	void Render(CModelX* model, CMesh* mesh, CMatrix* pCombinedMatrix);
public:
	void Render(const CModel& model, const CMatrix& matrix);

	//•`‰æˆ—
	void Render(CModelX* model, CMatrix* combinedMatrix);
	//	void Render(CModel *mesh);
};

#endif