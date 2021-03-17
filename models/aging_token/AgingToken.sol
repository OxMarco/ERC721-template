// SPDX-License-Identifier: GPL-v3
pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract AgingToken is TradeableERC721Token {
    uint256 private last_update;

    constructor(address _proxyRegistryAddress) TradeableERC721Token("AgingToken", "AGI", _proxyRegistryAddress) public {
        last_update = block.timestamp; 
    }

    function baseTokenURI() public view returns (string memory) {
        uint age = (block.timestamp - last_update)/86400; // age in days
        
        if(age < 15) {
            return "";
        } else if(age < 45) {
            return "";
        } else if(age < 70) {
            return "";
        } else if(age < 100) {
            return "";
        } else {
            return "";
        }
    }
}
