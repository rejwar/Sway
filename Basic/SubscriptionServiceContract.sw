contract SubscriptionServiceContract {

    struct Subscription {
        Subscriber: b256;
        ExpirationDate: u64;
    }

    storage {
        subscriptions: [Subscription; 100]
    }

    impl {
        fn Subscribe(subscriber: b256, duration: u64) -> bool {
            let subscription = Subscription { Subscriber: subscriber, ExpirationDate: duration };
            self.subscriptions[0] = subscription;
            true
        }

        fn CheckSubscription(index: u64) -> u64 {
            self.subscriptions[index].ExpirationDate
        }
    }
}
