pragma solidity >= 0.7.0 < 0.9.0;

/* WHAT ARE ARRAYS?

- Array is a data structure, which stores a fixed-size sequential collection of elements of the same type.
- An array is used to store a collection of data, but it is often more useful to think of an array as a collection
of variables of the same type.

1. How to write an Array
2. pop, push and length methods
3. remove elements from array
*/

contract learnArray {

    uint[] public myArray; //add 1 2 3 4 
    uint[] public myArray2;
    uint[200] public myFixedArray;

    /* The push method adds onde or more elements to the end of any array and returns the new length of the array*/

    function pushMethod(uint number) public {
        myArray.push(number);
    }

    /* The pop methos removes the last element from de array and returns that value back to the caller*/

    function popMethod() public {
        myArray.pop();
    }

    /* Length is a string property that is used to determine the length of a string*/

    function getLength() public view returns (uint) {
        return myArray.length;
    }

    function remove(uint i) public {
        delete myArray[i]; //if [1,2,3] and delete 2 equals [1,0,3] so length ramains the same
    }
}