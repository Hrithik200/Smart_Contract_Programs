// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car;

    Car[] public cars;

    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        // type 1 to call struct
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        // type 2 to call struct
        Car memory lambo = Car({
            model: "Lamborghini",
            year: 1980,
            owner: msg.sender
        });
        // type 3 to call struct
        Car memory tesla; //will hold default
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        // now pushing data into state variable so after completing the function data doesn't go away
        //   Car[] public cars; ismai daal denge
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari",2020,msg.sender));



        Car storage _car= cars[0];
        car.year=1999;

        delete _car.owner;


        delete cars[1];

    }
}
