pragma solidity >= 0.5.0 < 0.9.0;

// OPERATORS - 

//An operator in a programming language is a symbol that tell the complier or interpreter to perform
//specific mathematical, relational or logical operation and produce final result.

// Arithmetic Operators: + - % / * ++ (add 1) --(subs 1)
// Comparison Operators: = ==

// Operands: variables a b c

// Operators: signs

contract Operators {

    function calculator() public view returns (uint) {
        uint a = 5;
        uint b = 8;
        return a + b;
    }
} 