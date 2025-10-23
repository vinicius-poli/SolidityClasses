// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
1. Create a unique data type as a struct called Movie and give it string properties: title and director;
2. Create a map called movie which takes a uint as a key and Movie as a value;
3. Create a function called addMovie which takes three inputs, title, director and movie_id which assings
a value of a integer to a movie added back to the movie map. It should include a title and director;
4. Deploy the contract and update the movie information to the movie map;

*/

contract exerciseMappping {
    struct Movie {
      string title;
      string director;
      
    }
    mapping (uint => Movie) public movie;

    function addMovie (string memory title, string memory director, uint id) public {
        movie[id] = Movie(title, director);
    }
}

