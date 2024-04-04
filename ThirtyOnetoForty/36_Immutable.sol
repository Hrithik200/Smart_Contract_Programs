// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Immutable {
    // when we want to set variable the fix value we can use immutable variable I
    address public immutable owner; 

    constructor() {
        owner = msg.sender;
    }

    uint256 public x;

    function foo() external {
        require(msg.sender == owner);
        x += 1;
    }
}
