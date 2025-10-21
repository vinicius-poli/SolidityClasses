pragma solidity >=0.7.0 < 0.9.0;

/*EXERCISE:
Create a function that can fully remove an item from array

- 1. Create an Empty array called changeArray;
- 2. Create a function called removeElement which sets the index argument
of the array to the last element in the array;
- 3. Remove the last index from that function with the pop method;
- 4. Create a function called test which pushes 1, 2, 3, and 4 into changeArray
- 5. Remove the element 2 from the array when the contract is called
*/

contract exerciseArray {
    uint[] public changeArray;

    function removeElement(uint i)public {
        changeArray[i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }

    function test() public {
        for (uint n = 1; n <=4; n++){
            changeArray.push(n);
        }
    }
    function view1() public view returns(uint[] memory){
        return changeArray;
    }

}