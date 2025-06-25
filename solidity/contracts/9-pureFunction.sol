// pure function mai kya hota hai ki jo  input parameter hota hai uske basis pe hi output aa ta hai isme  ye read nhi karta dusra koi stae jo humne bnayi hai 
// jisko pure dediya usme hum kyuch use nhi kar ksta external  na modifier na kuch isme bas jo input parameter diya uss basis pe output aayega 

// A pure function in Solidity:

// Cannot read or modify state variables.

// Cannot access msg.sender, block.timestamp, or any blockchain data.

// Can only use input parameters and return values based on them.

// It's great for simple calculations, utility functions, etc.
pragma solidity ^0.8.0;

contract  Calculator {

    function sum (uint a, uint b) public pure  returns (uint ){
        return a+b;


    }

}