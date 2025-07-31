pragma solidity >= 0.5.0 < 0.9.0;

contract AssignmentOprator {
    uint b = 4;
    uint a = 3;

    function assign() public view returns(uint) {
        uint c = 2;
        
        return c += c + b;
    }
}

//Final Operator Exercise
//0. cretae a a contract FinalExercise
//1. initialize 3 state variables a, b, f
//2. Assign each variable the following: a should equal 300, b shouls equal 12, and f should equal 47
//3. Create a function called finalize that is public and viewable which returns a local variable d
//4. Initialize d to 23 
//5. return d in short handed assignment form to multiply itself by itself and then substracted by b
//6. Make the function conditional so that it will only return the multiplication if a is greater than
//or equal to a and b is less than f otherwise d should return 23.

contract FinalExercise {
    uint a = 300;
    uint b = 48;
    uint f = 47;

    function finalize() public view returns(uint) {
        uint d= 23;
        if (a >= a && b < f){
        d *= d - b;
        }
        return d;
    }
}