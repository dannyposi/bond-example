// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "../BondLiquidation.sol";

contract BondTokenLiquidation is BondLiquidation {

     function liquidate(string memory bondId) external override view returns (bool) {
          return true;
     }
}