contract StoreNumberContract {

    storage {
        number: u64
    }

    impl {
        fn SetNumber(value: u64) -> bool {
            self.number = value;
            true
        }

        fn GetNumber() -> u64 {
            self.number
        }
    }
}
