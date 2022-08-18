// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface BondLiquidation {

     function liquidate(string memory bondId) external view returns (bool);
}