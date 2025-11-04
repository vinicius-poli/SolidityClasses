// SPDX-License-Identifier: MIT
pragma solidity > 0.7.0 <= 0.9.0;

//- Exercise - Create the following assertions in a function called exercise:
//- Assert equivalencies for minutes to seconds, hours to minutes, days to hours and weeks to days.

contract ExerciseTime {
    function exercise () public pure {

        assert(1 minutes == 60 seconds);
        assert(1 hours == 60 minutes);
        assert(1 days == 24 hours);
        assert(1 weeks == 7 days);
    }  
}