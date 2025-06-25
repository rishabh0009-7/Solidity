// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ArrayContract {
    uint256[] private numbers;

    function setNumber(uint _num1, uint _num2, uint _num3) public {
        numbers.push(_num1);
        numbers.push(_num2);
        numbers.push(_num3);
    }

    function getNumber(uint index) public view returns (uint) {
        return numbers[index];
    }
}
