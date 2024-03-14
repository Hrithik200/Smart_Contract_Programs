// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//local variables only used in funciton

contract LocalVariables{ 
uint public i ; //state variable
bool public j;//state variable
address public myAddress;//state variable

function foo()  external{
    uint x=123;//local variable
    bool y=false;//local variable
    x+=4567;//local variable
    y=true;//local variable

    i=123;//state variable
    j=true;//state variable
    myAddress=address(1);//state variable
   
    // try in remix
}
}