pragma solidity ^0.8.0

contract mapping {
    mapping (address =>string ) public names ;

    function setName (string memory _names ) publiic{
        names[msg.sender] = _names;

    }

    function getName(address _address)public  view returns (string memory) {
        return names[_address]

    }

}