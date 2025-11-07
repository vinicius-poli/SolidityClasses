// SPDX-License-Identifier: MIT
pragma solidity > 0.7.0 <= 0.9.0;

/*
1. Create a function called multiply which returns 3 multiplied by 7;
2. Create another function called valuePlusThree which returns the state variable value plus 3.
3. Successfully deply the contracts and test for the results.
*/

contract exerciseKey {
    uint value;
    function getValue(uint _value) public {
        value = _value;
    }
    function multiply() public pure returns(uint) {
        return 3 * 7;
    }
    function valuePlusThree() public view returns(uint) {
        return value + 3;
    }
}