contract VotingContract {

    struct Candidate {
        CandidateName: b256;
        VoteCount: u64;
    }

    storage {
        candidates: [Candidate; 10]
    }

    impl {
        fn AddCandidate(name: b256) -> bool {
            let candidate = Candidate { CandidateName: name, VoteCount: 0 };
            self.candidates[0] = candidate;
            true
        }

        fn Vote(index: u64) -> bool {
            self.candidates[index].VoteCount += 1;
            true
        }

        fn GetVoteCount(index: u64) -> u64 {
            self.candidates[index].VoteCount
        }
    }
}
