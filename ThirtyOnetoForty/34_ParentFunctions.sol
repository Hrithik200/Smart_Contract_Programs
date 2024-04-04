// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;




/*

    calling Parent Functions
    -directly 
    -or super keyword

        E
      /.  \ 
      F.  G
      \   /
        H

*/
contract E{
event Log(string message);

function foo() public virtual{
    emit Log("E.foo");
}

function bar() public virtual {
    emit Log("E.bar");
}
}

contract F is E{
    function foo() public virtual override{
        emit Log("F.foo");
        E.foo(); //calling The Parent Function directly
    }
    function bar() public virtual override{
        emit Log("F.bar");
        super.bar(); // calling the parent function using super keyword
    }
}



contract G is E{
      function foo() public virtual override{
        emit Log("G.foo");
        E.foo(); //calling The Parent Function directly
    }
    function bar() public virtual override{
        emit Log("G.bar");
        super.bar(); // calling the parent function using super keyword
    }
}

contract H is F,G{
    function foo() public  override(F,G){

        F.foo(); //calling The Parent Function directly
    }
    function bar() public  override(F,G){
        super.bar(); // calling the parent function using super keyword0
    }
}

