contract NFTMarketplaceContract {

    struct NFT {
        TokenId: u64;
        Owner: b256;
        Price: u64;
    }

    storage {
        nfts: [NFT; 50]
    }

    impl {
        fn ListNFT(token_id: u64, owner: b256, price: u64) -> bool {
            let nft = NFT { TokenId: token_id, Owner: owner, Price: price };
            self.nfts[0] = nft;
            true
        }

        fn PurchaseNFT(index: u64, buyer: b256) -> bool {
            self.nfts[index].Owner = buyer;
            true
        }
    }
}
