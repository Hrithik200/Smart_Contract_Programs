// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Function Modifier - Reuse the code  before and / or after function
// Basic (),inputs(_x),sandwich
contract FunctionModifier {
    bool public paused;
    uint256 public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "It is paused");
        _; // works as next() in for js
    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }


    modifier sandwich(){
        count+=10;
        _;
        count*=2;
        
    } 
    function foo() external sandwich returns(uint coun) {
        count+=1;
        return count;
    }
}
