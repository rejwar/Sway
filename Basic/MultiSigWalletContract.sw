contract MultiSigWalletContract {

    struct Transaction {
        TransactionId: u64;
        Amount: u64;
        ApprovalCount: u64;
    }

    storage {
        transactions: [Transaction; 10]
    }

    impl {
        fn CreateTransaction(id: u64, amount: u64) -> bool {
            let txn = Transaction { TransactionId: id, Amount: amount, ApprovalCount: 0 };
            self.transactions[0] = txn;
            true
        }

        fn ApproveTransaction(index: u64) -> bool {
            self.transactions[index].ApprovalCount += 1;
            true
        }
    }
}
