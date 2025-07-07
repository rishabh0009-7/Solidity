// This is Erc20 contract
// concept of allowance is added


// // SPDX-License-Identifier: UNLICENSED


pragma solidity ^0.8.0;


contract Erc20{

string public name = "RishabhCoin";
uint public supply = 0;
address public  owner ;

mapping (address => uint ) public balances ;
//  allowance --> 
// rishabh=> rahul =>200
mapping(address account =>mapping(address sender => uint )) public allowance ;




constructor (){
    owner = msg.sender

}


function mintTo(address to , uint 32 amount ) public {
    require(msg.sender === owner )
    balances[to] += amount ;
    supply +=amount ;


}


function tranfer (address to , uint amount ) public {
    uint balance = balances[msg.sender]
    require (balance >= amount , "you dont have enough balance " )
    balances[msg.sender] -= amount ;
    balance[to ]+=amount;


}


function burn (uint amount ) public {
    uint balance = balances[msg.sender]
    require(balance>= amount , "tou dont have enough balance")
    balance[msg.sender ] -=amount ;
    supply -= amount;

}



// yaha tak same rahega pehle concept se 



function allow( address to , uint amount ) {
    allowance[msg.sender][to ] = amount ;
    
}


function  transferFrom(address from , address to , uint amount ) public{
    uint balance = balances[from ];
    rerquire(balance >= amount)
    uint currentAllowance = allowance[from][msg.sender]
    require (currentAllowance>= amount)


    balances[from ] -= amount; 
    balances[to ] += amount;
    allowance[from][msg.sender]-= amount;

}

// but this is also not enough there are lot more things left like events(transfer , approval) , decimals , total supply , balanceOf 



    
}