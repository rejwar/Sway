contract AuctionSmartContract {

    struct Bid {
        Bidder: b256;
        Amount: u64;
    }

    storage {
        highestBid: Bid
    }

    impl {
        fn PlaceBid(bidder: b256, amount: u64) -> bool {
            if amount > self.highestBid.Amount {
                self.highestBid = Bid { Bidder: bidder, Amount: amount };
                true
            } else {
                false
            }
        }

        fn GetHighestBid() -> u64 {
            self.highestBid.Amount
        }
    }
}
