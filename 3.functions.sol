pragma solidity >= 0.7.0 < 0.9.0;

contract learnFunctions {

    // function-name(parameter-list) scope returns() {
    // statements }
    // scope = visibilidade dos dados (public or private)

    function remoteControlOpen(bool closedDoor) public returns (bool)
    {
        //all the code of the function - the script - the statement
    }

    //create a functions that can add up two variables

    function addValues() public view returns(uint) {
        uint a = 2;
        uint b = 4;
        uint result = a + b;
        return result;
    }
uint b = 4;
    function multiplyCalculator(uint a) public view returns(uint){
        uint result = a * b;
        return result;
    }
}