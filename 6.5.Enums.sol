pragma solidity >= 0.7.0 < 0.9.0;

/* 
- Enums restrict a variable to have one of only a few predefined values.
The values in this enumerated list are called enums.
- With the use of enums it is possible to reduce the number of bugs in your code.
- enum for food app that offers either large medium or small options!
*/

contract enumsLearn {
    enum frenchFriesSize {LARGE, MEDIUM, SMALL}
    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.LARGE;

    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    } 

    function setMedium() public {
        choice = frenchFriesSize.MEDIUM;
    }

    function setLarge() public {
        choice = frenchFriesSize.LARGE;
    }

    function getChoice() public view returns(frenchFriesSize) {
        return choice;
    }

    function getDefaultChoice() public view returns(uint) {
        return uint(defaultChoice);
    }
}