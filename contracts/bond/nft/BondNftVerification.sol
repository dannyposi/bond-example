// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "../BondVerification.sol";


contract BondNftVerification is BondVerification {
     function verify(string memory payload) external override view returns (bool) {
         return true;
     }
}