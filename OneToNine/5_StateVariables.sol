// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract stateVariables
{
    uint public myUint=123;// simle state variable and store data on blockchain
    
        function foo()   pure external returns(uint){
            uint notStateVariable=456;
            return notStateVariable;// local variable and they exist till the function exists
        }    
    
}