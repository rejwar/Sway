contract SimpleCounterContract {

    storage {
        counter: u64
    }

    impl {
        fn Increment() -> bool {
            self.counter += 1;
            true
        }

        fn GetCounter() -> u64 {
            self.counter
        }
    }
}
