// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.9.0;

contract ownedContract {
    
    address private _owner;

    constructor() { 
        _owner = msg.sender;  // Set owner to contract deployer
    }

    // Standard modifier which can be called for owner specific functionality.
    modifier onlyOwner(){
        require(msg.sender == _owner);  
        _;
    }

    // Using the onlyOwner modifier.
    // Only the owner of the contract can call this function.
    // How can we call smart contracts outside of Remix to see if this works?
    function owner() public view onlyOwner returns(address) {
        return _owner;
    }
}
