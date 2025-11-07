// SPDX-License-Identifier: MIT
pragma solidity > 0.7.0 <= 0.9.0;

/*Define Fallback Functions:
1. Cannot have a name;
2. Does not have any inputs;
3. Does not returns any outputs;
4. Must be declared as external;

Why use it? When you call functions that does not exist - or send ether to a contract by send, transfer or call
statement: send and tranfer methods recieves 2300 gas but call method receives more (all of the gas)

*/

contract FallBack {

    event Log(uint gas);

    fallback() external payable {
        //not recommended to write much code in here - because the function will fail is it uses too much gas

        //invoke the send method and tranfer method: we get 2300 gas which is enough to emit a log
        //invoke the call method: we get all the gas

        // special solidity function gasleft returns how much gas is left
        emit Log(gasleft());
    }

     function getBalance() public view returns(uint){
        return address(this).balance;
     }
}

//new contract will send ether to Fallback contract which will trigger fallback functions

contract SendToFallBack {

    function tranferToFallBack(address payable _to) public payable {
        //send ether with tranfer method
        //automatically will transfer 2300 gas amount
        _to.transfer(msg.value);
    }

    function callFallBack(address payable _to) public payable {
        (bool sent,) = _to.call{value:msg.value}('');
        require(sent, 'Failed to send');
    }

}

