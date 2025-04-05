// FileName: MyFirstSwayContract

contract MyFirstSwayContract {

    struct UserAccount {
        UserName: b256;
        UserBalance: u64;
    }

    storage {
        accounts: [UserAccount; 100]
    }

    impl {
        fn InitializeAccount(user_name: b256, initial_balance: u64) -> bool {
            let user = UserAccount { 
                UserName: user_name, 
                UserBalance: initial_balance 
            };
            self.accounts[0] = user;
            true
        }

        fn GetUserBalance(index: u64) -> u64 {
            self.accounts[index].UserBalance
        }
    }
}
