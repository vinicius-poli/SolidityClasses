// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
- Mapping is a reference type as arrays and structs. Following is the syntax to declare a mapping type.
- Mapping allows you to save data and add a key that you specify and then retrieve that info later
- Similar to struct or an array - it is a reference type
- in Solidity you can't iterate through a map - uoy need to store the keys in a array and you can't give size

- Get set and delete a value from mapping*/

contract learnMapping {

    //key and value - key can be string, uint or bool - value can be anything

    mapping(address => uint) public myMap;

    function getAddress(address _addr) public view returns(uint) {
        return myMap[_addr];
    }

    function setAddress(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }

}