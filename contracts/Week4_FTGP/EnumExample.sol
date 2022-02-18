// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract JuiceSize {

    enum JuiceSizeEnum {
        SMALL,
        MEDIUM,
        LARGE
    }

    JuiceSizeEnum choice;
    JuiceSizeEnum constant defaultChoice = JuiceSizeEnum.MEDIUM;

    function setLarge() public {
        choice = JuiceSizeEnum.LARGE;
    }

    function getChoice() public view returns (JuiceSizeEnum) {
        return choice;
    }

    // A pure function cannot access state variables, but CAN access constants
    function getDefaultChoice() public pure returns (uint) {
        return uint(defaultChoice);
    }
}