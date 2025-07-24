pragma solidity >= 0.5.0 < 0.9.0;

// VARIABLE SCOPE - Functions & Variables

// Private = You can only call the function inside the contract
// Internal = called only within the contract or other contrats that inherit the smart contract
// is  slightly less resctritive than public.
// External = you can only call the function outside the contract not from other function within
// Public = You can only call the function from outside the smart contract as well inside the smart contract

// How to decide which one to use?
// RULE OF THUMB: Give the minimum amount of priviledge to any entity.
// 1.Private, 2.Internal, 3.External, 4.Public

// modify the rules of scope in Solidity with keywords
// private internal external public

// State Variables vc Local Variables

contract C {

   uint public data = 10; //state variable

    function x() public view returns(uint) {
        uint data1 = 25; //local variable
        return data1;
    } 

    function y() public view returns(uint) {
        return data;
    }
}

