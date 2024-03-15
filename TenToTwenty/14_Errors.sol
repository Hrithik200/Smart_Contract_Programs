// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// require revert assert
// gas refund ,state updates are reverted
// custom error-save gas
contract Error {
    function testRequire(uint256 _i) public pure {
        require(_i <= 10, "_i is greater than 10");
        // if it passes more code
    }

    function testRevert(uint256 _i) public pure {
        if (_i > 10) {
            revert("i>10"); // revert if better when using if else nested checking
        }
    }

    uint256 public num = 123;

    function testAssert() public view {
        assert(num == 123); // assert only check if the value if the value is not then there is a bug in the code above
    }

    function foo(uint256 _i) public {
        num += 1; // if accidently we have changed the num so assert
        require(_i < 10); // if it fails the the changes made to state variable will be undone and gas fees will be refeunded
    }

    error MyError(address caller, uint256 i); // To use customer error we need to use revert

    function testCustomError(uint256 _i) public view {
        if (_i > 10) {
            //  require(_i<=10,"i>10");// the longer the message more the gas fees will use
            // // more code
            revert MyError(msg.sender, _i);
        }
    }
}
