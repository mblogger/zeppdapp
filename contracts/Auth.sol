// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract Auth {
    address private administrator;

    constructor() public {
        administrator = msg.sender;
    }

    function isAdminstrator(address user) pubic view returns(bool) {
        return user == administrator;
    }
}