pragma solidty ^0.8.0;

contract array {

    uint256 _numbers;
    function setNumber (uint _num1 , uint _num2 , uint _num3 ) public {
        _numbers[0] = num1;
        _numbers[1] = num2;
        _numbers[2] = num3;
     

    }
   function getNumber(uint index) public view returns(uint){
    return _numbers[index]

   }
}