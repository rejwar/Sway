contract TokenStakingContract {

    struct Stake {
        Staker: b256;
        Amount: u64;
        Reward: u64;
    }

    storage {
        stakes: [Stake; 100]
    }

    impl {
        fn StakeTokens(staker: b256, amount: u64) -> bool {
            let stake = Stake { Staker: staker, Amount: amount, Reward: 0 };
            self.stakes[0] = stake;
            true
        }

        fn CalculateReward(index: u64, rate: u64) -> u64 {
            self.stakes[index].Reward = self.stakes[index].Amount * rate / 100;
            self.stakes[index].Reward
        }
    }
}
