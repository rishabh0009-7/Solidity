//An event is a way for your smart contract to communicate with the outside world, like the front-end (e.g., your DApp UI).
// When something happens in the contract (like a transfer or update), you can emit an event, and that data is logged on the blockchain.
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract EventPractice {

    // Declaring the event with 3 parameters: from, to, and value


//     This declares an event named Transfer.

// indexed makes from and to searchable in logs.

// value is the amount transferred.
    event Transfer(address indexed from, address indexed to, uint256 value);

    // A function that emits the Transfer event


//     msg.sender is the caller of the function.

// When transfer() is called, it emits the Transfer event and logs the transaction.
    function transfer(address to, uint256 value) public {
        emit Transfer(msg.sender, to, value);
    }
}
