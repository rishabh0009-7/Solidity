// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Example {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier OnlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function setOwner(address newOwner) public OnlyOwner {
        owner = newOwner;
    }

    function sum(uint a, uint b) public view OnlyOwner returns (uint) {
        return a + b;
    }
}
