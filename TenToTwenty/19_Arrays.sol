// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*

-Array -dynamic or fixed size
-Initialize
-Push,get,update,delete,pop,length
-Creating array in memory
-Return array from function
*/

contract Array {
    uint256[] public arr1;
    uint256[] public arr2 = [1, 2, 3];

    uint256[20] public arr3; // fixed size and all 20 initialize to 0

    function examples() external {
        arr2.push(5);
        delete arr2[1];
        arr2.pop();
        //arr2.length;

        //create memeory in memory
        uint256[] memory a = new uint256[](5);

        a[1] = 123;
    }

    function returnArray() external view returns(uint[] memory){
        return arr2;
    }
}
