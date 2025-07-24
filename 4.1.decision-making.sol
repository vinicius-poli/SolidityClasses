pragma solidity >= 0.7.0 < 0.9.0;

/*
While writing a program, there may be a situation when you need to adapt one out of a given set of paths.
In such cases, you need to use conditional statements that allow your program to make correct decisions and perform
right actions.

if statement
if...else statement
*/

contract DecisionMaking {

//if the user has the right password then let the user in!
//if the user has the wrong password don't let them in!

//if the user has the right password let them in else (otherwise) don't!

uint oranges = 5; //one equal sign (=) assigns whereas two equal signs (==) equivalates

function validateOranges() public view returns (bool){
    if (oranges == 5)//evaluates the truennes
    {
        return true;
    } else {
        return false;
    }
}

//Exercise in DeFi! :)
// 1. Create a stakingWallet variable as an integer and set it to the value of 10
// 2. Write a function called airDrop which has public visibility, is IDE viewable and returns an integer
// 3. Create decision making logic so that if the wallet has a value of 10 then add only 10 more
// 4. Add a else statement so tha if the does not equal the value of 10 to add 1 more
// 5. Return the value of the wallet  
// 6. Deploythe contract and test the results - try changing the value of the wallet to 6 and redeploying

uint stakingWallet = 11;

function airDrop() public view returns (uint){
    if (stakingWallet == 10) {
        return stakingWallet + 10;
    }
    else {
        return stakingWallet + 1;
    }
}
}