// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./BondFlowResolver.sol";
import "./token/BondTokenVerification.sol";
import "./nft/BondNftVerification.sol";

contract BondLending {

    BondFlowResolver verificationResolver = new BondFlowResolver();

    function verify(string assetType, string memory payload) returns(bool) {
        return verificationResolver.resolveVerification(assetType).verify(payload);
    }

    function liquidate(string assetType, uint bondId) returns(bool) {
        return liquidationResolver.resolveLiquidation(assetType).liquidate(bondId);
    }
}