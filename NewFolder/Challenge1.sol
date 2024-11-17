// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract AdminOnly {
    address public admin;

    modifier onlyAdmin() {
        require(msg.sender == admin, "You are not the admin!");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function add(uint a, uint b) public onlyAdmin view returns (uint) {
        return a + b;
    }
    
    function multiply(uint a, uint b) public onlyAdmin view returns (uint) {
        return a * b;
    }
}


// Now, let's do a little challenge to practice what you've learned. Write a smart contract that allows only the admin to access and call all the functions of the contract. Hint: use modifiers to restrict access
