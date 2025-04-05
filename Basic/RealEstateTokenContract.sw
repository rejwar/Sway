contract RealEstateTokenContract {

    struct Property {
        PropertyId: u64;
        Owner: b256;
        Value: u64;
    }

    storage {
        properties: [Property; 20]
    }

    impl {
        fn AddProperty(property_id: u64, owner: b256, value: u64) -> bool {
            let property = Property { PropertyId: property_id, Owner: owner, Value: value };
            self.properties[0] = property;
            true
        }

        fn TransferProperty(index: u64, new_owner: b256) -> bool {
            self.properties[index].Owner = new_owner;
            true
        }
    }
}
