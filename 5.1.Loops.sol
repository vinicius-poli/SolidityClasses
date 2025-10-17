pragma solidity >= 0.7.0 < 0.9.0;

contract loopContract {

    //a list of number ranging
    uint [] public numbersList = [1,2,3,4,5,6,7,8,9,10];

    //Ex: if we have 4, how many numbers in our list can be a multiple
    // A loop that acts as a multiple checker in our numbersList

    function checkMult(uint _number) public view returns (uint) {
        uint count = 0;

        // 3 part statement of a for loop
        // 1. initialize start of loop
        // 2. determine lengh of loop
        // 3. to direct the index after each turn
        for(uint i=0; i < numbersList.length; i++) {
            //logic for the loop
            if(checkMultiples(numbersList[i], _number)) {
                count++;
            }
        }
        return count;
    }

    //cerate a function that can check if two numbers are divisible by each other - or are they
    // multiples of each other

    //4 and 2 - true
    //3 or 5 = false

    
    function checkMultiples(uint _num, uint _nums) public view returns (bool) {
        //modulo operator = %
        if (_num % _nums == 0) {
            return true;
        }
        else {
            return false;
        }
    }

}

    

