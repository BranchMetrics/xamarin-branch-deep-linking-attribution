﻿using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public interface IBranchRewardsInterface
	{
		void RewardsLoaded();
		void RewardsRedeemed();
		void CreditHistory(List<CreditHistoryEntry> history);
		void RewardsRequestError(BranchError error);
	}
}
