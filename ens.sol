// @CyberhackB
// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


contract newUser{
    event NameRegistered( address owner, string name);
    event NameChanged(address owner, string newName);

    mapping(address => string) public names;
    mapping(string => address) public addresses;
     // function for registration
    function registerUser(string memory name) public {
        require(addresses[name] == address(0), "Name already registered");
        addresses[name] = msg.sender;
        names[msg.sender] = name;
        emit NameRegistered(msg.sender, "you've been registered");
    }
//function for change name
    function changeName(string memory newName) public {
        require(msg.sender == addresses[names[msg.sender]], "Only owner can change name");
        require(addresses[newName] == address(0), "Name already registered");
        addresses[newName] = addresses[names[msg.sender]];
        addresses[names[msg.sender]] = address(0);
        names[msg.sender] = newName;
        emit NameChanged(msg.sender, "Your name has been changed");
    }
// function for lookup
    function lookup(string memory name) public view returns (address) {
        return addresses[name];
    }
}
