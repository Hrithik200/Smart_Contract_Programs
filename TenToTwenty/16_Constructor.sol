// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// only called once when contract deployed mainly used to declare state variables
contract Consrtuctor {
    address public owner;
    uint256 public x;

    constructor(uint256 _x) {
        owner = msg.sender; // the account who deployed  the contract
        x = _x;// value to set once for state
    }
}
