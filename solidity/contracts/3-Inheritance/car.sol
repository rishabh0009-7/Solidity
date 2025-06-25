// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Vehicle {
    string public brand;

    constructor(string memory _brand) {
        brand = _brand;
    }

    function description() public virtual returns (string memory) {
        return "this is a vehicle";
    }
}

contract Car is Vehicle {
    uint public numberOfDoors;

    constructor(string memory _brand, uint _numberOfDoors) Vehicle(_brand) {
        numberOfDoors = _numberOfDoors;
    }

    function description() public pure override returns (string memory) {
        return "this is a car";
    }
}
