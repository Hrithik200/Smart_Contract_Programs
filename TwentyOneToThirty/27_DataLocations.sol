// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// storage -- means the variable is state variable
// memory  // loaded onto the memory
// calldata // it is passed in arguments


contract DataLocations{
    struct MyStruct{
        uint foo;
        string text;
    }

    mapping(address=>MyStruct) public myStructs;
    function examples() external {
        myStructs[msg.sender]=MyStruct({foo:123,text:"bar"});
        MyStruct storage myStruct=myStructs[msg.sender];
        
        myStruct.text="foo";
        
    }

}

// pending concept
