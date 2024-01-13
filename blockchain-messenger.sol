//SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract BlockchainMessenger {
    string public greeting = "Hello World!";
    uint public num = 10;
    address owner;

    constructor () {
        owner = msg.sender;
    }

    function setUint (uint newNum) public {
        num = newNum;
    }

    function setChange (string memory newGreeting) public {
        if (owner == msg.sender) {
            greeting = newGreeting;
            num++;
        }
    }  

}
   