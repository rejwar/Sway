contract SupplyChainContract {

    struct Product {
        ProductId: u64;
        CurrentOwner: b256;
        Status: b256;
    }

    storage {
        products: [Product; 50]
    }

    impl {
        fn AddProduct(product_id: u64, owner: b256, status: b256) -> bool {
            let product = Product { ProductId: product_id, CurrentOwner: owner, Status: status };
            self.products[0] = product;
            true
        }

        fn UpdateStatus(index: u64, new_status: b256) -> bool {
            self.products[index].Status = new_status;
            true
        }
    }
}
