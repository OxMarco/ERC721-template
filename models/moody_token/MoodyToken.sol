// SPDX-License-Identifier: GPL-v3
pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract MoodyToken is TradeableERC721Token {
    enum Mood { POSITIVE, NEGATIVE, NEUTRAL }
    Mood current_mood;

    constructor(address _proxyRegistryAddress) TradeableERC721Token("MoodyToken", "MOO", _proxyRegistryAddress) public { 
        current_mood = NEUTRAL;
    }

    function update(Mood m) public {
        require(owner == msg.sender, "The owner only can change the NFT");
        current_mood = m;
    }

    function baseTokenURI() public view returns (string memory) {
        if(mood == POSITIVE) {
            return ""; // CHANGEME
        } else if(mood == NEGATIVE) {
            return ""; // CHANGEME
        } else {
            return ""; // CHANGEME
        }
    }
}
