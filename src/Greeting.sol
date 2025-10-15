// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract greeting{
    string public greeting;

    constructor( string memory _initialgreeting) {
        greeting = _initialgreeting;
    }

    function SetGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    function showGreeting() public view returns(string memory){
        return greeting;
    }
}
