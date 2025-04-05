contract UserAgeContract {

    storage {
        age: u64
    }

    impl {
        fn SetAge(new_age: u64) -> bool {
            self.age = new_age;
            true
        }

        fn GetAge() -> u64 {
            self.age
        }
    }
}
