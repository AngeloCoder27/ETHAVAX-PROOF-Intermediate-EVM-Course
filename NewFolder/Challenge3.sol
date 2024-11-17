// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract EventChallenge {
    // Mapping to store user balances
    mapping(address => uint256) public balances;

    // Event to log deposits
    event Deposit(
        address indexed sender,
        uint256 value,
        uint256 gasLeft
    );

    // Function to deposit Ether and log message context variables
    function deposit() public payable {
        require(msg.value > 0, "Deposit must be greater than zero");

        // Update balance
        balances[msg.sender] += msg.value;

        // Emit an event with message context variables
        emit Deposit(msg.sender, msg.value, gasleft());
    }

    // Function to withdraw Ether
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");

        // Deduct balance and transfer Ether
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    // View function to get the sender's balance
    function getMyBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    // View function to get remaining gas for the transaction
    function getGasLeft() public view returns (uint256) {
        return gasleft();
    }
}
