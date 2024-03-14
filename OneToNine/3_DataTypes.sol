// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract  ValueTypes{
    bool public b= true;
    uint public u=123; //uint256 positive numbers only
    int public i=-123;// int256


    int public minInt=type(int).min;
    int public maxInt=type(int).max;

    address public addr=0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
    //kecccak hash
    bytes32 public b32=0x5bda7162b84dff721bcb8f777278b488ded8d1475264d4361c6b0abfcc2a99a8;


}