pragma solidity >= 0.7.0 < 0.9.0;

//Looping Practice

//1. create a contract myLoopingPracticeContract and place all the following code within:
//2. create a list that ranges from 1 to 20 called longList
//3. create a list called numbersList of the following numbers: 1, 4, 34, 56
//4. create a function that loops trhough numbersList and returns a true value if the number
//that the user inputs exists in the list otherwise it should return false
//5. create a function that loops trhough and returns how many even numbers there are in the longList


contract myLoopingPracticeContract {

    uint [] longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] numbersList = [1,4,34,56];

    function countNumber(uint _Number) public view returns (bool) {
        bool numberExists = false;
        for (uint i=0; i < numbersList.length; i++) 
            
            if (numbersList[i] == _Number) {
                numberExists = true;
            }
        return numberExists;
    }

    function evenNumbers() public view returns (uint) {
        uint count = 0;

        for (uint i=0; i < longList.length; i++)
            if (longList[i]%2 == 0) {
                count++;
                }
        return count;
    }
}


