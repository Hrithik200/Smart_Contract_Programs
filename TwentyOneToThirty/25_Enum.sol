// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Enumeration {
    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Cancelled
    }

    Status public status;

    struct Order {
        address buyer;
        Status status;
    }

    Order[] public orders;

    function get() public view returns (Status) {
        return status; // 0
    }

    // how to tak enum as input and set the status as the input
    function set(Status _status) external {
        status = _status;
    }

    // set to specifiv enum
    function ship() external {
        status = Status.Shipped;
    }

    function reset() external {
        delete status; // reset to default Status value
    }
}
