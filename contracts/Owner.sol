// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.9.0;

contract ownedContract {
    
    address private _owner;

    constructor() {
        _owner = msg.sender;  // Set owner to contract deployer
    }

    function owner() public view returns(address) {
        return _owner;
    }
}
