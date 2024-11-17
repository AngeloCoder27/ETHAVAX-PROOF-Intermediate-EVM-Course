# Storage Smart Contract

This Solidity program demonstrates the creation of a simple storage contract on the Ethereum blockchain. The contract allows storing and withdrawing a value while implementing error handling with `require()`, `assert()`, and `revert()` statements.

## Description

This smart contract is designed to store a single integer value. It includes the following functionalities:

- **Store Value**: Allows anyone to store a non-negative value, ensuring the new value is different from the previous one.
- **Withdraw Value**: Allows the owner of the contract to withdraw the stored value, with checks to prevent withdrawal if the stored value is zero.

### Key Features:
- **require()**: Used to validate conditions before performing actions, such as ensuring the value is non-negative and that only the owner can withdraw funds.
- **assert()**: Ensures that the new value being stored is different from the previous one, maintaining consistency.
- **revert()**: Reverts the transaction if the stored value is zero when attempting to withdraw, providing safety checks.

## Getting Started

### Prerequisites

To execute this smart contract, you'll need:

- **Remix**, an online IDE for Solidity.

### Steps to Compile and Deploy

1. Go to [Remix](https://remix.ethereum.org/).
2. Create a new file and name it `SimpleStorage.sol`.
3. Copy and paste the Solidity code into the new file.
4. In the left-hand sidebar, click on the **Solidity Compiler** tab.
5. Compile the contract using Solidity version `0.8.26`.
6. Once compiled, deploy the contract from the **Deploy & Run Transactions** tab.

## Interacting with the Contract

After deployment, you can:

- Call the `storeValue` function with an integer to store a new value. The contract will ensure the value is non-negative and different from the previous one.
- Call the `withdrawValue` function to withdraw the stored value, but only if you're the owner and the stored value is not zero.

## Author

[@AngeloCoder27](https://github.com/AngeloCoder27)

---
