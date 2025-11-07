// SPDX-License-Identifier: MIT
pragma solidity > 0.7.0 <= 0.9.0;

/*Destructuring Assigments and Solidity Tricks

Solidity function can return multiple variables of different types.
If you only want to keep onde variable, then you can declare a variable and then use commas:
*/

contract DestructuringFunctions {

    uint public changeValue;
    string public tom = 'Hello!';
   
    
    function f() public pure returns(uint, bool, string memory) {
        return (3, true, 'Goodbye!');
    }

    function g() public {
        (changeValue,, tom) = f();
    }
}