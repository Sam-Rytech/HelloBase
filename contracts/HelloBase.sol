// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HelloBase {
    string public message;

    event MessageUpdated(address indexed sender, string newMessage);

    constructor(string memory _message) {
        message = _message;
        emit MessageUpdated(msg.sender, _message);
    }

    function setMessage(string memory _newMessage) public {
        message = _newMessage;
        emit MessageUpdated(msg.sender, _newMessage);
    }
}
