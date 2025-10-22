pragma solidity >= 0.7.0 < 0.9.0;

/*
EXERCISE:
- 1. create a  enum for shirts color called shirtColor and set it to the options of either RED, WHITE or BLUE;
- 2. create a data of shirtColor called defaultChoice which is a constant set to the color blue;
- 3. create a data of shirtColor called choice and don't initiate the value;
- 4. create a function called setWhite which changes the shirts color to white;
- 5. create a function getChoice which returns the current choice of shirtColor;
- 6. create a function getDeafaultChoice which returns the default choice of shirtColor.
*/

contract exerciseEnum {
    enum shirtColor {RED, WHITE, BLUE}
    shirtColor choice;
    shirtColor constant defaultChoice = shirtColor.BLUE;

    function setWhite() public {
        choice = shirtColor.WHITE;
    }

    function getChoice() public view returns(shirtColor) {
        return choice;
    }

    function getDefaultChoice() public view returns(shirtColor) {
        return defaultChoice;
    }

}