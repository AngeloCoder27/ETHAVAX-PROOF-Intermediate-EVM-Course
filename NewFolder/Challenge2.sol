// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract FunctionChallenge {
    uint public stateVariable = 10;

    // View function: Reads from the state but does not modify it
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    // Pure function: Does not read or modify the state
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    // Payable function: Allows the contract to receive Ether
    function deposit() public payable {
        // Function to receive Ether
    }

    // View function: Gets the contract's Ether balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

}

// Derived contract inheriting from FunctionChallenge
contract DerivedContract is FunctionChallenge {
    // Inherits all functionality from FunctionChallenge

    function derivedMultiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
}
// For this challenge, write a smart contract that uses view, pure, and payable functions. Ensure that the functions are accessible within the contract and derived contracts as well.
