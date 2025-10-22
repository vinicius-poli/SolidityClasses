pragma solidity >= 0.7.0 < 0.9.0;

/*
- Struct are types that are use to represent a record. Suppose you to keep track of your movies
in a library. You might want to track the following attributes about each movie.
*/

contract learnStructs {

    struct Movie {
        string title;
        string director;
        uint movie_id;

    }

    Movie movie;

    function setMovie() public {
        movie = Movie('Blade Runner', 'Ridley Scott', 1);

    }    

    function getMovieID() public view returns(uint){
        return movie.movie_id;
    }
}
