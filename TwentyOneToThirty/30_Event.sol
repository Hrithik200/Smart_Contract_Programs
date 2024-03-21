// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// main purpose of event is to log on Blockchain
contract Event{
    event logging(string message,uint val);
    event indexedLog(address indexed  sender , uint val);
    event Message(address indexed _from,address indexed _to,string message);
    function foo() external{
        emit logging ("Hello",5);
        emit indexedLog(msg.sender, 10);
    }

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender,_to,message);
    }
}