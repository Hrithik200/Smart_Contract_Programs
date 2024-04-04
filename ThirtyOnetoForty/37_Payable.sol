// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Payable {
    address payable public owner; // Now this address as payable is written will not be able to send the ether

    constructor() {
        owner = payable(msg.sender); // as owner is payable So the owner cant send ether so we have use cast ie payable(msg.sender)
    }

    function deposit() external payable {
        //I want this function to get ether to added payable
    }

    function getBalance() external view returns(uint ){
        return address(this).balance;
    }
}
