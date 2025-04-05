contract CrowdfundingContract {

    struct Campaign {
        CampaignName: b256;
        Goal: u64;
        FundsCollected: u64;
    }

    storage {
        campaigns: [Campaign; 10]
    }

    impl {
        fn CreateCampaign(name: b256, goal: u64) -> bool {
            let campaign = Campaign { CampaignName: name, Goal: goal, FundsCollected: 0 };
            self.campaigns[0] = campaign;
            true
        }

        fn Contribute(index: u64, amount: u64) -> bool {
            self.campaigns[index].FundsCollected += amount;
            true
        }

        fn GetFundsCollected(index: u64) -> u64 {
            self.campaigns[index].FundsCollected
        }
    }
}
