// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ArrayShift {
    uint256[] public arr;

    function example() public {
        arr = [1, 2, 3];
        delete arr[1]; // [1,0,3]
        // but what if I want to remove and change the length to 2 -->[1,3]
    }

    function remove(uint256 _index) public {
        require(_index < arr.length, "index is of out of bound");

        for (uint256 i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop(); // less gas efficient method as it using array to search thorugh all the elements
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        //[1,2,4,5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);
        arr=[1];
        remove(0);
        assert(arr.length == 0);

    }
}
