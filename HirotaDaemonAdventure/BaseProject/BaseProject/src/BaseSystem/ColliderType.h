#pragma once

// コライダーの種類
enum class EColliderType
{
	eLine,		// 線分コライダ
	eSphere,	// 球コライダ
	eTriangle,	// 三角コライダ
	eCapsule,	// カプセルコライダー
	eMesh,		// メッシュコライダ
};
