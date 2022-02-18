// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {

    // Declare state variables, which are treated differently by the EVM to variables declared inside functions
    uint data;

    function set(uint x) public {
        data = x;
    }

    // Declaring function with the 'view' keyword means it cannot change state variables
    function get() public view returns (uint) {
        return data;
    }
}