// SPDX-License-Identifier: MIT
pragma solidity > 0.7.0 <= 0.9.0;

//Function Modifiers are used to change the behaviour of a function.
//Example: Add a prerequisite to a function.

contract Owner {
    //function modifiers

    address owner;
    // when deploy this contract we want to set the address to the owner (msg.sender)

    constructor() {
        owner = msg.sender;
         
        }

    // to write a modifier we statically declare the modifier keyword and then name it
    // and inside we write our logic and modifications
    modifier onlyOwner {
        //customizable logic to modify our functions
        require(msg.sender == owner);
        _; //-> the underscore continues with the function
    }
    modifier costs(uint price) {
        //whats is msg.value: amount being sent with a message to a contract
        require(msg.value >= price);
        _;
    }

}    



// 'is' is a keyword grabbing inheritance from another contract -
contract Register is Owner {
    mapping  (address => bool) registeredAddresses;
    uint price;

    constructor(uint initialPrice) {
        price = initialPrice;
    }


// function register will set msg.sender (currant caller) to true
    function register() public payable costs(price) {
        // the logic will modify the outcome
        registeredAddresses[msg.sender] = true;
    }

    //OnlyOwner is our function modifier
    // only the owner to be able to change the price
    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}

/*
1. Create a function modifier called costs for our register function that checks to see that senders value
has to be greater than or equal to the price;
*/