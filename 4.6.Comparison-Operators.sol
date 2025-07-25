pragma solidity >= 0.5.0 < 0.9.0;

// OPERATORS - 

//An operator in a programming language is a symbol that tell the complier or interpreter to perform
//specific mathematical, relational or logical operation and produce final result.

// Arithmetic Operators: + - % / *
// Comparison Operators: = ==

// Operands: variables a b c

// Operators: signs

contract ComparisonOperators {

    uint a = 4;
    uint b = 6;

    function compare() public {

        require(a > b, "That is False");
    }
    }
