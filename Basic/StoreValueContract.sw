contract;

use std::storage::{read, write};

// Define the storage structure
storage {
    value: u64, // Store an unsigned integer (u64)
}

// Define a function to set a value
abi StoreValue {
    fn set_value(new_value: u64);
    fn get_value() -> u64;
}

// Implementation of the ABI
impl StoreValue for Contract {
    // Set a new value in storage
    fn set_value(new_value: u64) {
        write(storage().value, new_value); // Write the new value to storage
    }

    // Get the current value from storage
    fn get_value() -> u64 {
        read(storage().value) // Read the value from storage
    }
}
