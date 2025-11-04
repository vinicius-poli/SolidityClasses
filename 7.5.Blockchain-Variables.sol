// SPDX-License-Identifier: MIT
pragma solidity > 0.7.0 <= 0.9.0;

//Global Variables
/* Special variables are globally available variables and provides information about blockchain.
Ex:
msg.sender: Sender of message (current call), msg.value (uint): Number of wei sent with the message.,
block.timestamp: current block timestamp as seconds since unix epoch, block.number (uint): current block number

Check on https://docs.soliditylang.org (->Cheatsheet)
*/

contract LedgerBalance {
    // create a map of wallets with amounts
    // set up a function that can update the amount of the person call the contract - current address - msg.Sender

    mapping (address => uint) balance;
    function updatesBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
}

/*
1 - Create a new contract call Updated
2 - Create a public function called updatesBalance
3 - Instantiate the data type contract LedgerBalance to new variable called ledgerbalance.
4 - Set the new variable ledgerbalance = new LedgerBalance()
*/

contract Uptated {
    
    function updatesBalance() public {
        LedgerBalance ledgerbalance = new LedgerBalance();
        ledgerbalance.updatesBalance(30);
    }
}

//Other Variables Examples

contract SimpleStorage {
    uint storedData;
    function set(uint) public {
        //storedData = x;
        //storedData = block.timestamp;
        storedData = block.number;
       
    } 
    
    function get() public view returns (uint) {
        return storedData;
    }
} 