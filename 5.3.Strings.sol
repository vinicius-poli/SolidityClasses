pragma solidity >= 0.7.0 < 0.9.0;

contract learnStrings {

    string greetings = 'Hello! You\'re here now!';
    // watch out for weird chars
    // \ skip a char
    // \n skip a line (if supported)

    function sayHello() public view returns (string memory) {

        return greetings;

        //memory: Temporary place to store data (end when the function is done)
        //Storage: Holds the memory
    }

    function changeGreetings(string memory _change) public  {
        greetings = _change;
            
    }

    //strings are too expensive to get length (needs to convert strings to bytes)
    function getChar() public view returns (uint){

        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;

    }
    
}