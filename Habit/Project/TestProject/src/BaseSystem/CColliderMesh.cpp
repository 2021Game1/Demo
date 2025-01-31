#include "CColliderMesh.h"
#include "CColliderTriangle.h"

CColliderMesh::CColliderMesh(CObjectBase* owner, ELayer layer, CModel* model,
	bool isKinematic, float weight)
	// : CCollider(owner, layer, EColliderType::eMesh, isKinematic, weight)
{
	//Set(model);

	auto triangles = model->Triangles();
	int count = triangles.size();
	for (auto& tri : triangles)
	{
		CColliderTriangle *t = new CColliderTriangle(owner, layer, tri.V0(), tri.V1(), tri.V2(), isKinematic, weight);
		mpTriangles.push_back(t);
		//mpTriangles.push_back(t);
		//t->SetCollisionTags({ ETag::ePlayer });
		//t->SetCollisionLayers({ ELayer::ePlayer });
		t->Update();
		t->UpdateCol();
	}
}

void CColliderMesh::SetCollisionTags(Tags tags)
{
	for (auto& tri : mpTriangles)
	{

		tri->SetCollisionTags({ ETag::ePlayer });
	}
}

void CColliderMesh::SetCollisionLayers(Layers layers)
{
	for (auto& tri : mpTriangles)
	{

		tri->SetCollisionLayers({ ELayer::ePlayer });
	}
}

CColliderMesh::~CColliderMesh()
{
	mVertices.clear();
	for (auto& tri : mpTriangles)
	{
		delete tri;
	}
	mpTriangles.clear();
}

void CColliderMesh::Set(CModel* model)
{
	mVertices.clear();
	if (model == nullptr) return;

	auto triangles = model->Triangles();
	int count = triangles.size();
	for (auto& tri : triangles)
	{
		STVertex v(tri.V0(), tri.V1(), tri.V2());
		mVertices.push_back({ v, v });
	}
}

const std::list<STVertexData>& CColliderMesh::Get() const
{
	return mVertices;
}

void CColliderMesh::Render()
{
}

// コライダーの情報を更新
void CColliderMesh::UpdateCol()
{
	//CMatrix m = Matrix();
	//for (auto& v : mVertices)
	//{
	//	v.wv.V[0] = v.lv.V[0] * m;
	//	v.wv.V[1] = v.lv.V[1] * m;
	//	v.wv.V[2] = v.lv.V[2] * m;
	//	v.bounds = CBounds::GetTriangleBounds(v.wv.V[0], v.wv.V[1], v.wv.V[2]);
	//}

	//Priority(CVector() * m);
}
