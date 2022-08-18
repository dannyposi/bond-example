// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract BondFlowResolver {

    BondTokenVerification tokenVerification = new BondTokenVerification();
    BondNftVerification nftVerification = new BondNftVerification();

    BondTokenLiquidation tokenLiquidation = new BondTokenLiquidation();
    BondNftLiquidation nftLiquidation = new BondNftLiquidation();

    function resolveVerification(string assetType) returns(BondVerification) {
        switch(assetType) {
            case "TOKEN":
                return tokenVerification;
            case "NFT":
                return nftVerification
        }
    }

    function resolveLiquidation(string assetType) returns(BondLiquidation) {
        switch(assetType) {
            case "TOKEN":
                return tokenLiquidation;
            case "NFT":
                return nftLiquidation
        }
    }
}