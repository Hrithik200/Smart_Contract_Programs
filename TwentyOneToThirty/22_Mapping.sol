// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Mapping
// How to declare a mappiing(simple and nested)
// set , get , delete

contract Mapping {
    mapping(address => uint256) public balances; // give balance of each address , if you give me address I will give you the balance

    mapping(address => mapping(address => bool)) public isFriend; //

    function example() external {
        balances[msg.sender] = 123;
        // uncomment both line
        // uint bal=balances[msg.sender];
        //uint bal2=balances[address(1)];// return 0
        balances[msg.sender] += 456; //579
        delete balances[msg.sender]; // default 0

        isFriend[msg.sender][address(this)] = true;
    }
}
