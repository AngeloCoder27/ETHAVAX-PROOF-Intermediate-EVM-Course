// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {

    uint256 public storedValue;
    address public owner;

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender; 
    }

    // Function to store a value
    function storeValue(uint256 _value) public {

        // require() to check that the value is non-negative
        require(_value >= 0, "Value must be non-negative");

        // assert() to make sure newvalue is different from stored
        assert(_value != storedValue);

        // if both conditions are met -> updates the stored value
        storedValue = _value;
    }

    // Function to withdraw the stored value
    function withdrawValue() public {
        // require() to ensure only the owner can withdraw
        require(msg.sender == owner, "Only the owner can withdraw");

        // reverts if the stored value is zero
        if (storedValue == 0) {
            revert("Stored value is zero. Cannot withdraw.");
        }

        // if stored value is not zero it resets to 0
        storedValue = 0;
    }
}
