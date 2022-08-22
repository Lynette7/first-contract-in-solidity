//SPDX_License-Identifier: MIT

pragma solidity >= 0.8.9;
//This is a basic HelloWorld code that takes a string when the smart contract is first time executed and if we want we can change
//that value to a new message as well.

contract HelloWorld {
    //events
    //states - variables that store the state of tokens, NFTs, 
    //functions - used to change the state of variables

    event messagechanged(string oldmsg, string newmsg);

    string public message;

    constructor(string memory firstmessage) {
        message = firstmessage;
    }

    function update(string memory newmesssage) public {
        string memory oldmsg = message;
        message = newmesssage;

        emit messagechanged(oldmsg, newmesssage);

    }
}