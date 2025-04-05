contract MessageStorageContract {

    storage {
        message: b256
    }

    impl {
        fn SetMessage(new_message: b256) -> bool {
            self.message = new_message;
            true
        }

        fn GetMessage() -> b256 {
            self.message
        }
    }
}
