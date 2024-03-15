// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// return multiple outputs
// named outputs
// destructuring Assignment

contract FunctionOutputs {
    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }

    function namedOutput() public pure returns (uint256 x, bool a) {
        return (1, true);
    }

    function namedOutputAssigned() public pure returns (uint256 x, bool a) {
        x = 1; // this will save gas to to return to output
        a = true; // this will save gas to to return to output
    }
    function destructingAssigments() public pure{
     //  (uint x,bool a)= returnMany();
       // (,bool _a)= returnMany();
    }
}
