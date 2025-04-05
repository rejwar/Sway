contract EscrowServiceContract {

    struct Transaction {
        Buyer: b256;
        Seller: b256;
        Amount: u64;
        IsReleased: bool;
    }

    storage {
        transactions: [Transaction; 5]
    }

    impl {
        fn CreateTransaction(buyer: b256, seller: b256, amount: u64) -> bool {
            let txn = Transaction { Buyer: buyer, Seller: seller, Amount: amount, IsReleased: false };
            self.transactions[0] = txn;
            true
        }

        fn ReleaseFunds(index: u64) -> bool {
            self.transactions[index].IsReleased = true;
            true
        }

        fn GetTransactionStatus(index: u64) -> bool {
            self.transactions[index].IsReleased
        }
    }
}
