#pragma once

class CVector;

class CBTree
{
public:
	CBTree()
		: mpParentNode(nullptr)
		, mpLeft(nullptr)
		, mpRight(nullptr)
		, mPriority(0)
	{}

	void Priority(const CVector& v);
	void Priority(const CVector& v, const CVector& v2);
	void Priority(const CVector& v, const CVector& v2, const CVector& v3);

	CBTree* mpParentNode;
	CBTree* mpLeft;
	CBTree* mpRight;
	unsigned int mPriority;
};