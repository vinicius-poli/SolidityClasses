// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
NESTED MAPPING (maps within maps)

- What if you wanted to store movies that belong to a certain person, thing or address **very important**
- Another example - allow one address to spend on behalf of another address (ERC20 tokens)
- ex: mapping(key => mapping(key2 => value2)) nestedMap
*/

contract exerciseMappping {
    struct Movie {
      string title;
      string director;
      
      
    }
    mapping (uint => Movie) public movie;
    mapping (address => mapping (uint => Movie)) public myMovie;

    function addMovie (string memory title, string memory director, uint id) public {
        movie[id] = Movie(title, director);
    }
    
    function addMyMovie (string memory title, string memory director, uint id) public {
        myMovie[msg.sender][id] = Movie(title, director);
        /* msg.sender is a global variable accessbile throught solidity which captures the address that 
        is calling the contract*/
    }
}