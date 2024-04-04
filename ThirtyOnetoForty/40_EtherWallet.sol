// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable (msg.sender);
    }

    receive() external payable { } // only wants the contract to receive the ether

    function withdraw(uint _amount) external {
        require(msg.sender == owner,"Caller is not owner");
       owner.transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

