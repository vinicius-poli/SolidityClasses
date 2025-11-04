// SPDX-License-Identifier: MIT
pragma solidity > 0.7.0 <= 0.9.0;

//Ether Units

contract learnEtherUnits{
    function test() public pure {

    // wei is smallest denomination of ether

    assert(1000000000000000000 wei == 1 ether); // 10^18 wei = 1 eth
    assert(1 wei == 1); // 1 wei = 1
    assert(1 ether == 1e18);

    // 1 ether == 1e18
    // create an assertion for 2 eths to be equivalent to weis
    assert(2000000000000000000 wei == 2 ether);
    assert(2 wei == 2);
    assert(2 ether == 2e18);
    }
}

/*
- Similar to currency, Solidity has time units where lowest unit is a second;
- We can use seconds, minutes, hours, days and weeks as suffix to denote time.

- Exercise - Create the following assertions in a function calles exercise:
- Assert equivalencies for minutes to seconds, hours to minutes, days to hours and weeks to days.
*/