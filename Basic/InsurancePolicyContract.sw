contract InsurancePolicyContract {

    struct Policy {
        PolicyId: u64;
        Insured: b256;
        CoverageAmount: u64;
    }

    storage {
        policies: [Policy; 50]
    }

    impl {
        fn CreatePolicy(policy_id: u64, insured: b256, coverage: u64) -> bool {
            let policy = Policy { PolicyId: policy_id, Insured: insured, CoverageAmount: coverage };
            self.policies[0] = policy;
            true
        }

        fn ClaimPolicy(index: u64) -> bool {
            self.policies[index].CoverageAmount = 0;
            true
        }
    }
}
