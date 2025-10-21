pragma solidity >= 0.7.0 < 0.9.0;

/*
Exercise:
1. Create a contract calles Base which stores full accessible (inside and outside) integer data upon deployment
2. Create a contract called Derived which derives rhe data from base and runs a function that always outputs
the data to the number 5.
*/

contract Base {
    uint Number;

    constructor (uint _Number) public {
        Number = _Number;
    }
    function GetN () public view returns (uint) {
        return Number;
    }
}

contract Derrived is Base (5) {
   
}

