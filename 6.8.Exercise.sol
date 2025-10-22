pragma solidity >= 0.7.0 < 0.9.0;

/*
- 1. Create a new movie and set it up so that imputates to the movie in the setMovie function
- 2. Return the id of the new movie
- 3. Create a new variable called comedy and set up comedy to the datatype Movie
- 4. Uptade the setMovie function with a comedy that contain name, director and id
- 5. return the movie id of the comedy
*/

contract exerciseStructs {

    struct Movie {
        string title;
        string director;
        uint movie_id;

    }

    Movie movie;
    Movie comedy;

    function setMovie() public {
        comedy = Movie('Dumb n Dumber', 'Unkown', 3);
    }
    
    function setNewMovie() public {
        movie =  Movie('Jurassic Park', 'Spielberg', 2);   
    }    

    function getMovieID() public view returns(uint){
        return movie.movie_id;
    }

    function getComedyID() public view returns(uint){
        return comedy.movie_id;
    }
}
