// this is without erc20
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract RishabhCoin {
    string public name = "RishabhCoin";
    uint public supply = 0;
    address public owner;

    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender;
    }

    function mintTo(address to, uint amount) public {
        require(msg.sender == owner, "Only owner can mint");
        balances[to] += amount;
        supply += amount;
    }

    function transfer(address to, uint amount) public {
        require(balances[msg.sender] >= amount, "Not enough balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function burn(uint amount) public {
        require(balances[msg.sender] >= amount, "Not enough balance");
        balances[msg.sender] -= amount;
        supply -= amount;
    }
}
