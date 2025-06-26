// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IMessageContract {
    function setMessage(string memory _message) external;
    function getMessage() external view returns (string memory);
}

contract ParentContract {
    address private contractAddress;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
    } 

    function setMessageFromOtherContract(string memory _message) public {
        IMessageContract(contractAddress).setMessage(_message);
    }

    function getMessageFromOtherContract() public view returns (string memory) {
        return IMessageContract(contractAddress).getMessage();
    }
}
