contract TokenTransferContract {

    struct Token {
        TokenName: b256;
        TokenSymbol: b256;
        TokenSupply: u64;
    }

    storage {
        tokens: [Token; 50]
    }

    impl {
        fn CreateToken(token_name: b256, token_symbol: b256, token_supply: u64) -> bool {
            let new_token = Token { 
                TokenName: token_name, 
                TokenSymbol: token_symbol, 
                TokenSupply: token_supply 
            };
            self.tokens[0] = new_token;
            true
        }

        fn GetTokenSupply(index: u64) -> u64 {
            self.tokens[index].TokenSupply
        }
    }
}
