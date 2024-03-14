// SPDX-License-Identifier: MIT
pragma solidity ^0.8;


//safeMath
/*1
contract safeMath{
    // cant run
    function testingUnderFlow() public pure returns (uint){
        uint x=0;
        x--;
        return x;
    }

//run 
    function testingUnCheckedFunction() public pure returns(uint){
        uint x=0;
        unchecked{
            x--;
        }
        return x;
    }
}
1*/

// customer Errors
/*2
contract VendingMachine{
    error Unauthorized(address caller );
    address payable owner=payable(msg.sender);

    function withdraw() public view {
    if(msg.sender != owner)
        revert Unauthorized(msg.sender);

    }
}


2*/

// declare funcitons outside the contract

