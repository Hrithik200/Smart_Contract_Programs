// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//state variable
//global variable
// function modifier
// funciton
// error handling
contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }

    function setNewOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "Invalid adderss");
        owner = _newOwner;
    }
    function onlyOwnerCanCall() external onlyOwner{

    }
    function anyOneCanCall() external{
        
    }



}
