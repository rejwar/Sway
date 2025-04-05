contract BooleanFlagContract {

    storage {
        isActive: bool
    }

    impl {
        fn SetFlag(value: bool) -> bool {
            self.isActive = value;
            true
        }

        fn GetFlag() -> bool {
            self.isActive
        }
    }
}
