// SPDX-License-Identifier: MIT
pragma solidity > 0.7.0 <= 0.9.0;

//View functions ensure that they will not modify the state (return values).
// Pure funtions ensure that they not read or modify the state (return calculations).

contract Mycontract {

uint value;

//getValue is a read only function
function getValue() external view returns(uint) {
    //ETH call
    return value;
}
//getNewValue return calculations
function getNewValue() external pure returns(uint) {
    return 3 + 3;
}
//setValue modifies the state value
function setValue(uint _value) external {
    //ETH send transaction
    value = _value;
}
}
