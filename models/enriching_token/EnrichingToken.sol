// SPDX-License-Identifier: GPL-v3
pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract EnrichingToken is TradeableERC721Token {
    uint32 private counter;

    constructor(address _proxyRegistryAddress) TradeableERC721Token("EnrichingToken", "ENR", _proxyRegistryAddress) public { 
        counter = 0;
    }

    function baseTokenURI() public view returns (string memory) {
        if(counter == 0) {
            return "";
        } else if(counter == 1) {
            return "";
        } else if(counter == 2) {
            return "";
        } else if(counter == 3) {
            return "";
        } else if(counter == 4) {
            return "";
        } else {
            return "";
        }
    }
}
