// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract TheBlockchainmessenger{
    uint public changeCouner;
    address public owner;

    string public message;


    constructor(){
        owner=msg.sender;
    }

    function updateTheMessage(string memory _newMessage) public {
        
        if (msg.sender==owner){
            message=_newMessage;
            changeCouner++;
        }
    }
}