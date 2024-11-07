using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SXG2024;
using UnityEngine.UIElements;
using System.Diagnostics.Tracing;
using NUnit.Framework;

namespace SamplePlayer
{
	public class SamplePlayer : ComPlayerBase
	{
        Vector3 mPosition;
        Quaternion mRotation;

        List<FoodNowInfo> mFoodsInfoOnStage;
		FoodType mTheNextFallingFood;
		FoodType[] mAllFutureFoodsDrops;
		IList<FoodType> mMyFoodsListOnHand;
		int mHowManyMoreCanIHave;
        Vector3 mVelocity;
		int mNowPriceOnHand;
		PlayerInfo[] mPlayersInfo;
		bool mIsStiffness;
		float mLeftTimeOfStiffness;
		float mRemainingGameTime;
        List<int> mCollidedPlayersNumber;

		void GetParameter()
		{
            SXG_GetPositionAndRotation(out mPosition, out mRotation);

            mFoodsInfoOnStage =  SXG_GetFoodsInfoOnStage();
            mTheNextFallingFood = SXG_GetTheNextFallingFood();
            mAllFutureFoodsDrops = SXG_GetAllFutureFoodsDrops();
            mMyFoodsListOnHand = SXG_GetMyFoodsListOnHand();
            mHowManyMoreCanIHave = SXG_HowManyMoreCanIHave();
            mVelocity = SXG_GetVelocity();
            mNowPriceOnHand = SXG_GetNowPriceOnHand();
            mPlayersInfo = SXG_GetPlayersInfo();
            mIsStiffness = SXG_IsStiffness();
            mLeftTimeOfStiffness = SXG_GetLeftTimeOfStiffness();
            mRemainingGameTime = SXG_GetRemainingGameTime();
            mCollidedPlayersNumber = SXG_GetCollidedPlayersNumber();

        }

        enum EStatus
		{
			EMOVE,
			EPREGOAL,
			EGOAL,
		}
		EStatus mStatus = EStatus.EMOVE;


		Vector3 mTargetPosition;
		//Vector3 
		float mCount = 0;
		float mRadius = 4.0f;

        private void Update()
        {
			GetParameter();

            mCount += 0.25f;
            mCount = mCount % 360;

            switch (mStatus)
			{
				case EStatus.EPREGOAL:
					PreGoal();
                    SXG_MoveToTargetPosition(mTargetPosition, 0.0f);
                    break;
				case EStatus.EGOAL:
					GoGoal();
                    SXG_MoveToTargetPosition(mTargetPosition, 1.0f);
                    break;
				default:
                    Move();
                    SXG_MoveToTargetPosition(mTargetPosition, 1.0f);
                    break;
			}
            CanNotMove();
        }

        Vector3 CheckTarget()
        {
            float min = 25.0f;

            if(mHowManyMoreCanIHave == 1
                && !HasNoodle())
            {
                foreach (FoodNowInfo fni in mFoodsInfoOnStage)
                {
                    if (fni.m_type == FoodType.Noodle)
                    {
                        float distance = (fni.m_position - mPosition).magnitude;
                        if (min > distance)
                        {
                            min = distance;
                            mTargetPosition = fni.m_position;
                        }
                    }
                }
                if(min != 25.0f)
                {
                    return mTargetPosition;
                }
            }

            min = (mTargetPosition - mPosition).magnitude;

            foreach (FoodNowInfo fni in mFoodsInfoOnStage)
            {
                if (fni.m_type == FoodType.Butter) continue;
                float distance = (fni.m_position - mPosition).magnitude;
                if(min > distance)
                {
                    min = distance;
                    mTargetPosition = fni.m_position;
                }
            }

            return mTargetPosition;
        }


		void CanNotMove()
		{
            if(mCollidedPlayersNumber.Count > 0
                && mVelocity.magnitude < 0.01f)
            {
                SXG_Kick();
            }
            //mStatus = EStatus.EMOVE;
        }

		void Move()
		{
            if (mHowManyMoreCanIHave == 0
                ||SXG_GetNowPriceOnHand() >= 400
                || (30.0f < mRemainingGameTime && mRemainingGameTime < 60.0f && SXG_GetNowPriceOnHand() > 0)
                || (mRemainingGameTime < 15.0f && SXG_GetNowPriceOnHand() > 0)
                )
            {
				mStatus = EStatus.EPREGOAL;
            }
            else
            {
                mTargetPosition.x = Mathf.Cos(mCount * Mathf.Deg2Rad) * mRadius;
                mTargetPosition.z = Mathf.Sin(mCount * Mathf.Deg2Rad) * mRadius;
                mTargetPosition = CheckTarget();
            }
        }

        void PreGoal()
		{
            mTargetPosition = new Vector3(0.0f, 0.0f, -12.0f);
            SXG_MoveToTargetPosition(mTargetPosition, 0.0f);
			mStatus = EStatus.EGOAL;
        }

        void GoGoal()
		{
            mTargetPosition = new Vector3(0.0f, 0.0f, -12.0f);
        }

        bool HasNoodle()
        {
            foreach (FoodType ft in mMyFoodsListOnHand)
            {
                if (ft == FoodType.Noodle)
                {
                    return true;
                }
            }
            return false;
        }

        public override bool UDON_ShouldGetTheFoodOnStage(FoodNowInfo foodInfo)
		{
			if (foodInfo.m_type == FoodType.Butter) return false;

            if(HasNoodle())
            {
                return true;
            }

            if (mHowManyMoreCanIHave == 1 && foodInfo.m_type != FoodType.Noodle) return false;

            return true;
    	}

		public override void UDON_ReportOnShipping(IList<FoodType> foodsList, int tableId, int price, string menuName)
    	{
			mStatus = EStatus.EMOVE;
        }
	}
}