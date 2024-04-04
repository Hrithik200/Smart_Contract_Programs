// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


/*
fallback is a function that is called when a user call a function which is not in contract

The main use case is direct sending ether




                Ether is sent to the contract
                            |
                        is msg.data empty?
                            /. \
                        yes.    No
                        /        \
        receive() exists?          fallback()
                /.    \
            yes.      no
            /          \
        receive()    fallback()
*/
contract FallBack{

    
    event Log(string func, address sender, uint value, bytes data);

    fallback() external payable {  
            emit Log("fallback",msg.sender,msg.value,msg.data);
    }

    receive() external payable
    {
        emit Log("receive",msg.sender,msg.value, "");
      }
}