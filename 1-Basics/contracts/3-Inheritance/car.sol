pragma solidity ^0.8.0;




contract car is vehicle  {
    uint public numberOfDoors;


    constructor (string memory _brand , uint _numberOfDoors ) vehicle(_brand) {
        numberOfDoors= _numberOfDoors;


    }


    function description() public pure virtual returns(string memory){
        return "this is a car "


    }
}