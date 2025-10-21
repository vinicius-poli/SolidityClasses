pragma solidity >=0.7.0 < 0.9.0;

/*
It initializes state variables of a contract.

Following are key characteristics:

1. A contract can have only one constructor.
2. A constructor code is executed once when a contract is created and it is used  to initialize contract state.
3. After a constructor code executed, the final code is deployed to blockchain. This code include public functions
and code reachable through public functions. Constructor code or any internal method used only by constructor
are not included in final code.

A constructor can be either public or internal.

A internal constructor marks the contract as abstract.

In case, no constructor is defined, a default constructor is present in the correct.
*/

contract Member {
    string name;
    uint age;

    // initialize name and age upon deployment

    constructor(string memory _name, uint _age) public {
        name = _name;
        age = _age;
    }
}

contract Teacher is Member //('Tom', 28)
{
    constructor(string memory n, uint a) Member(n, a) public {}

    function getName() public view returns (string memory) {
        return name;
    }
}

