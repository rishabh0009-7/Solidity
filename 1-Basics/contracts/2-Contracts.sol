pragma solidity ^0.8.0;


// variables
// unsigned number  means positive number only  
// uint8 --> small number 
// uint16 --> 16 bit number 
// uint256 --> 256 bit number 




// signed number means positive negative both 
// int
//int32

// Booleans
// address
// strings


// contract sum {
//     uint8 gender ;
//     uint16 calls;
//     uint BigNumber = 1000000000;
//     int y = -30000000;
//     int32 x = -100;
//     bool islegal = true;
//     address owner = 0x749q324q343w5353w53w43w3w53w3w3w;
//     string name = "rishabh";


// }



 


// visibility --> public private internal external
//public 
//  public
// Can be used everywhere: inside the contract, in child contracts, and from outside (like websites or other contracts).

// private
// Can be used only inside the same contract.

// ❌ Not available in child contracts or from outside.



// internal
// Can be used inside the contract and in inherited (child) contracts.

// ❌ Cannot be called from outside.
// //
// //external
// Can be used only from outside (like frontend or another contract).

// ❌ Can't be called directly inside the same contract (unless using this.function()).


// constructor --> special function that can be used only once  during deployment of contract
// calculator program

contract calculator {
    uint256 currentValue;

    constructor(uint256 _initialValue){
        currentValue = _initialValue;

    }
    function add (uint256 value ) public{
        currentValue+=value;

    }


    function subtract (uint256 value) public{
        currentValue-=value;
    }


    function multiply (uint256 value) public {
        currentValue*=value;

    }


    function divide (uint256 value) public {
        require(value!=0,"cannot divide by 0");
        currentValue /= value;

    }

    function getcurrentValue() public view  returns(uint256){
        return currentValue;
    }
}