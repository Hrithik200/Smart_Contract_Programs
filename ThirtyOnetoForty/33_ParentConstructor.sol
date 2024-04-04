// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// There are total 2 ways to call parent constructor
// Order of initialization
contract S {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract T {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

contract U is S("s"), T("t") { 
    // S("name")-- s ke andar constructor pass kia hai
// If I know what I have to put in the constructor we can pass in the params while calling in different contract
}

contract V is S,T{
// When we want the constructor at the time of execution of the contract
// Jab humne contract ke andar hi contructor bana kr send karna ho to 
    constructor(string memory _name,string memory _text) S(_name) T(_text){
        
    }
}


// Dono bhi use kr skte ho ek sath jaise niche
contract W is S("name"),T{
     constructor(string memory _text)  T(_text){
        
    }
}