pragma solidity >= 0.5.0 < 0.9.0;

//Logical Operators: && (AND), || (OR), ! (NOT)

//Bitwise Operators: & (AND), | (OR), ^ (XOR)

contract LogicalOperators {
    uint a = 4;
    uint b = 32;

    function logic() public view returns(uint) {
        uint result = 0;
        if (a < b && a == 4) {
            result = a + b;
        }
        return result;
    }

    //1. Create a function which will multiply a by b and divide the result by b
    //2. Only return the multiplication of the function if b is greater than a AND a does not equal b
    //3. Initialize a = 17 and b = 32

    function logic1() public view returns(uint) {
        uint result = 0;
        if (b > a && a != b) {
            result = a * b;
        }
        return result;
    }

}