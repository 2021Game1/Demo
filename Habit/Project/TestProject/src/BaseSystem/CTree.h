#pragma once

class CVector;

class CTree
{
public:
	CTree()
		: mpParentNode(nullptr)
		, mpLeft(nullptr)
		, mpRight(nullptr)
		, mPriority(0)
	{}

	void Priority(const CVector& v);
	void Priority(const CVector& v, const CVector& v2);
	void Priority(const CVector& v, const CVector& v2, const CVector& v3);

	CTree* mpParentNode;
	CTree* mpLeft;
	CTree* mpRight;
	int mPriority;
};