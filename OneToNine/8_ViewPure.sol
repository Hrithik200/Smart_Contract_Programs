// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract ViewPureFunctions{
// view functions can read data from the blockchain
// pure dont read from the blockchain
    uint public num;
    function viewFunc() external view returns(uint){
        return num;// read only from the state variable num
    }

    function pureFunc() external pure returns(uint){
        return 1; // doesnt read / write data to the blockchain
    }

    function addToNum(uint x) external view returns(uint){
    return x+num; // does read data from state variables so it is view function 
    }

    function add(uint x, uint y)external pure returns(uint){
        return x+y; // does not read any variable from state ,global or smart contract so it is pure funciton
    }   
}