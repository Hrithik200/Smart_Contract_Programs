// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IterableMapping {
    mapping(address => uint256) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint256 _val) external {
        balances[_key] = _val; //updated the balances
        // keep track of newly inserted or not

        if (!inserted[_key]) {
            // agar key inserted nhi hai to krdo insert
            inserted[_key] = true; // as the address is not present now we make it true to check in future that the user exist or not directly so we dont need array to find thtat
            keys.push(_key); // pushing the address in the list
        }
    }

    function getSize() external view returns (uint256) {
        return keys.length;
    }

    function first() external view returns (uint256) {
        return balances[keys[0]];
    }

    function last() external view returns (uint256) {
        return balances[keys[keys.length - 1]];
    }

    function get(uint256 _i) external view returns (uint256) {
        return balances[keys[_i]];
    }
}
