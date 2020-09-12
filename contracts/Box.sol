// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract Box {
    uint256 private value;
    Auth private auth;

    event ValueChanged(uint256 newValue);

    constructor(Auth _auth) public {
        auth = _auth;
    }

    function store(uint256 newValue) public {
        require(auth.isAdministrator(msg.sender), "Unauthorised");

        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrieve() public view returns(uint256) {
        return value;
    }
}

