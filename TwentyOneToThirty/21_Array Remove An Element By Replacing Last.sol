// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
    GAS EFFICIENT WAY TO POP TO REMOVE THE ELEMENT FROM THE ARRAY
    remove array element by shifting elements to the left
    [1,2,3,4,5,6] --remove(2)--> [1,2,4,5,6,6] -->[1,2,4,5,6]


*/

contract ArrayReplaceLast {
    uint256[] public arr;

    // [1,2,3,4] --remove(1)--->[1,4,3]
    // [1,4,3]  --remove(2) --->[1,4]
    function remove(uint256 _index) public {
        arr[_index] = arr[arr.length - 1];
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4];

        remove(1);
        // [1,2,3,4] --remove(1)--->[1,4,3]
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);
        assert(arr.length == 3);
        // [1,4,3]  --remove(2) --->[1,4]
        remove(2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr.length == 2);
    }
}
