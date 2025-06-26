// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract MyContract {
    uint public amount;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        amount += msg.value;
    }

    function withdraw(address payable recipient) public {
        require(msg.sender == owner, "Only owner can withdraw");
        recipient.transfer(amount);
        amount = 0;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
