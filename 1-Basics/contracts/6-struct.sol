pragma solidity ^0.8.0;



contract struct{
    struct Person {
        string name
        uint age;
        address addr;
    }

    Person  public person 

    function setPerson(string memory _name, uint _age, address _addr ) public {
        Person.name = _name ;
        Person.age = _age ;
        Person.addr = _addr

    }

    function getPerson() public view returns(string memory , uint , address{
        return (Person.name , Person.age , Person.addr)

    }



}